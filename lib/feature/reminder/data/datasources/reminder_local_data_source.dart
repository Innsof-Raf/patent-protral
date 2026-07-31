import 'dart:async';
import 'dart:convert';
import 'dart:developer' as dev;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:patient_portal/feature/reminder/data/models/reminder_model.dart';

abstract class ReminderLocalDataSource {
  Future<void> saveReminder(ReminderModel reminder);
  Future<void> removeReminder(int reminderId);
  Future<void> removeRemindersForTarget(String targetId, String type);
  Future<List<ReminderModel>> getRemindersForTarget(String targetId);
  Future<List<ReminderModel>> getAllReminders();
}

class ReminderLocalDataSourceImpl implements ReminderLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _keyReminders = 'CACHED_REMINDERS_KEY_V2';
  static const Duration _retentionAfterTarget = Duration(hours: 6);

  List<ReminderModel>? _cache;
  Future<void> _lock = Future.value();

  ReminderLocalDataSourceImpl({required this.sharedPreferences});

  /// Serialises every read-modify-write operation.
  Future<T> _synchronized<T>(Future<T> Function() action) {
    final completer = Completer<T>();
    _lock = _lock.then((_) async {
      try {
        completer.complete(await action());
      } catch (e, s) {
        completer.completeError(e, s);
      }
    });
    return completer.future;
  }

  @override
  Future<List<ReminderModel>> getAllReminders() async {
    if (_cache != null) return List.unmodifiable(_cache!);

    final raw = sharedPreferences.getString(_keyReminders);
    if (raw == null || raw.isEmpty) return _cache = <ReminderModel>[];

    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List) throw const FormatException('root is not a list');

      final models = <ReminderModel>[];
      for (final entry in decoded) {
        if (entry is! Map<String, dynamic>) continue;
        final model = ReminderModel.tryFromJson(entry);
        if (model != null) models.add(model);
      }
      return _cache = models;
    } on Object catch (e, s) {
      dev.log(
        'Reminder store corrupt — resetting',
        error: e,
        stackTrace: s,
        name: 'ReminderLocalDataSource',
      );
      await sharedPreferences.remove(_keyReminders);
      return _cache = <ReminderModel>[];
    }
  }

  @override
  Future<void> saveReminder(ReminderModel reminder) => _synchronized(() async {
        final all = List<ReminderModel>.from(await getAllReminders())
          ..removeWhere((r) => r.id == reminder.id)
          ..add(reminder);
        await _saveAll(_pruned(all));
      });

  @override
  Future<void> removeReminder(int reminderId) => _synchronized(() async {
        final all = List<ReminderModel>.from(await getAllReminders())
          ..removeWhere((r) => r.id == reminderId);
        await _saveAll(_pruned(all));
      });

  @override
  Future<void> removeRemindersForTarget(String targetId, String type) =>
      _synchronized(() async {
        final all = List<ReminderModel>.from(await getAllReminders())
          ..removeWhere((r) => r.targetId == targetId && r.type == type);
        await _saveAll(_pruned(all));
      });

  @override
  Future<List<ReminderModel>> getRemindersForTarget(String targetId) async {
    final all = await getAllReminders();
    return all.where((r) => r.targetId == targetId).toList();
  }

  List<ReminderModel> _pruned(List<ReminderModel> all) {
    final cutoff = DateTime.now().toUtc().subtract(_retentionAfterTarget);
    return all.where((r) {
      final target = DateTime.tryParse(r.targetDateTime);
      return target == null || target.isAfter(cutoff);
    }).toList();
  }

  Future<void> _saveAll(List<ReminderModel> reminders) async {
    _cache = reminders;
    await sharedPreferences.setString(
      _keyReminders,
      jsonEncode(reminders.map((r) => r.toJson()).toList()),
    );
  }
}
