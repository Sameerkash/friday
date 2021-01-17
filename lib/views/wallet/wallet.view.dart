import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday/utils/string.util.dart';

class WalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(MaterialCommunityIcons.wallet),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
                  child: Column(
                    children: [
                      Text(
                        "Money Saved",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Text(
                        "Rs. 122",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.1.sw),
                child: Text(
                  "Total Rewards",
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
              ),
              // Text(
              //   "You have'nt redeemed any scratch card yet",
              //   style: Theme.of(context).textTheme.bodyText1,
              //   textAlign: TextAlign.center,
              // ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.05.sh),
                    child: Container(
                      height: 0.72.sh,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          color: Colors.white,
                        ),
                        // color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              "You have'nt redeemed any scratch card yet",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            Image.asset("assets/Money saved.png"),
                            SizedBox(
                              height: 0.06.sh,
                            ),
                            Container(
                              height: 0.15.sh,
                              width: 0.9.sw,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
