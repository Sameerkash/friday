import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday/widgets/buttons.dart';
import 'package:friday/widgets/inputdecoration.dart';
import 'package:auto_route/auto_route.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                    onPressed: () {},
                    icon: Icon(MaterialCommunityIcons.wallet),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
                  child: Text(
                    "Profile",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.08.sh),
                    child: Container(
                      height: 0.75.sh,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          color: Colors.white,
                        ),
                        // color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Form(
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: inputFormatThree(context,
                                          label: "Name"),
                                    ),
                                    SizedBox(
                                      height: 0.04.sh,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Chip(
                                          label: Text("Male"),
                                        ),
                                        Chip(
                                          label: Text("Female"),
                                          backgroundColor: Colors.greenAccent,
                                        ),
                                        Chip(
                                          label: Text("Other"),
                                        )
                                      ],
                                    ),
                                    TextField(
                                      decoration: inputFormatThree(context,
                                          label: "Email"),
                                    ),
                                    SizedBox(
                                      height: 0.04.sh,
                                    ),
                                    TextField(
                                      decoration: inputFormatThree(context,
                                          label: "Phone"),
                                    ),
                                    SizedBox(
                                      height: 0.04.sh,
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: ActionButton(
                                            onPressed: (){},
                                            text: "Save",
                                            color:
                                                Theme.of(context).buttonColor,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: ActionButton(
                                            onPressed: (){},
                                            text: "Logout",
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.04.sh,
                                    ),
                                    ActionButton(
                                      onPressed: () {
                                        context.rootNavigator.push('/k-yc-view');
                                      },
                                      width: 0.75,
                                      text: "KYC",
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[100],
                      child: IconButton(
                        icon: Icon(Icons.camera),
                        onPressed: () {},
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
