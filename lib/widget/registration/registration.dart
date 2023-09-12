import 'package:flutter/material.dart';
import 'package:hw_vc_com/resources/resources.dart';

class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Введите номер",
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Ваш номер телефона будет использоваться для входа в аккаунт",
              style: TextStyle(
                color: Color(0Xff818C99),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _PhoneNumberWidget(),
        ],
      ),
    );
  }
}

class _PhoneNumberWidget extends StatefulWidget {
  const _PhoneNumberWidget({super.key});

  @override
  State<_PhoneNumberWidget> createState() => __PhoneNumberWidgetState();
}

class __PhoneNumberWidgetState extends State<_PhoneNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: ('+7'),
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
              onPressed: () {},
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
