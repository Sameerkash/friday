import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_route/auto_route.dart';
import '../../widgets/buttons.dart';
import 'signup.view.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeToFriday();
  }
}

class WelcomeToFriday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.8.sh,
              maxWidth: 0.9.sw,
            ),
            child: Hero(
              tag: "firday",
              child: SvgPicture.asset("assets/Group 10579.svg")),
          ),
        ),
        SizedBox(
          height: 0.1.sh,
        ),
        AutoSizeText(
          "Welcome to Friday",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 0.1.sh,
        ),
        AuthButton(
          text: "Login",
          onPressed: () {
            context.rootNavigator.push('/login-view');
          },
          color: Theme.of(context).buttonColor,
        ),
        AuthButton(
          text: "Sign up",
          onPressed: () {
              context.rootNavigator.push('/sign-up-view');
          },
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(
          height: 0.15.sh,
        ),
      ],
    );
  }
}
