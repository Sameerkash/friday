import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday/providers/providers.dart';
import 'package:hooks_riverpod/all.dart';

import 'auth/auth.view.dart';
import 'navbar.view.dart';

class AppWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider.state);
    return Scaffold(
      body: 
      // auth.map(
      //   loading: (_) => Center(child: CircularProgressIndicator()),
      //   authenticated: (user) => 
        
        NavBarView(),
        
      //   unAuthenticated: (_) => AuthView(),
      // ),
    );
  }
}
