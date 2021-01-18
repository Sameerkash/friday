import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VirtualCard extends StatelessWidget {
  final String image;
  final String cardNumber;
  final String name;
  final String validThru;
  const VirtualCard({
    Key key,
    this.image,
    this.cardNumber,
    this.name,
    this.validThru,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      // child: Container(
      //   // height: 0.25.sh,
      //   // width: 0.8.sw,
      child: Stack(
        children: [
          Align(child: SvgPicture.asset(image)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 0.15.sh,
                width: 0.65.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(cardNumber),
                    SizedBox(
                      height: 0.0265.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 0.15.sw,
                          child: AutoSizeText(
                            name,
                            style: Theme.of(context).textTheme.caption,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 0.01.sw,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "valid \n thru",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 11),
                          ),
                        ),
                        SizedBox(
                          height: 0.01.sw,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            validThru,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}

class ActualCards extends StatelessWidget {
  final String image;
  final String cardNumber;
  final String name;
  final String validThru;
  const ActualCards({
    Key key,
    this.image,
    this.cardNumber,
    this.name,
    this.validThru,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.06.sh, vertical: 5),
        child: Column(
          children: [
            Stack(
              children: [
                Align(child: SvgPicture.asset(image)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 0.15.sh,
                      width: 0.6.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(cardNumber),
                          SizedBox(
                            height: 0.0265.sh,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 0.15.sw,
                                child: AutoSizeText(
                                  name,
                                  style: Theme.of(context).textTheme.caption,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  maxFontSize: 15,
                                  minFontSize: 10,
                                ),
                              ),
                              SizedBox(
                                width: 0.01.sw,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "valid \n thru",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 11),
                                ),
                              ),
                              SizedBox(
                                height: 0.01.sw,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  validThru,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: CupertinoSwitch(value: true, onChanged: null))
          ],
        ),
      ),
      // ),
    );
  }
}
