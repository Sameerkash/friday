import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:friday/views/wallet/wallet.view.dart';

import '../../utils/string.util.dart';
import '../../widgets/creditcards.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                    ),
                    SizedBox(
                      width: 0.13.sw,
                    ),
                    Column(
                      children: [
                        AutoSizeText("Welcome Back",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.grey)),
                        AutoSizeText("Hi! Pranjal",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 28)),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.1.sh),
                    child: Container(
                      height: 0.65.sh,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 0.1.sh,
                              ),
                              ActivateCardSwitch(
                                  // TODO: Add card active state from api
                                  // isCardActive: ,
                                  ),
                              MonthlySpend(),
                              Rewards(),
                              Offers(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  VirtualCard(
                    name: "Sumit Roy",
                    cardNumber: "5120 4200 0000 0000",
                    validThru: "4/25",
                    image: "assets/Group 10768.svg",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivateCardSwitch extends HookWidget {
  final bool isCardActive;
  const ActivateCardSwitch({
    Key key,
    this.isCardActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isActive = useState(isCardActive);
    return Padding(
      padding: EdgeInsets.only(right: 0.1.sw),
      child: Align(
        alignment: Alignment.centerRight,
        heightFactor: 0.5,
        child: CupertinoSwitch(
          value: isActive.value,
          onChanged: (val) {
            isActive.value = val;
          },
        ),
      ),
    );
  }
}

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "We have some offers for you",
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 0.03.sh,
          ),
          Container(
            height: 0.08.sh,
            width: 0.8.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  rewards[0],
                ),
                Image.asset(
                  rewards[1],
                ),
                Image.asset(
                  rewards[2],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rewards",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 0.03.sh,
          ),
          Container(
            height: 0.1.sh,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  height: 0.08.sh,
                  width: 0.8.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        rewards[index],
                      ),
                      Image.asset(
                        rewards[index],
                      ),
                      Image.asset(
                        rewards[2],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return SizedBox(
                  width: 0.03.sw,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class MonthlySpend extends HookWidget {
  const MonthlySpend({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var limit = useState(20.0);
    var limitText = limit.value;
    if (limit.value > 1000) {
      limitText = limit.value / 1000;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Monthly Spending Limit",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  // divisions: 5,
                  min: 0,
                  max: 200000,
                  activeColor: Colors.black,
                  value: limit.value,
                  onChanged: (val) {
                    limit.value = val;
                  },
                ),
                // LinearPercentIndicator(
                //   width: 0.65.sw,
                //   lineHeight: 14.0,
                //   percent: 0.5,
                //   backgroundColor: Colors.grey[200],
                //   progressColor: Colors.black,
                // ),
                Text(
                  "${limitText.toStringAsFixed(0)}k",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
