// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/auth/login.view.dart';
import '../views/auth/signup.view.dart';
import '../views/cards/add.card.view.dart';
import '../views/kyc/kyc.dart';
import '../views/landing.widget.dart';
import '../views/wallet/wallet.view.dart';

class Routes {
  static const String landingWidget = '/';
  static const String addCardView = '/add-card-view';
  static const String walletView = '/wallet-view';
  static const String kYCView = '/k-yc-view';
  static const String loginView = '/login-view';
  static const String signUpView = '/sign-up-view';
  static const String signUpPhoneView = '/sign-up-phone-view';
  static const String signUpOtpView = '/sign-up-otp-view';
  static const all = <String>{
    landingWidget,
    addCardView,
    walletView,
    kYCView,
    loginView,
    signUpView,
    signUpPhoneView,
    signUpOtpView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.landingWidget, page: LandingWidget),
    RouteDef(Routes.addCardView, page: AddCardView),
    RouteDef(Routes.walletView, page: WalletView),
    RouteDef(Routes.kYCView, page: KYCView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.signUpPhoneView, page: SignUpPhoneView),
    RouteDef(Routes.signUpOtpView, page: SignUpOtpView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LandingWidget: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LandingWidget(),
        settings: data,
      );
    },
    AddCardView: (data) {
      final args = data.getArgs<AddCardViewArguments>(
        orElse: () => AddCardViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AddCardView(key: args.key),
        settings: data,
      );
    },
    WalletView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => WalletView(),
        settings: data,
      );
    },
    KYCView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => KYCView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    SignUpPhoneView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpPhoneView(),
        settings: data,
      );
    },
    SignUpOtpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpOtpView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushLandingWidget() => push<dynamic>(Routes.landingWidget);

  Future<dynamic> pushAddCardView({
    Key key,
  }) =>
      push<dynamic>(
        Routes.addCardView,
        arguments: AddCardViewArguments(key: key),
      );

  Future<dynamic> pushWalletView() => push<dynamic>(Routes.walletView);

  Future<dynamic> pushKYCView() => push<dynamic>(Routes.kYCView);

  Future<dynamic> pushLoginView() => push<dynamic>(Routes.loginView);

  Future<dynamic> pushSignUpView() => push<dynamic>(Routes.signUpView);

  Future<dynamic> pushSignUpPhoneView() =>
      push<dynamic>(Routes.signUpPhoneView);

  Future<dynamic> pushSignUpOtpView() => push<dynamic>(Routes.signUpOtpView);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AddCardView arguments holder class
class AddCardViewArguments {
  final Key key;
  AddCardViewArguments({this.key});
}
