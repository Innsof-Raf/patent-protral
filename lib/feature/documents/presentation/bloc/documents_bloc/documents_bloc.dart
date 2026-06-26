import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';
import 'package:patient_portal/feature/documents/domain/usecases/get_documents_usecase.dart';
import 'package:patient_portal/feature/documents/domain/usecases/params/documents_params.dart';

part 'documents_event.dart';
part 'documents_state.dart';
part 'generated/documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final GetDocumentsUseCase getDocumentsUseCase;

  DocumentsBloc({required this.getDocumentsUseCase})
    : super(DocumentsState.initial()) {
    on<GetDocuments>((event, emit) async {
      emit(
        state.copyWith(
          isFetching: true,
          isFetchingFailed: false,
          isFetchingSuccess: false,
          selectedMemberId: event.memberId,
        ),
      );
      final result = await getDocumentsUseCase(
        DocumentsParams.getDocuments(
          memberId: event.memberId,
          mobileNumber: event.mobileNumber,
          token: event.token,
        ),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isFetching: false,
            isFetchingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (documents) => emit(
          state.copyWith(
            isFetching: false,
            isFetchingSuccess: true,
            documents: documents,
          ),
        ),
      );
    });
  }
}
