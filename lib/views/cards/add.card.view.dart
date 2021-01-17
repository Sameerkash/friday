import 'package:flutter/material.dart';
import '../../widgets/buttons.dart';
import '../../widgets/creditcards.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/dropdown.dart';
import '../../widgets/inputdecoration.dart';

class AddCardView extends StatefulWidget {
  AddCardView({Key key}) : super(key: key);

  @override
  _AddCardViewState createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add Cards",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                VirtualCard(
                  name: "",
                  cardNumber: "",
                  validThru: "",
                  image: "assets/Group 10768.svg",
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Just a few more steps",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Form(
                  child: Column(
                    children: [
                      TextField(
                        decoration:
                            inputFormatTwo(context, label: "Card Number"),
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      TextField(
                        decoration:
                            inputFormatTwo(context, label: "Name on Card"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomDropDown(
                            value: "Jan",
                            name: "Month",
                            listFeild: ["Jan", "Feb", "March", "April"],
                            onChanged: (val) {},
                          ),
                          CustomDropDown(
                            value: "2021",
                            name: "Year",
                            listFeild: ["2021", "2022", "2023", "2024"],
                            onChanged: (val) {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      TextField(
                        decoration:
                            inputFormatTwo(context, label: "Security Code"),
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ActionButton(
                          text: "Add",
                          color: Theme.of(context).buttonColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
