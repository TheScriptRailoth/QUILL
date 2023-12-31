part of 'router_imports.dart';
@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter{
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes=> [
    AutoRoute(page: SplashScreenRoute.page, path: "/", initial: true),
    AutoRoute(page: OnBoardScreenRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: GeneralRoute.page),
  ];

}