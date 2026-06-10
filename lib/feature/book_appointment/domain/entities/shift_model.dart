import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/slot_model.dart';

typedef ShiftModel = Shift;

class $ShiftModelCopyWith<$Res> {
  final ShiftModel _value;
  final $Res Function(ShiftModel) _then;

  $ShiftModelCopyWith(this._value, this._then);

  $Res call({
    List<SlotModel>? slots,
    String? shift,
  }) {
    return _then(
      _value.copyWith(
        slots: slots,
        shift: shift,
      ),
    );
  }
}
