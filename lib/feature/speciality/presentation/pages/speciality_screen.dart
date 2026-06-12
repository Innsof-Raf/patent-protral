import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/sliver_search_header.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/feature/speciality/presentation/bloc/speciality_bloc/speciality_bloc.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_grid.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_header.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_state_view.dart';

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
            return const SpecialityLoadingView();
          }

          if (state.isFetchingError) {
            return SpecialityMessageView(
              title: 'Unable to load specialities',
              message: state.error.message,
              isError: true,
            );
          }

          return CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                sliver: SliverToBoxAdapter(
                  child: SpecialityHeader(count: state.specialities.length),
                ),
              ),
              if (state.specialities.isNotEmpty)
                SliverSearchHeader(
                  controller: searchController,
                  title: 'Search speciality by department',
                  hintText: 'Search specialities',
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
              ),
            ],
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
  });

  final List<Speciality> allSpecialities;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    if (allSpecialities.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: SpecialityMessageView(
          title: 'No specialities found',
          message: 'Please check again later.',
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
            child: SpecialityMessageView(
              title: 'No matching speciality',
              message: 'Try searching with another department name.',
            ),
          );
        }

        return SpecialityGrid(specialities: specialities);
      },
    );
  }
}
