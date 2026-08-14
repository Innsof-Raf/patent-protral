import 'package:patient_portal/core/services/analytics_service.dart';

/// Central catalog of product analytics events, built on the provider-agnostic
/// [AnalyticsEvent]. Keeps event names/params in one auditable place instead of
/// scattered inline `logEvent(name: ..., parameters: {...})` calls.
abstract final class AppAnalyticsEvents {
  static AnalyticsEvent doctorSelected({
    required String doctorId,
    required String doctorName,
    required String speciality,
  }) => AnalyticsEvent('select_doctor', {
        'doctor_id': doctorId,
        'doctor_name': doctorName,
        'speciality': speciality,
      });

  static AnalyticsEvent slotSelected({
    required String doctorId,
    required String selectedDate,
    required String selectedTimeSlot,
    required String shiftType,
  }) => AnalyticsEvent('select_time_slot', {
        'doctor_id': doctorId,
        'selected_date': selectedDate,
        'time_slot': selectedTimeSlot,
        'shift_type': shiftType,
      });

  static AnalyticsEvent appointmentBooked({
    required String doctorId,
    required String speciality,
    required String appointmentType,
  }) => AnalyticsEvent('book_appointment', {
        'doctor_id': doctorId,
        'speciality': speciality,
        'appointment_type': appointmentType,
      });

  static AnalyticsEvent appointmentCancelled({
    required String appointmentId,
    required String reason,
  }) => AnalyticsEvent('cancel_appointment', {
        'appointment_id': appointmentId,
        'cancellation_reason': reason,
      });

  static AnalyticsEvent labReportViewed({
    required String reportId,
    required String testCategory,
  }) => AnalyticsEvent('view_lab_report', {
        'report_id': reportId,
        'test_category': testCategory,
      });

  static AnalyticsEvent familyMemberSwitched({required String memberRelation}) =>
      AnalyticsEvent('switch_family_member', {'relation_type': memberRelation});

  static AnalyticsEvent snoozeAlarm({
    required String appointmentId,
    required int snoozeDurationMins,
  }) => AnalyticsEvent('snooze_alarm', {
        'appointment_id': appointmentId,
        'snooze_duration_mins': snoozeDurationMins,
      });

  static AnalyticsEvent downloadPdfReport({
    required String reportId,
    required String fileType,
  }) => AnalyticsEvent('download_pdf_report', {
        'report_id': reportId,
        'file_type': fileType,
      });

  static AnalyticsEvent addLabToCart({
    required String itemId,
    required String itemType,
  }) => AnalyticsEvent('add_lab_to_cart', {
        'item_id': itemId,
        'item_type': itemType,
      });
}
