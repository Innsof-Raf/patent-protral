part of 'items_bloc.dart';

@freezed
sealed class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.getItems({required String token}) = GetItems;

  const factory ItemsEvent.updateItemCartSatus(
      {required int idItem,
      required int idUser,
      required String token}) = UpdateItemCartSatus;
}
