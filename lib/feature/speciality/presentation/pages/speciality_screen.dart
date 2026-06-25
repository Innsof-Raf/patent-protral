import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/feature_header.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/sliver_search_header.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/feature/speciality/presentation/bloc/speciality_bloc/speciality_bloc.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_grid.dart';

@RoutePage(name: 'SpecialityRoute')
class SpecialityScreen extends StatefulWidget {
  const SpecialityScreen({super.key});

  @override
  State<SpecialityScreen> createState() => _SpecialityScreenState();
}

class _SpecialityScreenState extends State<SpecialityScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchSpecialities();
  }

  void _fetchSpecialities() {
    context.read<SpecialityBloc>().add(
      FetchSpecialities(
        params: SpecialityParams.fetchSpecialities(
          token: context.read<UserBloc>().state.user!.accessToken,
          idBusUnit: 3,
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: BlocBuilder<SpecialityBloc, SpecialityState>(
        builder: (context, state) {
          if (state.isFetching) {
            return const CommonLoadingView();
          }

          if (state.isFetchingError) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadSpecialities,
              message: state.error.message,
              onRetry: _fetchSpecialities,
            );
          }

          return RefreshIndicator(
            onRefresh: () async => _fetchSpecialities(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),
                  sliver: SliverToBoxAdapter(
                    child: FeatureHeader(
                      title: AppStaticTexts.findSpecialist,
                      subtitle: AppStaticTexts.specialistSubtitle,
                      badgeText:
                          '${state.specialities.length} ${AppStaticTexts.specialitiesAvailable}',
                    ),
                  ),
                ),
                if (state.specialities.isNotEmpty)
                  SliverSearchHeader(
                    controller: searchController,
                    title: AppStaticTexts.searchSpecialityHint,
                    hintText: AppStaticTexts.searchSpecialities,
                    onChanged: (value) {
                      context.read<SpecialityBloc>().add(
                        SearchSpecialities(
                          params: SpecialityParams.searchSpecialities(
                            searchKey: value,
                            specialities: state.specialities,
                          ),
                        ),
                      );
                    },
                  ),
                _SpecialityResultSliver(
                  allSpecialities: state.specialities,
                  searchController: searchController,
                  onRefresh: _fetchSpecialities,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SpecialityResultSliver extends StatelessWidget {
  const _SpecialityResultSliver({
    required this.allSpecialities,
    required this.searchController,
    required this.onRefresh,
  });

  final List<Speciality> allSpecialities;
  final TextEditingController searchController;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    if (allSpecialities.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: CommonEmptyState(
          title: AppStaticTexts.noSpecialitiesFound,
          description: AppStaticTexts.noSpecialitiesFoundMessage,
          icon: Icons.medical_information_outlined,
          actionLabel: AppStaticTexts.refresh,
          onAction: onRefresh,
        ),
      );
    }

    return BlocBuilder<SpecialityBloc, SpecialityState>(
      builder: (context, state) {
        final specialities = searchController.text.isNotEmpty
            ? state.searchResult
            : allSpecialities;

        if (specialities.isEmpty) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: CommonEmptyState(
              title: AppStaticTexts.noMatchingSpeciality,
              description: AppStaticTexts.noMatchingSpecialityMessage,
              icon: Icons.search_off_rounded,
            ),
          );
        }

        return SpecialityGrid(specialities: specialities);
      },
    );
  }
}
