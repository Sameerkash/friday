import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friday/providers/providers.dart';
import 'package:friday/widgets/buttons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../utils/string.util.dart';

class OnBoardingView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var pageController = usePageController();
    var index = useState(0);
    void onNext() {
      pageController.animateToPage(
        index.value + 1,
        curve: Curves.fastOutSlowIn,
        duration: Duration(microseconds: 300),
      );
    }

    return Scaffold(
      body: PageView(
        onPageChanged: (i) => index.value = i,
        controller: pageController,
        allowImplicitScrolling: false,
        children: [
          PageOne(
            onNext: onNext,
          ),
          PageTwo(
            onNext: onNext,
          ),
          PageThree(
            onNext: onNext,
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  final Function onNext;

  const PageOne({
    Key key,
    this.onNext,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.9.sw,
            ),
            child: SvgPicture.asset("assets/opslider1.svg"),
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          AutoSizeText(
            obtitle1,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.7.sw,
            ),
            child: AutoSizeText(
              obcontent1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 0.05.sh,
          ),
          NextButton(
            onPressed: onNext,
          )
        ],
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  final Function onPressed;
  const NextButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        child: Container(
          child: Icon(
            Icons.chevron_right,
            size: 35,
          ),
        ));
  }
}

class PageTwo extends StatelessWidget {
  final Function onNext;

  const PageTwo({Key key, this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.9.sw,
            ),
            child: SvgPicture.asset("assets/opslider2.svg"),
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          AutoSizeText(
            obtitle1,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.7.sw,
            ),
            child: AutoSizeText(
              obcontent1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 0.05.sh,
          ),
          NextButton(
            onPressed: onNext,
          )
        ],
      ),
    );
  }
}

class PageThree extends HookWidget {
  final Function onNext;

  const PageThree({Key key, this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.9.sw,
            ),
            child: SvgPicture.asset("assets/opslider3.svg"),
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          AutoSizeText(
            obtitle1,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 0.6.sh,
              maxWidth: 0.7.sw,
            ),
            child: AutoSizeText(
              obcontent1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 0.05.sh,
          ),
          ActionButton(
            color: Colors.greenAccent,
            width: 0.5,
            text: "Get Started",
            onPressed: () async {
              await context.read(onBoardProvider).setOnBoard();
            },
          )
        ],
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  final Function onNext;

  const PageFour({Key key, this.onNext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 0.6.sh,
            maxWidth: 0.9.sw,
          ),
          child: SvgPicture.asset("assets/opslider3.svg"),
        ),
        SizedBox(
          height: 0.02.sh,
        ),
        AutoSizeText(
          obtitle1,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 0.02.sh,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 0.6.sh,
            maxWidth: 0.7.sw,
          ),
          child: AutoSizeText(
            obcontent1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 0.05.sh,
        ),
        NextButton(
          onPressed: onNext,
        )
      ],
    ));
  }
}
