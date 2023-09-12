import 'package:flutter/material.dart';
import 'package:hw_vc_com/resources/resources.dart';

class AuthWithPhoneWidget extends StatefulWidget {
  const AuthWithPhoneWidget({super.key});

  @override
  State<AuthWithPhoneWidget> createState() => _AuthWithPhoneWidgetState();
}

class _AuthWithPhoneWidgetState extends State<AuthWithPhoneWidget> {
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
          'Вход ВКонтакте',
          style: TextStyle(color: Colors.black, fontSize: 21),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Введите телефон или почту, которые привзаны к аккаунту',
          style: TextStyle(
            color: Color(0xFF818C99),
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
        _FormPhoneWidget(),
      ]),
    );
  }
}

class _FormPhoneWidget extends StatefulWidget {
  const _FormPhoneWidget({super.key});

  @override
  State<_FormPhoneWidget> createState() => __FormPhoneWidgetState();
}

class __FormPhoneWidgetState extends State<_FormPhoneWidget> {
  final _loginTextController = TextEditingController();
  String? errorText = null;
  void _authnumberoremail() {
    final login = _loginTextController.text;
    if ((login == '87074604059') ^ (login == 'akimzhankurbanov@mail.ru')) {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator.pushNamed('/auth_password_screen');
    } else {
      errorText = 'Не верный пароль или логин';
    }
    setState(() {});
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
            controller: _loginTextController,
            decoration: InputDecoration(
                hintText: ('Телефон или почта'),
                filled: true,
                fillColor: Color.fromARGB(193, 240, 239, 239),
                labelStyle: TextStyle(color: Color(0Xff818C99)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF2D81E0))),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                isCollapsed: true),
          ),
          SizedBox(
            height: 5,
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
              Checkbox(
                value: false,
                onChanged: ((value) {}),
              ),
              Text(
                'Сохранить вход',
                style: TextStyle(color: Color(0Xff818C99)),
              ),
              Icon(
                Icons.help,
                color: Color(0Xff818C99),
                size: 15,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            width: double.infinity,
            height: 36,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2D81E0)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
                _authnumberoremail();
              },
              child: Text(
                'Продолжить',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //Вы принимаете пользовательсое соглашение и политику конфиденциальности - это переделать в ссылку и цвет поменять на 6D7885
          Text(
            'Нажимая "Продолжить", Вы принимаете пользовательсое соглашение и политику конфиденциальности',
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF99A2AD),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
