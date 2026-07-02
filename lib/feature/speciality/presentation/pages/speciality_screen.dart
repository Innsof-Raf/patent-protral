import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
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
      backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.9),
      body: BlocBuilder<SpecialityBloc, SpecialityState>(
        builder: (context, state) {
          if (state.isFetching ||
              (!state.isFetchingSuccess && !state.isFetchingError)) {
            return const CommonLoadingView();
          }

          if (state.isFetchingError) {
            return CommonErrorView(
              title: context.lang.unableToLoadSpecialities,
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
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  backgroundColor: theme.colorScheme.surface,
                  surfaceTintColor: theme.colorScheme.surface,
                  centerTitle: false,
                  title: Container(
                    height: 46,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(top: 5),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest
                          .withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    child: TextField(
                      controller: searchController,
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
                      decoration: InputDecoration(
                        hintText: context.lang.searchSpecialities,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.4,
                          ),
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 11,
                        ),
                      ),
                    ),
                  ),
                  titleSpacing: 0,
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      context.lang.allSpecialties,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.9,
                        ),
                      ),
                    ),
                  ),
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
        child: CommonEmptyState(
          title: context.lang.noSpecialitiesFound,
          description: context.lang.noSpecialitiesFoundMessage,
          icon: Icons.medical_information_outlined,
          actionLabel: context.lang.refresh,
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
          return SliverFillRemaining(
            child: CommonEmptyState(
              title: context.lang.noMatchingSpeciality,
              description: context.lang.noMatchingSpecialityMessage,
              icon: Icons.search_off_rounded,
            ),
          );
        }

        return SpecialityGrid(specialities: specialities);
      },
    );
  }
}
