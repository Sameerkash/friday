import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../widgets/buttons.dart';
import '../../widgets/creditcards.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/dropdown.dart';
import '../../widgets/inputdecoration.dart';

class AddCardView extends StatefulHookWidget {
  AddCardView({Key key}) : super(key: key);

  @override
  _AddCardViewState createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  @override
  Widget build(BuildContext context) {
    var month = useState("01");
    var year = useState("21");

    var cardNumber = useTextEditingController();
    var name = useTextEditingController();
    var code = useTextEditingController();
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
                  name: name.value.text ?? "",
                  cardNumber: cardNumber.value.text ?? "",
                  validThru: "${month.value}/${year.value}",
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
                        keyboardType: TextInputType.numberWithOptions(),
                        controller: cardNumber,
                        decoration:
                            inputFormatTwo(context, label: "Card Number"),
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      TextField(
                        controller: name,
                        decoration:
                            inputFormatTwo(context, label: "Name on Card"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomDropDown(
                            value: month.value,
                            name: "Month",
                            listFeild: ["01", "02", "03", "04"],
                            onChanged: (val) {
                              month.value = val;
                            },
                          ),
                          CustomDropDown(
                            value: year.value,
                            name: "Year",
                            listFeild: ["21", "22", "23", "24"],
                            onChanged: (val) {
                              year.value = val;
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: code,
                        decoration:
                            inputFormatTwo(context, label: "Security Code"),
                      ),
                      SizedBox(
                        height: 0.04.sh,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ActionButton(
                          onPressed: () {},
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
