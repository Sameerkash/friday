import 'package:auto_route/auto_route_annotations.dart';
import 'package:friday/views/auth/login.view.dart';
import 'package:friday/views/auth/signup.view.dart';
import 'package:friday/views/kyc/kyc.dart';
import 'package:friday/views/landing.widget.dart';
import 'package:friday/views/wallet/wallet.view.dart';

import '../views/app.widget.dart';
import '../views/cards/add.card.view.dart';

@CupertinoAutoRouter(routes: <AutoRoute>[
  CupertinoRoute(page: LandingWidget, initial: true),
  CupertinoRoute(page: AddCardView),
  CupertinoRoute(page: WalletView),
  CupertinoRoute(page: KYCView),
  CupertinoRoute(page: LoginView),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: SignUpPhoneView),
  CupertinoRoute(page: SignUpOtpView),
], generateNavigationHelperExtension: true)
class $Router {}
