import 'package:flutter/material.dart';
import 'package:hw_vc_com/resources/resources.dart';

class AuthPasswordWidget extends StatefulWidget {
  const AuthPasswordWidget({super.key});

  @override
  State<AuthPasswordWidget> createState() => _AuthPasswordWidgetState();
}

class _AuthPasswordWidgetState extends State<AuthPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppImages.smallLogoVk),
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 20,
                child: Text(
                  "ID",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 15,
        ),
        Text(
          'Введите пароль',
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Введите ваш текущий пароль, привязанный к данному аккаунту',
          style: TextStyle(
            color: Color(0xFF818C99),
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
        _FormPassWidget(),
      ]),
    );
  }
}

class _FormPassWidget extends StatefulWidget {
  const _FormPassWidget({super.key});

  @override
  State<_FormPassWidget> createState() => __FormPassWidgetState();
}

class __FormPassWidgetState extends State<_FormPassWidget> {
  final _passwordTextController = TextEditingController();
  String? errorText = null;
  void _authpass() {
    final password = _passwordTextController.text;
    if (password == 'admin') {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator.pushNamed('/main_screen');
    } else {
      errorText = 'Не верный пароль или логин';
    }
    setState(() {});
  }

  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _passwordTextController,
            obscureText: passwordVisible,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                filled: true,
                fillColor: Color.fromARGB(193, 240, 239, 239),
                hintText: ('Введите пароль'),
                labelStyle: TextStyle(color: Color(0Xff818C99)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF2D81E0))),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                isCollapsed: true),
          ),
          SizedBox(
            height: 10,
          ),
          if (errorText != null) ...[
            Text(
              errorText,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/restore_password');
                },
                child: Text(
                  'Забыли или не установили пароль ?',
                  style: TextStyle(
                      color: Color(0Xff2D81E0),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 36,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2D81E0)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
                _authpass();
              },
              child: Text(
                'Продолжить',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
