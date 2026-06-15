import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/add_document/domain/entities/document_type.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/get_document_types_usecase.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';

part 'add_document_event.dart';
part 'add_document_state.dart';
part 'generated/add_document_bloc.freezed.dart';

class AddDocumentBloc extends Bloc<AddDocumentEvent, AddDocumentState> {
  final GetDocumentTypesUseCase getDocumentTypesUseCase;

  AddDocumentBloc({required this.getDocumentTypesUseCase})
    : super(AddDocumentState.initial()) {
    on<GetDocumentTypes>((event, emit) async {
      emit(
        state.copyWith(
          isFetchingDocumentTypes: true,
          isFetchingDocumentTypesFailed: false,
          isFetchingDocumentTypesSuccess: false,
        ),
      );

      final result = await getDocumentTypesUseCase(
        AddDocumentParams.getDocumentTypes(token: event.token),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isFetchingDocumentTypes: false,
            isFetchingDocumentTypesFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (documentTypes) => emit(
          state.copyWith(
            isFetchingDocumentTypes: false,
            isFetchingDocumentTypesSuccess: true,
            documentTypes: documentTypes,
          ),
        ),
      );
    });
  }
}
