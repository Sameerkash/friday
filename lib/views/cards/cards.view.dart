import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../widgets/creditcards.dart';
import 'add.card.view.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ActualCards(
                      name: "Sumit Roy",
                      cardNumber: "5120 4200 0000 0000",
                      validThru: "4/25",
                      image: "assets/Group 10768.svg",
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox();
                  },
                  itemCount: 3),
              SizedBox(
                height: 0.08.sh,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: OpenContainer(
        closedShape: CircleBorder(),
        transitionDuration: const Duration(milliseconds: 400),
        closedBuilder: (context, action) {
          return FloatingActionButton(
            focusColor: Colors.black,
            child: Icon(Icons.add),
            onPressed: action,
          );
        },
        openBuilder: (context, action) {
          return AddCardView();
        },
      ),
    );
  }
}
