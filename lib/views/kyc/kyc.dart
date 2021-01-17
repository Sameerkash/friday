import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:friday/widgets/buttons.dart';
import 'package:friday/widgets/inputdecoration.dart';

class KYCView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: IconButton(
                      onPressed: () {
                        context.rootNavigator.push('/wallet-view');
                      },
                      icon: Icon(MaterialCommunityIcons.wallet),
                    ),
                  ),
                ),
                Text(
                  "KYC",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  children: [
                    Text(
                      "Your KYC is Incomplete",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      width: 0.01.sh,
                    ),
                    ExlcamationWidget()
                  ],
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Align(
                  child: SvgPicture.asset("assets/Group 10654.svg"),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                TextField(
                  decoration: inputFormatTwo(
                    context,
                    label: "PAN Card",
                    icon: ExlcamationWidget(
                      isDone: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextField(
                  decoration: inputFormatTwo(
                    context,
                    label: "Date of Birth",
                    icon: ExlcamationWidget(
                      isDone: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // style: TextSty÷/,
                    text: " By Continuing I confirm I have read the ",
                    style: Theme.of(context).textTheme.subtitle1,
                    children: [
                      TextSpan(
                        text: " Privacy Policy ",
                        style: TextStyle(color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // context.rootNavigator.push('/sign-up-view');
                          },
                      ),
                      TextSpan(
                        text: " and ",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: " Terms and Conditions ",
                        style: TextStyle(color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // context.rootNavigator.push('/sign-up-view');
                          },
                      ),
                    ],
                  ),

                  // SizedBox(
                  //   height: 0.15.sh,
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ActionButton(
                    onPressed: () {},
                    text: "Submit",
                    color: Theme.of(context).buttonColor,
                    width: 0.25,
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    // style: TextSty÷/,
                    text: " Instructions ",
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                        text: " \n Verify documents ",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: " \n Verify Identity ",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                )
                // Date
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExlcamationWidget extends StatelessWidget {
  final bool isDone;
  const ExlcamationWidget({
    Key key,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: isDone ? Colors.greenAccent : Colors.redAccent,
      child: Icon(
        isDone
            ? MaterialCommunityIcons.check
            : MaterialCommunityIcons.exclamation,
        color: Colors.black,
      ),
    );
  }
}
