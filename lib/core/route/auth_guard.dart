import 'package:auto_route/auto_route.dart';
import 'package:patient_portal/core/injection_container.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final userBloc = sl<UserBloc>();
    if (userBloc.state.user != null) {
      if (resolver.route.name == 'LoginRoute') {
        router.replaceAll([const MainRoute()]);
      } else {
        resolver.next(true);
      }
    } else {
      if (resolver.route.name != 'LoginRoute') {
        router.replaceAll([const LoginRoute()]);
      } else {
        resolver.next(true);
      }
    }
  }
}
