import 'package:flutter/material.dart';
import 'package:hw_vc_com/resources/resources.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage(AppImages.vklogo),
          width: 136,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _DownloadMobileApp(),
          SizedBox(
            height: 15,
          ),
          _FormWidget(),
          SizedBox(
            height: 15,
          ),
          _Registration(),
          SizedBox(
            height: 5,
          ),
          _TextButtonWidget(),
        ],
      ),
      backgroundColor: Color(0xFFEBEDF0),
    );
  }
}

class _DownloadMobileApp extends StatefulWidget {
  const _DownloadMobileApp({super.key});

  @override
  State<_DownloadMobileApp> createState() => __DownloadMobileAppState();
}

class __DownloadMobileAppState extends State<_DownloadMobileApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15))),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/app_store');
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.phone_iphone,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Установить приложение ВКонтакте',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2D81E0),
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Вход ВКонтактe',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Мобильная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера.',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF99A2AD),
              ),
              maxLines: 3,
            ),
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
                Navigator.of(context).pushNamed('/auth_with_phone');
              },
              child: Text(
                'Войти по телефону или почте',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Registration extends StatelessWidget {
  const _Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(369, 40)),
            backgroundColor: MaterialStateProperty.all(Color(0xFF4BB34B)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        onPressed: () {
          Navigator.of(context).pushNamed('/registration');
        },
        child: Text(
          'Зарегистироваться',
        ),
      ),
    );
  }
}

class _TextButtonWidget extends StatelessWidget {
  final textstyle = const TextStyle(
      fontSize: 14, color: Color(0xFF818C99), fontWeight: FontWeight.w400);
  const _TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Украинский',
                    style: textstyle,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'English',
                    style: textstyle,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'all languages >>',
                    style: textstyle,
                  )),
            ],
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Версия для компьютера',
                style: textstyle,
              ))
        ],
      ),
    );
  }
}
