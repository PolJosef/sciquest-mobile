import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sciquest_mobile/main/store/AppStore.dart';
import 'package:sciquest_mobile/main/utils/AppTheme.dart';
import 'package:sciquest_mobile/theme1/screen/T1Dashboard.dart';
import 'package:sciquest_mobile/theme1/screen/T1Signup.dart';
import 'package:sciquest_mobile/theme1/screen/T1WalkThrough.dart';
import 'package:sciquest_mobile/theme1/screen/t1_walk/IntroScreen.dart';

import 'main/utils/AppConstant.dart';

/// This variable is used to get dynamic colors when theme mode is changed
AppStore appStore = AppStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '$mainAppName${!isMobile ? ' ${platformName()}' : ''}',
          home: T1WalkThrough(),
          theme: !appStore.isDarkModeOn
              ? AppThemeData.lightTheme
              : AppThemeData.darkTheme,
          navigatorKey: navigatorKey,
          scrollBehavior: SBehavior(),
          routes: <String, WidgetBuilder>{
            '/dashboard': (BuildContext context) => T1Dashboard(),
          }),
    );
  }
}
