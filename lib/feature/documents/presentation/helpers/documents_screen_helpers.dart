import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/injection_container.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

class DocumentsScreenHelpers {
  static final Dio _dio = sl<Dio>();

  static List<PopupMenuItem<int>> createPopupMenuItem(List<Member> members) {
    List<PopupMenuItem<int>> popupMenuItems = [
      const PopupMenuItem(
        value: 0,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'All',
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyLargeRobotoSemiBold,
        ),
      ),
    ];
    for (Member member in members) {
      popupMenuItems.add(
        PopupMenuItem(
          value: member.id,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            member.name,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyLargeRobotoSemiBold,
          ),
        ),
      );
    }
    return popupMenuItems;
  }

  static Future<Either<ErrorModel, String>> uploadDocument({
    required String documentName,
    required String documentpath,
    required DateTime? expireDate,
    required String token,
    required int memberId,
  }) async {
    try {
      FormData formData = FormData.fromMap({
        'saveRequest': jsonEncode(
          serviceRequest(
            type: 'PP0025',
            content: {
              'seq_no': 0,
              'id_customer': memberId,
              'id_document': '',
              'expiry_dt': expireDate?.toIso8601String() ?? '',
              'doc_path': documentpath,
              'doc_name': documentName,
              'doc_ext': '{Ext}',
              'isself': true,
            },
          ),
        ),
        'pathidentifier': 'PatientProfileImage',
        'folderidentifier': '$memberId\\selfdoc',
      });

      formData.files.add(
        MapEntry('uploads', await MultipartFile.fromFile(documentpath)),
      );

      final response = await _dio.post(
        ConstantUrls.uploadDocumentUrl,
        data: formData,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(
          ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
        );
      } else if (e.error is SocketException) {
        return Left(
          ErrorModel(message: ConstantMessages.noNetworkErrorMessage),
        );
      }
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
