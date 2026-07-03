import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @manageAppointments.
  ///
  /// In en, this message translates to:
  /// **'Manage your appointments'**
  String get manageAppointments;

  /// No description provided for @manageAppointmentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track and manage all your healthcare visits'**
  String get manageAppointmentsSubtitle;

  /// No description provided for @appointmentCanceled.
  ///
  /// In en, this message translates to:
  /// **'Appointment canceled'**
  String get appointmentCanceled;

  /// No description provided for @appointmentCanceledMessage.
  ///
  /// In en, this message translates to:
  /// **'The appointment has been removed from your upcoming schedule.'**
  String get appointmentCanceledMessage;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @unableToLoadAppointments.
  ///
  /// In en, this message translates to:
  /// **'Unable to load appointments'**
  String get unableToLoadAppointments;

  /// No description provided for @allAppointments.
  ///
  /// In en, this message translates to:
  /// **'All appointments'**
  String get allAppointments;

  /// No description provided for @noAppointmentsYet.
  ///
  /// In en, this message translates to:
  /// **'No appointments yet'**
  String get noAppointmentsYet;

  /// No description provided for @noAppointmentsMessage.
  ///
  /// In en, this message translates to:
  /// **'Your bookings will appear here once available.'**
  String get noAppointmentsMessage;

  /// No description provided for @consultedAppointments.
  ///
  /// In en, this message translates to:
  /// **'Consulted appointments'**
  String get consultedAppointments;

  /// No description provided for @noConsultedAppointments.
  ///
  /// In en, this message translates to:
  /// **'No consulted appointments'**
  String get noConsultedAppointments;

  /// No description provided for @noConsultedAppointmentsMessage.
  ///
  /// In en, this message translates to:
  /// **'Completed visits will appear here after consultation.'**
  String get noConsultedAppointmentsMessage;

  /// No description provided for @upcomingAppointments.
  ///
  /// In en, this message translates to:
  /// **'Upcoming appointments'**
  String get upcomingAppointments;

  /// No description provided for @noUpcomingAppointments.
  ///
  /// In en, this message translates to:
  /// **'No upcoming appointments'**
  String get noUpcomingAppointments;

  /// No description provided for @noUpcomingAppointmentsMessage.
  ///
  /// In en, this message translates to:
  /// **'You do not have any scheduled visits right now.'**
  String get noUpcomingAppointmentsMessage;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @consulted.
  ///
  /// In en, this message translates to:
  /// **'Consulted'**
  String get consulted;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @visits.
  ///
  /// In en, this message translates to:
  /// **'Visits'**
  String get visits;

  /// No description provided for @cancelBooking.
  ///
  /// In en, this message translates to:
  /// **'Cancel booking?'**
  String get cancelBooking;

  /// No description provided for @cancelBookingMessage.
  ///
  /// In en, this message translates to:
  /// **'This will remove the scheduled appointment from your account. You can reschedule instead if you prefer.'**
  String get cancelBookingMessage;

  /// No description provided for @doctor.
  ///
  /// In en, this message translates to:
  /// **'Doctor'**
  String get doctor;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// No description provided for @at.
  ///
  /// In en, this message translates to:
  /// **'at'**
  String get at;

  /// No description provided for @keepBooking.
  ///
  /// In en, this message translates to:
  /// **'Keep Booking'**
  String get keepBooking;

  /// No description provided for @cancelIt.
  ///
  /// In en, this message translates to:
  /// **'Cancel It'**
  String get cancelIt;

  /// No description provided for @self.
  ///
  /// In en, this message translates to:
  /// **'Self'**
  String get self;

  /// No description provided for @memberNotFound.
  ///
  /// In en, this message translates to:
  /// **'Unable to find the selected member for this appointment.'**
  String get memberNotFound;

  /// No description provided for @noAvailableDatesReschedule.
  ///
  /// In en, this message translates to:
  /// **'No available dates found for rescheduling right now.'**
  String get noAvailableDatesReschedule;

  /// No description provided for @noAvailableDatesBooking.
  ///
  /// In en, this message translates to:
  /// **'No available dates found for booking right now.'**
  String get noAvailableDatesBooking;

  /// No description provided for @bookAgain.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment Again'**
  String get bookAgain;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @reschedule.
  ///
  /// In en, this message translates to:
  /// **'Reschedule'**
  String get reschedule;

  /// No description provided for @myAppointments.
  ///
  /// In en, this message translates to:
  /// **'My Appointments'**
  String get myAppointments;

  /// No description provided for @specialist.
  ///
  /// In en, this message translates to:
  /// **'Specialist'**
  String get specialist;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @bookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment'**
  String get bookAppointment;

  /// No description provided for @appointments.
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get appointments;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @laboratory.
  ///
  /// In en, this message translates to:
  /// **'Laboratory'**
  String get laboratory;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @mailUs.
  ///
  /// In en, this message translates to:
  /// **'Mail Us'**
  String get mailUs;

  /// No description provided for @unableToLoadHome.
  ///
  /// In en, this message translates to:
  /// **'Unable to load home'**
  String get unableToLoadHome;

  /// No description provided for @findSpecialist.
  ///
  /// In en, this message translates to:
  /// **'Find Specialist'**
  String get findSpecialist;

  /// No description provided for @findDoctorBySpeciality.
  ///
  /// In en, this message translates to:
  /// **'Find Doctor by Speciality'**
  String get findDoctorBySpeciality;

  /// No description provided for @findSpecialistSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Consult top doctors online for any health concern'**
  String get findSpecialistSubtitle;

  /// No description provided for @viewAllSpecialities.
  ///
  /// In en, this message translates to:
  /// **'View all specialities'**
  String get viewAllSpecialities;

  /// No description provided for @topDoctors.
  ///
  /// In en, this message translates to:
  /// **'Top Doctors'**
  String get topDoctors;

  /// No description provided for @topDoctorsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Expert care from our best medical professionals'**
  String get topDoctorsSubtitle;

  /// No description provided for @viewAllDoctors.
  ///
  /// In en, this message translates to:
  /// **'View all doctors'**
  String get viewAllDoctors;

  /// No description provided for @medicalInsurance.
  ///
  /// In en, this message translates to:
  /// **'Medical Insurance'**
  String get medicalInsurance;

  /// No description provided for @medicalInsuranceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We are providing following medical insurance'**
  String get medicalInsuranceSubtitle;

  /// No description provided for @viewInsurance.
  ///
  /// In en, this message translates to:
  /// **'View insurance'**
  String get viewInsurance;

  /// No description provided for @bestHealthPackages.
  ///
  /// In en, this message translates to:
  /// **'Best Health Packages'**
  String get bestHealthPackages;

  /// No description provided for @bestHealthPackagesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore the best health offers'**
  String get bestHealthPackagesSubtitle;

  /// No description provided for @viewPackages.
  ///
  /// In en, this message translates to:
  /// **'View packages'**
  String get viewPackages;

  /// No description provided for @membersFound.
  ///
  /// In en, this message translates to:
  /// **'found'**
  String get membersFound;

  /// No description provided for @memberFound.
  ///
  /// In en, this message translates to:
  /// **'member found'**
  String get memberFound;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @documentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep important records ready'**
  String get documentsSubtitle;

  /// No description provided for @insuranceDocuments.
  ///
  /// In en, this message translates to:
  /// **'Insurance Documents'**
  String get insuranceDocuments;

  /// No description provided for @passport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get passport;

  /// No description provided for @residentPermit.
  ///
  /// In en, this message translates to:
  /// **'Resident Permit'**
  String get residentPermit;

  /// No description provided for @drivingLicence.
  ///
  /// In en, this message translates to:
  /// **'Driving Licence'**
  String get drivingLicence;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get viewAll;

  /// No description provided for @getInvolvedWith.
  ///
  /// In en, this message translates to:
  /// **'Get involved with'**
  String get getInvolvedWith;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Experience seamless healthcare management at your fingertips.'**
  String get loginSubtitle;

  /// No description provided for @qatarCountryCode.
  ///
  /// In en, this message translates to:
  /// **'+974 - '**
  String get qatarCountryCode;

  /// No description provided for @mobileNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mobileNumberLabel;

  /// No description provided for @sendOtpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Send OTP'**
  String get sendOtpTooltip;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @loginTooltip.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTooltip;

  /// No description provided for @byContinuing.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to our '**
  String get byContinuing;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @verifyOtpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Verify OTP'**
  String get verifyOtpTooltip;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @resending.
  ///
  /// In en, this message translates to:
  /// **'Resending...'**
  String get resending;

  /// No description provided for @loginWithPassword.
  ///
  /// In en, this message translates to:
  /// **'Login with password'**
  String get loginWithPassword;

  /// No description provided for @doctors.
  ///
  /// In en, this message translates to:
  /// **'Doctors'**
  String get doctors;

  /// No description provided for @unableToLoadDoctors.
  ///
  /// In en, this message translates to:
  /// **'Unable to load doctors'**
  String get unableToLoadDoctors;

  /// No description provided for @searchDoctorHint.
  ///
  /// In en, this message translates to:
  /// **'Search doctor by name or speciality'**
  String get searchDoctorHint;

  /// No description provided for @searchDoctors.
  ///
  /// In en, this message translates to:
  /// **'Search doctors'**
  String get searchDoctors;

  /// No description provided for @noDoctorsFound.
  ///
  /// In en, this message translates to:
  /// **'No doctors found'**
  String get noDoctorsFound;

  /// No description provided for @noDoctorsFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Try another speciality or check again later.'**
  String get noDoctorsFoundMessage;

  /// No description provided for @noMatchingDoctor.
  ///
  /// In en, this message translates to:
  /// **'No matching doctor'**
  String get noMatchingDoctor;

  /// No description provided for @noMatchingDoctorMessage.
  ///
  /// In en, this message translates to:
  /// **'Try searching by another name or speciality.'**
  String get noMatchingDoctorMessage;

  /// No description provided for @yearsExperience.
  ///
  /// In en, this message translates to:
  /// **'yrs'**
  String get yearsExperience;

  /// No description provided for @qar.
  ///
  /// In en, this message translates to:
  /// **'QAR'**
  String get qar;

  /// No description provided for @nextAvailableToday.
  ///
  /// In en, this message translates to:
  /// **'Next available today'**
  String get nextAvailableToday;

  /// No description provided for @nextAvailable.
  ///
  /// In en, this message translates to:
  /// **'Next available'**
  String get nextAvailable;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'Not available'**
  String get notAvailable;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'available'**
  String get available;

  /// No description provided for @book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// No description provided for @viewInfo.
  ///
  /// In en, this message translates to:
  /// **'View info'**
  String get viewInfo;

  /// No description provided for @doctorInfo.
  ///
  /// In en, this message translates to:
  /// **'Doctor info'**
  String get doctorInfo;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @findDoctor.
  ///
  /// In en, this message translates to:
  /// **'Find Doctor'**
  String get findDoctor;

  /// No description provided for @doctorAvailable.
  ///
  /// In en, this message translates to:
  /// **'doctor available'**
  String get doctorAvailable;

  /// No description provided for @doctorsAvailable.
  ///
  /// In en, this message translates to:
  /// **'doctors available'**
  String get doctorsAvailable;

  /// No description provided for @videoConsultation.
  ///
  /// In en, this message translates to:
  /// **'Video Consultation'**
  String get videoConsultation;

  /// No description provided for @inPersonConsultation.
  ///
  /// In en, this message translates to:
  /// **'In-Person Consultation'**
  String get inPersonConsultation;

  /// No description provided for @experiencePrefix.
  ///
  /// In en, this message translates to:
  /// **'Exp:'**
  String get experiencePrefix;

  /// No description provided for @feePrefix.
  ///
  /// In en, this message translates to:
  /// **'Fee:'**
  String get feePrefix;

  /// No description provided for @speaksPrefix.
  ///
  /// In en, this message translates to:
  /// **'Speaks:'**
  String get speaksPrefix;

  /// No description provided for @unableToLoadSpecialities.
  ///
  /// In en, this message translates to:
  /// **'Unable to load specialities'**
  String get unableToLoadSpecialities;

  /// No description provided for @searchSpecialityHint.
  ///
  /// In en, this message translates to:
  /// **'Search Doctors or Specialities'**
  String get searchSpecialityHint;

  /// No description provided for @searchSpecialities.
  ///
  /// In en, this message translates to:
  /// **'Search specialities'**
  String get searchSpecialities;

  /// No description provided for @noSpecialitiesFound.
  ///
  /// In en, this message translates to:
  /// **'No specialities found'**
  String get noSpecialitiesFound;

  /// No description provided for @noSpecialitiesFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check again later.'**
  String get noSpecialitiesFoundMessage;

  /// No description provided for @noMatchingSpeciality.
  ///
  /// In en, this message translates to:
  /// **'No matching speciality'**
  String get noMatchingSpeciality;

  /// No description provided for @noMatchingSpecialityMessage.
  ///
  /// In en, this message translates to:
  /// **'Try searching with another department name.'**
  String get noMatchingSpecialityMessage;

  /// No description provided for @specialistSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a department and book with the right doctor faster.'**
  String get specialistSubtitle;

  /// No description provided for @specialitiesAvailable.
  ///
  /// In en, this message translates to:
  /// **'specialities available'**
  String get specialitiesAvailable;

  /// No description provided for @findDoctors.
  ///
  /// In en, this message translates to:
  /// **'Find Doctors'**
  String get findDoctors;

  /// No description provided for @viewDoctorsIn.
  ///
  /// In en, this message translates to:
  /// **'View doctors in'**
  String get viewDoctorsIn;

  /// No description provided for @allSpecialties.
  ///
  /// In en, this message translates to:
  /// **'All Specialties'**
  String get allSpecialties;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @searchMemberHint.
  ///
  /// In en, this message translates to:
  /// **'Search member by name'**
  String get searchMemberHint;

  /// No description provided for @searchMembers.
  ///
  /// In en, this message translates to:
  /// **'Search members'**
  String get searchMembers;

  /// No description provided for @addMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// No description provided for @editInsuranceDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit Insurance Details'**
  String get editInsuranceDetails;

  /// No description provided for @noMembersFound.
  ///
  /// In en, this message translates to:
  /// **'No members found'**
  String get noMembersFound;

  /// No description provided for @noMembersFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'Add a member to manage appointments, documents, and care.'**
  String get noMembersFoundMessage;

  /// No description provided for @noMatchingMember.
  ///
  /// In en, this message translates to:
  /// **'No matching member'**
  String get noMatchingMember;

  /// No description provided for @noMatchingMemberMessage.
  ///
  /// In en, this message translates to:
  /// **'Try another name or clear the search field.'**
  String get noMatchingMemberMessage;

  /// No description provided for @memberList.
  ///
  /// In en, this message translates to:
  /// **'Member list'**
  String get memberList;

  /// No description provided for @memberListSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage family profiles, insurance status, and patient details.'**
  String get memberListSubtitle;

  /// No description provided for @noMembersAdded.
  ///
  /// In en, this message translates to:
  /// **'No members added'**
  String get noMembersAdded;

  /// No description provided for @membersLinked.
  ///
  /// In en, this message translates to:
  /// **'members linked'**
  String get membersLinked;

  /// No description provided for @memberProfile.
  ///
  /// In en, this message translates to:
  /// **'Member profile'**
  String get memberProfile;

  /// No description provided for @insured.
  ///
  /// In en, this message translates to:
  /// **'Insured'**
  String get insured;

  /// No description provided for @deleteMembers.
  ///
  /// In en, this message translates to:
  /// **'Delete Members?'**
  String get deleteMembers;

  /// No description provided for @deleteMembersMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove the selected member(s)?'**
  String get deleteMembersMessage;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @healthRecords.
  ///
  /// In en, this message translates to:
  /// **'Health Records'**
  String get healthRecords;

  /// No description provided for @changePatient.
  ///
  /// In en, this message translates to:
  /// **'Change Patient'**
  String get changePatient;

  /// No description provided for @prescriptions.
  ///
  /// In en, this message translates to:
  /// **'Prescriptions'**
  String get prescriptions;

  /// No description provided for @labReports.
  ///
  /// In en, this message translates to:
  /// **'Lab Reports'**
  String get labReports;

  /// No description provided for @radiologyReports.
  ///
  /// In en, this message translates to:
  /// **'Radiology Reports'**
  String get radiologyReports;

  /// No description provided for @selectPatient.
  ///
  /// In en, this message translates to:
  /// **'Select Patient'**
  String get selectPatient;

  /// No description provided for @oneMonth.
  ///
  /// In en, this message translates to:
  /// **'1 month'**
  String get oneMonth;

  /// No description provided for @threeMonths.
  ///
  /// In en, this message translates to:
  /// **'3 months'**
  String get threeMonths;

  /// No description provided for @sixMonths.
  ///
  /// In en, this message translates to:
  /// **'6 months'**
  String get sixMonths;

  /// No description provided for @oneYear.
  ///
  /// In en, this message translates to:
  /// **'1 year'**
  String get oneYear;

  /// No description provided for @unableToLoadReports.
  ///
  /// In en, this message translates to:
  /// **'Unable to load reports'**
  String get unableToLoadReports;

  /// No description provided for @unableToOpenReport.
  ///
  /// In en, this message translates to:
  /// **'Unable to open report'**
  String get unableToOpenReport;

  /// No description provided for @noReportsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Reports Available'**
  String get noReportsAvailable;

  /// No description provided for @noReportsMessage.
  ///
  /// In en, this message translates to:
  /// **'Your medical reports will appear here once available.'**
  String get noReportsMessage;

  /// No description provided for @noReportsFoundInSelectedUser.
  ///
  /// In en, this message translates to:
  /// **'No Records found in the selected user.\nNo Records found. Please Contact for further support.'**
  String get noReportsFoundInSelectedUser;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get profileTitle;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @ageNotProvided.
  ///
  /// In en, this message translates to:
  /// **'Age Not Provided'**
  String get ageNotProvided;

  /// No description provided for @nationalId.
  ///
  /// In en, this message translates to:
  /// **'National ID'**
  String get nationalId;

  /// No description provided for @idNotProvided.
  ///
  /// In en, this message translates to:
  /// **'ID Not Provided'**
  String get idNotProvided;

  /// No description provided for @emailNotProvided.
  ///
  /// In en, this message translates to:
  /// **'Email Not Provided'**
  String get emailNotProvided;

  /// No description provided for @mobileNotProvided.
  ///
  /// In en, this message translates to:
  /// **'Mobile Not Provided'**
  String get mobileNotProvided;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick actions'**
  String get quickActions;

  /// No description provided for @quickActionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Jump to the most used profile tasks.'**
  String get quickActionsSubtitle;

  /// No description provided for @viewFiles.
  ///
  /// In en, this message translates to:
  /// **'View files'**
  String get viewFiles;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @changeLogin.
  ///
  /// In en, this message translates to:
  /// **'Change login'**
  String get changeLogin;

  /// No description provided for @noMembersAddedYet.
  ///
  /// In en, this message translates to:
  /// **'No members added yet'**
  String get noMembersAddedYet;

  /// No description provided for @viewMembersTooltip.
  ///
  /// In en, this message translates to:
  /// **'View members'**
  String get viewMembersTooltip;

  /// No description provided for @addMembersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add family members to manage appointments and documents faster.'**
  String get addMembersSubtitle;

  /// No description provided for @profilePicture.
  ///
  /// In en, this message translates to:
  /// **'Profile Picture'**
  String get profilePicture;

  /// No description provided for @uploadMemberPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload a photo of the member (Max 1MB)'**
  String get uploadMemberPhoto;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Photo'**
  String get addPhoto;

  /// No description provided for @uploadProfilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload Profile Photo'**
  String get uploadProfilePhoto;

  /// No description provided for @selectImageSource.
  ///
  /// In en, this message translates to:
  /// **'Select a source to pick an image'**
  String get selectImageSource;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @insuranceInformation.
  ///
  /// In en, this message translates to:
  /// **'Insurance Information'**
  String get insuranceInformation;

  /// No description provided for @iHaveInsurance.
  ///
  /// In en, this message translates to:
  /// **'I have insurance'**
  String get iHaveInsurance;

  /// No description provided for @saveMember.
  ///
  /// In en, this message translates to:
  /// **'Save Member'**
  String get saveMember;

  /// No description provided for @updateDetails.
  ///
  /// In en, this message translates to:
  /// **'Update Details'**
  String get updateDetails;

  /// No description provided for @memberAddingFailed.
  ///
  /// In en, this message translates to:
  /// **'Member Adding failed'**
  String get memberAddingFailed;

  /// No description provided for @insuranceUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Insurance Update failed'**
  String get insuranceUpdateFailed;

  /// No description provided for @memberAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Member added successfully!'**
  String get memberAddedSuccessfully;

  /// No description provided for @insuranceDetailsUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Insurance details updated successfully!'**
  String get insuranceDetailsUpdatedSuccessfully;

  /// No description provided for @profileUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been updated successfully.'**
  String get profileUpdatedSuccessfully;

  /// No description provided for @insuranceProvider.
  ///
  /// In en, this message translates to:
  /// **'Insurance Provider'**
  String get insuranceProvider;

  /// No description provided for @insuranceName.
  ///
  /// In en, this message translates to:
  /// **'Insurance Name'**
  String get insuranceName;

  /// No description provided for @memberNumber.
  ///
  /// In en, this message translates to:
  /// **'Member Number'**
  String get memberNumber;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date'**
  String get expirationDate;

  /// No description provided for @selectYourInsurance.
  ///
  /// In en, this message translates to:
  /// **'Select your insurance'**
  String get selectYourInsurance;

  /// No description provided for @enterInsuranceName.
  ///
  /// In en, this message translates to:
  /// **'Enter insurance name'**
  String get enterInsuranceName;

  /// No description provided for @enterMemberNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter member number'**
  String get enterMemberNumber;

  /// No description provided for @enterExpireDate.
  ///
  /// In en, this message translates to:
  /// **'Enter expire date'**
  String get enterExpireDate;

  /// No description provided for @cannotAddInsuranceRightNow.
  ///
  /// In en, this message translates to:
  /// **'Can\'t add insurance right now'**
  String get cannotAddInsuranceRightNow;

  /// No description provided for @notProvided.
  ///
  /// In en, this message translates to:
  /// **'Not provided'**
  String get notProvided;

  /// No description provided for @labTestCategories.
  ///
  /// In en, this message translates to:
  /// **'Lab Test Categories'**
  String get labTestCategories;

  /// No description provided for @packages.
  ///
  /// In en, this message translates to:
  /// **'Packages'**
  String get packages;

  /// No description provided for @test.
  ///
  /// In en, this message translates to:
  /// **'Test'**
  String get test;

  /// No description provided for @cartUpdatingFailed.
  ///
  /// In en, this message translates to:
  /// **'Cart updating failed due to'**
  String get cartUpdatingFailed;

  /// No description provided for @viewCart.
  ///
  /// In en, this message translates to:
  /// **'VIEW CART'**
  String get viewCart;

  /// No description provided for @checkOut.
  ///
  /// In en, this message translates to:
  /// **'CHECK OUT'**
  String get checkOut;

  /// No description provided for @packageDescription.
  ///
  /// In en, this message translates to:
  /// **'Package Description'**
  String get packageDescription;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'ADD TO CART'**
  String get addToCart;

  /// No description provided for @searchTests.
  ///
  /// In en, this message translates to:
  /// **'Search tests'**
  String get searchTests;

  /// No description provided for @added.
  ///
  /// In en, this message translates to:
  /// **'Added'**
  String get added;

  /// No description provided for @unableToLoadTests.
  ///
  /// In en, this message translates to:
  /// **'Unable to load tests'**
  String get unableToLoadTests;

  /// No description provided for @noTestsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No tests available right now'**
  String get noTestsAvailable;

  /// No description provided for @noTestsMessage.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any active tests. Please check back later or browse other categories.'**
  String get noTestsMessage;

  /// No description provided for @unableToLoadPackages.
  ///
  /// In en, this message translates to:
  /// **'Unable to load packages'**
  String get unableToLoadPackages;

  /// No description provided for @noPackagesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No packages available right now'**
  String get noPackagesAvailable;

  /// No description provided for @noPackagesMessage.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive health packages will appear here soon. Stay tuned!'**
  String get noPackagesMessage;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed !'**
  String get failed;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get success;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @files.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get files;

  /// No description provided for @expireOn.
  ///
  /// In en, this message translates to:
  /// **'expire on'**
  String get expireOn;

  /// No description provided for @unableToLoadDocumentsCommon.
  ///
  /// In en, this message translates to:
  /// **'Unable to load documents'**
  String get unableToLoadDocumentsCommon;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @qr.
  ///
  /// In en, this message translates to:
  /// **'QR'**
  String get qr;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @unknownInitial.
  ///
  /// In en, this message translates to:
  /// **'U'**
  String get unknownInitial;

  /// No description provided for @lab.
  ///
  /// In en, this message translates to:
  /// **'Lab'**
  String get lab;

  /// No description provided for @xRay.
  ///
  /// In en, this message translates to:
  /// **'X-Ray'**
  String get xRay;

  /// No description provided for @uss.
  ///
  /// In en, this message translates to:
  /// **'USS'**
  String get uss;

  /// No description provided for @ctScan.
  ///
  /// In en, this message translates to:
  /// **'CT Scan'**
  String get ctScan;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @addDocument.
  ///
  /// In en, this message translates to:
  /// **'Add Document'**
  String get addDocument;

  /// No description provided for @documentType.
  ///
  /// In en, this message translates to:
  /// **'Document type'**
  String get documentType;

  /// No description provided for @expireDate.
  ///
  /// In en, this message translates to:
  /// **'ExpireDate'**
  String get expireDate;

  /// No description provided for @document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// No description provided for @unableToLoadDocumentTypes.
  ///
  /// In en, this message translates to:
  /// **'Unable to load document types'**
  String get unableToLoadDocumentTypes;

  /// No description provided for @documentTypesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Document types unavailable'**
  String get documentTypesUnavailable;

  /// No description provided for @documentTypesUnavailableMessage.
  ///
  /// In en, this message translates to:
  /// **'You cannot add documents right now.'**
  String get documentTypesUnavailableMessage;

  /// No description provided for @allDocuments.
  ///
  /// In en, this message translates to:
  /// **'All documents'**
  String get allDocuments;

  /// No description provided for @noDocumentsFoundCommon.
  ///
  /// In en, this message translates to:
  /// **'No documents Found'**
  String get noDocumentsFoundCommon;

  /// No description provided for @selectDocumentType.
  ///
  /// In en, this message translates to:
  /// **'Select document type'**
  String get selectDocumentType;

  /// No description provided for @selectMemberCommon.
  ///
  /// In en, this message translates to:
  /// **'Select member'**
  String get selectMemberCommon;

  /// No description provided for @selectExpireDate.
  ///
  /// In en, this message translates to:
  /// **'Select expire date'**
  String get selectExpireDate;

  /// No description provided for @selectDocumentToUpload.
  ///
  /// In en, this message translates to:
  /// **'Select document to upload'**
  String get selectDocumentToUpload;

  /// No description provided for @documentUploadedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Document uploaded successfully'**
  String get documentUploadedSuccessfully;

  /// No description provided for @saveReport.
  ///
  /// In en, this message translates to:
  /// **'Save Report'**
  String get saveReport;

  /// No description provided for @reportSavedAt.
  ///
  /// In en, this message translates to:
  /// **'Report saved at'**
  String get reportSavedAt;

  /// No description provided for @myCart.
  ///
  /// In en, this message translates to:
  /// **'My Cart'**
  String get myCart;

  /// No description provided for @yourCartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get yourCartIsEmpty;

  /// No description provided for @yourCartIsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Start adding items from the lab to see them here.'**
  String get yourCartIsEmptyMessage;

  /// No description provided for @doctorDetails.
  ///
  /// In en, this message translates to:
  /// **'Doctor Details'**
  String get doctorDetails;

  /// No description provided for @inPerson.
  ///
  /// In en, this message translates to:
  /// **'In Person'**
  String get inPerson;

  /// No description provided for @video.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get video;

  /// No description provided for @consultationFees.
  ///
  /// In en, this message translates to:
  /// **'Consultation Fees'**
  String get consultationFees;

  /// No description provided for @swipeRightToSeeMore.
  ///
  /// In en, this message translates to:
  /// **'Swipe right to see more →'**
  String get swipeRightToSeeMore;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDate;

  /// No description provided for @doctorInformation.
  ///
  /// In en, this message translates to:
  /// **'Doctor Information'**
  String get doctorInformation;

  /// No description provided for @unableToLoadAppointmentSlots.
  ///
  /// In en, this message translates to:
  /// **'Unable to load appointment slots'**
  String get unableToLoadAppointmentSlots;

  /// No description provided for @appointmentBookingFailed.
  ///
  /// In en, this message translates to:
  /// **'Appointment booking failed'**
  String get appointmentBookingFailed;

  /// No description provided for @confirmBooking.
  ///
  /// In en, this message translates to:
  /// **'Confirm Booking'**
  String get confirmBooking;

  /// No description provided for @rescheduleAppointment.
  ///
  /// In en, this message translates to:
  /// **'Reschedule Appointment'**
  String get rescheduleAppointment;

  /// No description provided for @appointmentBookedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Appointment booked successfully'**
  String get appointmentBookedSuccessfully;

  /// No description provided for @appointmentRescheduledSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Appointment rescheduled successfully'**
  String get appointmentRescheduledSuccessfully;

  /// No description provided for @availableTime.
  ///
  /// In en, this message translates to:
  /// **'Available Time'**
  String get availableTime;

  /// No description provided for @noSlotsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Slots Available'**
  String get noSlotsAvailable;

  /// No description provided for @noSlotsAvailableMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check back later or select another date.'**
  String get noSlotsAvailableMessage;

  /// No description provided for @appointmentFor.
  ///
  /// In en, this message translates to:
  /// **'Appointment for'**
  String get appointmentFor;

  /// No description provided for @noMembersAvailableToProceed.
  ///
  /// In en, this message translates to:
  /// **'No members available. Add a member to proceed.'**
  String get noMembersAvailableToProceed;

  /// No description provided for @selectMemberOrAddNew.
  ///
  /// In en, this message translates to:
  /// **'Select a member or add a new one.'**
  String get selectMemberOrAddNew;

  /// No description provided for @patient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get patient;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @selectSlotForRescheduleAppointment.
  ///
  /// In en, this message translates to:
  /// **'Select slot for reschedule appointment'**
  String get selectSlotForRescheduleAppointment;

  /// No description provided for @rescheduleSlot.
  ///
  /// In en, this message translates to:
  /// **'Reschedule Slot'**
  String get rescheduleSlot;

  /// No description provided for @addMemberToBookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Add a Member to book an appointment'**
  String get addMemberToBookAppointment;

  /// No description provided for @selectSlotAndMemberToBookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Select a slot and a member to book appointment'**
  String get selectSlotAndMemberToBookAppointment;

  /// No description provided for @selectSlotToBookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Select a slot to book appointment'**
  String get selectSlotToBookAppointment;

  /// No description provided for @selectMemberToBookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Select a member to book appointment'**
  String get selectMemberToBookAppointment;

  /// No description provided for @bookSlot.
  ///
  /// In en, this message translates to:
  /// **'Book Slot'**
  String get bookSlot;

  /// No description provided for @selectMemberToContinue.
  ///
  /// In en, this message translates to:
  /// **'Select member to continue'**
  String get selectMemberToContinue;

  /// No description provided for @pleaseChooseAMember.
  ///
  /// In en, this message translates to:
  /// **'Please choose a member to proceed with the application.'**
  String get pleaseChooseAMember;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @setPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get setPassword;

  /// No description provided for @createNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create new password'**
  String get createNewPassword;

  /// No description provided for @createNewPasswordMessage.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be at least 8 characters long and include a mix of letters and numbers.'**
  String get createNewPasswordMessage;

  /// No description provided for @savePassword.
  ///
  /// In en, this message translates to:
  /// **'Save Password'**
  String get savePassword;

  /// No description provided for @passwordChangedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully'**
  String get passwordChangedSuccessfully;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutConfirmation;

  /// No description provided for @helpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpAndSupport;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @deleteProfile.
  ///
  /// In en, this message translates to:
  /// **'Delete Profile'**
  String get deleteProfile;

  /// No description provided for @myFamily.
  ///
  /// In en, this message translates to:
  /// **'My Family'**
  String get myFamily;

  /// No description provided for @createPassword.
  ///
  /// In en, this message translates to:
  /// **'Create Password'**
  String get createPassword;

  /// No description provided for @uhid.
  ///
  /// In en, this message translates to:
  /// **'UHID'**
  String get uhid;

  /// No description provided for @reviewAppointmentDetails.
  ///
  /// In en, this message translates to:
  /// **'Please review the appointment details before confirming.'**
  String get reviewAppointmentDetails;

  /// No description provided for @reviewUpdatedSlotDetails.
  ///
  /// In en, this message translates to:
  /// **'Please review the updated slot details before confirming.'**
  String get reviewUpdatedSlotDetails;

  /// No description provided for @memberDetails.
  ///
  /// In en, this message translates to:
  /// **'Member Details'**
  String get memberDetails;

  /// No description provided for @memberDetailsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Member details not found'**
  String get memberDetailsNotFound;

  /// No description provided for @memberDetailsNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'This member is no longer available in your profile.'**
  String get memberDetailsNotFoundMessage;

  /// No description provided for @unableToLoadMember.
  ///
  /// In en, this message translates to:
  /// **'Unable to load member'**
  String get unableToLoadMember;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @noDocumentsForMember.
  ///
  /// In en, this message translates to:
  /// **'No documents uploaded for this member.'**
  String get noDocumentsForMember;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @insurance.
  ///
  /// In en, this message translates to:
  /// **'Insurance'**
  String get insurance;

  /// No description provided for @noActiveInsurance.
  ///
  /// In en, this message translates to:
  /// **'No active insurance details are linked to this member.'**
  String get noActiveInsurance;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @notLinked.
  ///
  /// In en, this message translates to:
  /// **'Not linked'**
  String get notLinked;

  /// No description provided for @memberIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Member ID'**
  String get memberIdLabel;

  /// No description provided for @personalDetails.
  ///
  /// In en, this message translates to:
  /// **'Personal details'**
  String get personalDetails;

  /// No description provided for @dobLabel.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dobLabel;

  /// No description provided for @genderLabel.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get genderLabel;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsAllCaughtUp.
  ///
  /// In en, this message translates to:
  /// **'All caught up!'**
  String get notificationsAllCaughtUp;

  /// No description provided for @notificationsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any new notifications at the moment. We\'ll keep you posted!'**
  String get notificationsEmptyMessage;

  /// No description provided for @unableToLoadNotifications.
  ///
  /// In en, this message translates to:
  /// **'Unable to load notifications'**
  String get unableToLoadNotifications;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'Profile Details'**
  String get profileDetails;

  /// No description provided for @profileUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Profile update failed'**
  String get profileUpdateFailed;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @editYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit your profile'**
  String get editYourProfile;

  /// No description provided for @reviewEssentialsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Review the essentials before continuing back to your profile.'**
  String get reviewEssentialsSubtitle;

  /// No description provided for @keepProfileAccurateSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep your profile information accurate for smoother visits.'**
  String get keepProfileAccurateSubtitle;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @emailAddressOptional.
  ///
  /// In en, this message translates to:
  /// **'Email Address (Optional)'**
  String get emailAddressOptional;

  /// No description provided for @enterMemberName.
  ///
  /// In en, this message translates to:
  /// **'Enter member name'**
  String get enterMemberName;

  /// No description provided for @enterMemberDob.
  ///
  /// In en, this message translates to:
  /// **'Enter member date of birth'**
  String get enterMemberDob;

  /// No description provided for @enterMemberNationalId.
  ///
  /// In en, this message translates to:
  /// **'Enter member national id'**
  String get enterMemberNationalId;

  /// No description provided for @enterValidNationalId.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid national id'**
  String get enterValidNationalId;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email id'**
  String get enterValidEmail;

  /// No description provided for @enterYourMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get enterYourMobileNumber;

  /// No description provided for @mobileNumberMustBe8Digits.
  ///
  /// In en, this message translates to:
  /// **'Mobile number must be 8 digits'**
  String get mobileNumberMustBe8Digits;

  /// No description provided for @pleaseEnterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterYourPassword;

  /// No description provided for @passwordMustBeAtLeast6Characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordMustBeAtLeast6Characters;

  /// No description provided for @serverFailure.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again later'**
  String get serverFailure;

  /// No description provided for @connectionTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out, please check your connection or try again later'**
  String get connectionTimeout;

  /// No description provided for @noNetwork.
  ///
  /// In en, this message translates to:
  /// **'No network connection, please check your network and try again'**
  String get noNetwork;

  /// No description provided for @tokenExpired.
  ///
  /// In en, this message translates to:
  /// **'Token expired'**
  String get tokenExpired;

  /// No description provided for @authFailure.
  ///
  /// In en, this message translates to:
  /// **'Entered username or password is incorrect'**
  String get authFailure;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @profileDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile Details'**
  String get profileDetailsTitle;

  /// No description provided for @profilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Profile photo'**
  String get profilePhoto;

  /// No description provided for @uploadProfilePhotoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Upload a clear photo for easier identification.'**
  String get uploadProfilePhotoSubtitle;

  /// No description provided for @changePhoto.
  ///
  /// In en, this message translates to:
  /// **'Change photo'**
  String get changePhoto;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @enterNewPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password'**
  String get enterNewPasswordHint;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @reEnterNewPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your new password'**
  String get reEnterNewPasswordHint;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get enterPassword;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Enter a password with minimum 8 characters'**
  String get passwordMinLength;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get confirmPasswordRequired;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchHint;

  /// No description provided for @medicalInsurances.
  ///
  /// In en, this message translates to:
  /// **'Medical Insurances'**
  String get medicalInsurances;

  /// No description provided for @pickProfilePhotoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a source for your new profile image.'**
  String get pickProfilePhotoSubtitle;

  /// No description provided for @one.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get one;

  /// No description provided for @bookAService.
  ///
  /// In en, this message translates to:
  /// **'Book a Service'**
  String get bookAService;

  /// No description provided for @bookHospitalAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Hospital Appointment'**
  String get bookHospitalAppointment;

  /// No description provided for @bookVideoConsultation.
  ///
  /// In en, this message translates to:
  /// **'Book Video Consultation'**
  String get bookVideoConsultation;

  /// No description provided for @consultDoctorNow.
  ///
  /// In en, this message translates to:
  /// **'Consult Doctor Now'**
  String get consultDoctorNow;

  /// No description provided for @bookRadiologyScans.
  ///
  /// In en, this message translates to:
  /// **'Book Radiology Scans'**
  String get bookRadiologyScans;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
