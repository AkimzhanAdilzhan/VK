import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hw_vc_com/resources/resources.dart';

class AppStoreWidget extends StatefulWidget {
  const AppStoreWidget({super.key});

  @override
  State<AppStoreWidget> createState() => _AppStoreWidgetState();
}

class _AppStoreWidgetState extends State<AppStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(AppImages.googlePlayLogo),
                width: 167,
              ),
              Container(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.help,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.person_rounded,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          _VkHeaderWidget(),
          SizedBox(
            height: 20,
          ),
          _ButtonWidget()
        ],
      ),
    );
  }
}

class _VkHeaderWidget extends StatelessWidget {
  const _VkHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(AppImages.smallLogoVk),
                width: 72,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ВКонтакте: сообщения \nв соцсети",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "VK.com",
                    style: TextStyle(
                        color: Color(0xFF01875F),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text('Есть реклама * Покупки в приложении *',
                          style: TextStyle(
                            color: Color(0xFF5F6368),
                            fontSize: 12,
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Text(
                      '3,9',
                      style: TextStyle(
                          color: Color(0xFF202124),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '8,69 млн отзывов',
                      style: TextStyle(
                        color: Color(0xFF5F6368),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                VerticalDivider(),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '100 млн +',
                      style: TextStyle(
                          color: Color(0xFF202124),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Количество скачиваний',
                      style: TextStyle(
                        color: Color(0xFF5F6368),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                VerticalDivider(),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '12 +',
                      style: TextStyle(
                          color: Color(0xFF202124),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '12 +',
                      style: TextStyle(
                        color: Color(0xFF5F6368),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ButtonWidget extends StatefulWidget {
  const _ButtonWidget({super.key});

  @override
  State<_ButtonWidget> createState() => __ButtonWidgetState();
}

class __ButtonWidgetState extends State<_ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFF01875F),
          ),
          minimumSize: MaterialStateProperty.all(
            Size(345, 40),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Установить",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
