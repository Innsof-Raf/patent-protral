import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/domain/entities/shift.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/appointment_slot_section.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_bottom_navigation_bar.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/member_selection_section.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_info_widgets.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'BookAppointmentRoute')
class BookAppointmentScreen extends StatefulWidget {
  final int appointmentId;
  final Doctor doctor;

  const BookAppointmentScreen({
    super.key,
    required this.appointmentId,
    required this.doctor,
  });

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  final ValueNotifier<int> _selectedTypeNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    final userBloc = context.read<UserBloc>();
    BookAppointmentScreenHelpers.selectedMemberNotifier.value =
        userBloc.state.selectedMember;
    BookAppointmentScreenHelpers.createDateList();
    _fetchSlots(BookAppointmentScreenHelpers.selectedDateNotifier.value);
  }

  void _fetchSlots(DateTime date) {
    context.read<BookAppointmentBloc>().add(
      GetAvailableSlots(
        idDoctor: widget.doctor.idDoctor,
        date: date,
        token: context.read<UserBloc>().state.user!.accessToken,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String doctorImage =
        '${ConstantUrls.doctorImageUrl}/${widget.doctor.idDoctor}/${widget.doctor.doctorImage}';

    return Scaffold(
      appBar: CommonAppbar(
        title: context.lang.doctorDetails,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DoctorInfoSection(
                    image: doctorImage,
                    name: widget.doctor.doctorName,
                    speciality: widget.doctor.doctorSpeciality,
                    experience: widget.doctor.experience,
                    languages: widget.doctor.knownLanguages.join(', '),
                    bio: widget.doctor.doctorBio,
                  ),
                  const Divider(height: 1, thickness: 1),
                  _AppointmentTypeToggle(notifier: _selectedTypeNotifier),
                  _LocationSection(branch: widget.doctor.branch),
                  _DateSelector(
                    onDateSelected: (date) {
                      if (date !=
                          BookAppointmentScreenHelpers
                              .selectedDateNotifier
                              .value) {
                        BookAppointmentScreenHelpers
                                .selectedDateNotifier
                                .value =
                            date;
                        BookAppointmentScreenHelpers
                                .selectedSlotNotifier
                                .value =
                            null;
                        _fetchSlots(date);
                      }
                    },
                  ),
                  if (widget.doctor.consultationFee > 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.lang.consultationFees,
                            style: AppTextStyles.largeBoldRoboto.copyWith(
                              color: AppColors.textLight,
                            ),
                          ),
                          Text(
                            '${context.lang.qar} ${widget.doctor.consultationFee.toStringAsFixed(0)}',
                            style: AppTextStyles.largeBoldRoboto,
                          ),
                        ],
                      ),
                    ),
                  BlocBuilder<BookAppointmentBloc, BookAppointmentState>(
                    builder: (context, state) {
                      if (state.isFetchingError) {
                        return CommonErrorView(
                          title: context.lang.unableToLoadAppointmentSlots,
                          message: state.error.message,
                          onRetry: () => _fetchSlots(
                            BookAppointmentScreenHelpers
                                .selectedDateNotifier
                                .value,
                          ),
                        );
                      }
                      if (state.isSlotLoading ||
                          (!state.isFetchingSuccses &&
                              !state.isFetchingError)) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ).copyWith(top: 90),
                          child: CommonLoadingView(
                            size: 80,
                            padding: EdgeInsets.all(20),
                          ),
                        );
                      }

                      return ValueListenableBuilder<int>(
                        valueListenable: _selectedTypeNotifier,
                        builder: (context, type, _) {
                          final isOnlineUnavailable =
                              type == 1 && !widget.doctor.isOnline;

                          return Column(
                            children: [
                              AppointmentSlotSection(
                                shift: isOnlineUnavailable
                                    ? const Shift(shift: '', slots: [])
                                    : state.shift,
                              ),
                              if (!isOnlineUnavailable &&
                                  state.shift.slots.isNotEmpty) ...[
                                const Gap(8),
                                Center(
                                  child: Text(
                                    context.lang.swipeRightToSeeMore,
                                    style: AppTextStyles.bodySmallRobotoNormal,
                                  ),
                                ),
                                const Gap(16),
                                if (widget.appointmentId == 0) ...[
                                  const Divider(height: 1),
                                  const MemberSelectionSection(),
                                ],
                                const Gap(20),
                              ],
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BookAppointmentBottomNavigationBar(
        appointmentId: widget.appointmentId,
        doctorImage: doctorImage,
        doctorName: widget.doctor.doctorName,
        idDoctor: widget.doctor.idDoctor,
        selectedTypeNotifier: _selectedTypeNotifier,
      ),
    );
  }
}

class _DateSelector extends StatelessWidget {
  final ValueChanged<DateTime> onDateSelected;

  const _DateSelector({required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: BookAppointmentScreenHelpers.dateList.length + 1,
        itemBuilder: (context, index) {
          if (index == BookAppointmentScreenHelpers.dateList.length) {
            return _SelectDateButton(onDateSelected: onDateSelected);
          }
          final date = BookAppointmentScreenHelpers.dateList[index];
          return ValueListenableBuilder<DateTime>(
            valueListenable: BookAppointmentScreenHelpers.selectedDateNotifier,
            builder: (context, selectedDate, child) {
              final isSelected = DateUtils.isSameDay(date, selectedDate);
              return GestureDetector(
                onTap: () => onDateSelected(date),
                child: _CustomDateTab(date: date, isSelected: isSelected),
              );
            },
          );
        },
      ),
    );
  }
}

class _CustomDateTab extends StatelessWidget {
  final DateTime date;
  final bool isSelected;

  const _CustomDateTab({required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isToday = DateUtils.isSameDay(date, DateTime.now());

    return Container(
      width: 85,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryCyanDark : colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? AppColors.primaryCyanDark : AppColors.borderColor,
          width: 1.5,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: AppColors.primaryCyanDark.withValues(alpha: 0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : const [
                BoxShadow(
                  color: AppColors.shadowColorLight,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('d MMM').format(date),
            style: AppTextStyles.largeBoldRoboto.copyWith(
              color: isSelected ? AppColors.white : AppColors.textDark,
              fontSize: 15,
            ),
          ),
          const Gap(2),
          Text(
            isToday ? context.lang.today : DateFormat('EEE').format(date),
            style: AppTextStyles.bodySmallRobotoNormal.copyWith(
              color: isSelected
                  ? AppColors.white.withValues(alpha: 0.8)
                  : AppColors.textLight,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectDateButton extends StatelessWidget {
  final ValueChanged<DateTime> onDateSelected;

  const _SelectDateButton({required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: BookAppointmentScreenHelpers.selectedDateNotifier.value,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 90)),
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: AppColors.blue,
                  onPrimary: AppColors.white,
                  onSurface: AppColors.textDark,
                ),
              ),
              child: child!,
            );
          },
        );
        if (picked != null) {
          onDateSelected(picked);
        }
      },
      child: Container(
        width: 100,
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.blue, width: 1.5),
        ),
        child: Center(
          child: Text(
            context.lang.selectDate,
            style: AppTextStyles.largeBoldRoboto.copyWith(
              color: AppColors.blue,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

class _DoctorInfoSection extends StatelessWidget {
  final String image;
  final String name;
  final String? speciality;
  final String? experience;
  final String? languages;
  final String? bio;

  const _DoctorInfoSection({
    required this.image,
    required this.name,
    this.speciality,
    this.experience,
    this.languages,
    this.bio,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.surfaceContainerHighest,
                  border: Border.all(
                    color: theme.colorScheme.outlineVariant.withValues(
                      alpha: .5,
                    ),
                    width: 1,
                  ),
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    placeholder: CommonNetworkImage.placeholder,
                    errorWidget: CommonNetworkImage.errorWidget,
                  ),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toTitleCase(),
                      style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.textDark,
                        fontSize: 18,
                      ),
                    ),
                    if (speciality != null && speciality!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          speciality!.toTitleCase(),
                          style: AppTextStyles.bodyTextRoboto.copyWith(
                            color: AppColors.textLightDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    if (experience != null && experience!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          '${context.lang.experiencePrefix} $experience',
                          style: AppTextStyles.bodyTextRoboto.copyWith(
                            color: AppColors.textLightDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    if (languages != null && languages!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: languages!.split(',').map((lang) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.surfaceContainerHighest
                                    .withValues(alpha: .5),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: theme.colorScheme.outlineVariant
                                      .withValues(alpha: .3),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.translate_rounded,
                                    size: 11,
                                    color: theme.colorScheme.primary.withValues(
                                      alpha: .7,
                                    ),
                                  ),
                                  const Gap(6),
                                  Text(
                                    lang.trim(),
                                    style: AppTextStyles.bodyTextInter.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant
                                          .withValues(alpha: .9),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (bio != null && bio!.trim().isNotEmpty)
            PositionedDirectional(
              top: 0,
              end: 0,
              child: DoctorInfoButton(doctorName: name, bio: bio!),
            ),
        ],
      ),
    );
  }
}

class _AppointmentTypeToggle extends StatelessWidget {
  final ValueNotifier<int> notifier;

  const _AppointmentTypeToggle({required this.notifier});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: _TypeButton(
                    title: context.lang.inPerson,
                    icon: Icons.person_outline,
                    isSelected: value == 0,
                    onTap: () => notifier.value = 0,
                  ),
                ),
                Expanded(
                  child: _TypeButton(
                    title: context.lang.video,
                    icon: Icons.videocam_outlined,
                    isSelected: value == 1,
                    onTap: () => notifier.value = 1,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TypeButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _TypeButton({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryCyanDark : AppColors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: isSelected
              ? null
              : const [
                  BoxShadow(
                    color: AppColors.shadowColorUltraLight,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.white : AppColors.blue,
              size: 20,
            ),
            const Gap(8),
            Text(
              title,
              style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                color: isSelected ? AppColors.white : AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LocationSection extends StatelessWidget {
  final String branch;

  const _LocationSection({required this.branch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            branch,
            style: AppTextStyles.bodyLargeRobotoBold.copyWith(fontSize: 14),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
