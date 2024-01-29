import 'package:alphaweb/router/router.dart';
import 'package:alphaweb/screens/authentication_ui.dart';
import 'package:alphaweb/screens/forget_password.dart';
import 'package:alphaweb/screens/homepage.dart';
import 'package:alphaweb/screens/login_page.dart';
import 'package:alphaweb/screens/new_password.dart';
import 'package:alphaweb/screens/otp_verification.dart';
import 'package:alphaweb/screens/password_changed.dart';
import 'package:alphaweb/screens/services.dart';
import 'package:alphaweb/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routers.authenticationpage.path,
    name: Routers.authenticationpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: AuthenticationUI());
    },
  ),
  GoRoute(
    path: Routers.loginpage.path,
    name: Routers.loginpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: LoginPage());
    },
  ),
  GoRoute(
    path: Routers.signuppage.path,
    name: Routers.signuppage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SignupPage());
    },
  ),
  GoRoute(
    path: Routers.forgetpassword.path,
    name: Routers.forgetpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ForgetPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.newpassword.path,
    name: Routers.newpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: NewPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.otpverification.path,
    name: Routers.otpverification.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: OtpVerificationPage());
    },
  ),
  GoRoute(
    path: Routers.passwordchanges.path,
    name: Routers.passwordchanges.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: PasswordChangesPage());
    },
  ),
  GoRoute(
    path: Routers.homepage.path,
    name: Routers.homepage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: HomePage());
    },
  ),
  GoRoute(
    path: Routers.services.path,
    name: Routers.services.name,
    pageBuilder: (context, state) {
      return CupertinoPage(child: ServicePage());
    },
  )
]);
