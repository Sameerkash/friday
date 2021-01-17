import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cards/cards.view.dart';
import 'home/home.view.dart';
import 'profile/profile.view.dart';
import 'transactions/transactions.view.dart';

class NavBarView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var pageController = usePageController();
    var index = useState(0);

    return Scaffold(
      backgroundColor:
          index.value == 1 ? Colors.grey[900] : Colors.white,
      body: PageView(
        controller: pageController,
        onPageChanged: (i) => index.value = i,
        children: [
          HomeView(),
          CardsView(),
          TransactionView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          MaterialCommunityIcons.home,
          MaterialCommunityIcons.credit_card,
          Icons.bar_chart,
          Icons.person,
        ],
        inactiveColor: Colors.white,
        elevation: 2,
        height: 0.08.sh,
        activeIndex: index.value,
        leftCornerRadius: 50,
        rightCornerRadius: 50,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.black,
        gapWidth: 0,
        onTap: (i) {
          pageController.animateToPage(i,
              duration: Duration(microseconds: 200),
              curve: Curves.fastOutSlowIn);
        },

        //other params
      ),
    );
  }
}
