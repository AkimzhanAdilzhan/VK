import 'package:flutter/material.dart';
import 'package:hw_vc_com/widget/auth/auth.dart';
import 'package:hw_vc_com/widget/auth/auth_password_screen.dart';
import 'package:hw_vc_com/widget/auth/auth_with_phone.dart';
import 'package:hw_vc_com/widget/gotoAppStore/app_store.dart';
import 'package:hw_vc_com/widget/main_screen/main_screen.dart';
import 'package:hw_vc_com/widget/registration/registration.dart';
import 'package:hw_vc_com/widget/restore/restore_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFFFFFFFF))),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/auth_with_phone': (context) => AuthWithPhoneWidget(),
        '/auth_password_screen': (context) => AuthPasswordWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/app_store': (context) => AppStoreWidget(),
        '/restore_password': (context) => RestorPasswordWidgwt(),
        '/registration': (context) => RegistrationWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
