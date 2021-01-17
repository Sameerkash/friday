import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday/providers/providers.dart';
import 'package:friday/views/app.widget.dart';
import 'package:friday/views/onboarding/onboarding.view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LandingWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final oB = useProvider(onBoardProvider.state);

    return LayoutBuilder(
      builder: (context, constrains) {
        ScreenUtil.init(constrains, allowFontScaling: true);
        return oB.map(
          onBoarded: (_) => AppWidget(),
          notOnboarded: (_) => OnBoardingView(),
        );
      },
    );
  }
}
