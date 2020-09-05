import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F5F8),
      body: Column(
        children: [
          mainMenu(),
          SizedBox(
            height: 15.0,
          ),
          walletsSection(),
          SizedBox(
            height: 15.0,
          ),
          cryptoSection(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('History')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        fixedColor: Color(0xFF3153F5),
        onTap: null,
      ),
    );
  }
}

Widget mainMenu() {
  return Container(
    height: 270.0,
    decoration: BoxDecoration(
        gradient: LinearGradient(
      colors: [Color(0xFF2848FF), Color(0xFF3969FC)],
      stops: [0.0, 0.7],
    )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: '\$ ',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                      text: '27,812.',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                    text: '34',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            menuOption(Icons.arrow_downward, 'Receive', 45),
            menuOption(Icons.arrow_upward, 'Send', 45),
            menuOption(Icons.import_export, 'Exchange', 90),
            menuOption(Icons.local_atm, 'Cash out', 0)
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}

Widget menuOption(IconData icon, String title, int angle) {
  return Column(
    children: [
      ClipOval(
        child: Material(
          color: Color(0xFF4F77FC),
          child: InkWell(
            splashColor: Colors.white,
            child: SizedBox(
                width: 70,
                height: 70,
                child: Transform.rotate(
                  angle: angle * pi / 180,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                )),
            onTap: () {},
          ),
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        title,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      )
    ],
  );
}

Widget walletsSection() {
  List<Map<String, dynamic>> walletItemsList = [
    {
      'iconBGcolor': Color(0xFFFA913D),
      'icon': 'BTC',
      'value': '\$13,894.12',
      'rate': '0.028195',
      'imgUrl': 'assets/graphs/graph-one.png'
    },
    {
      'iconBGcolor': Color(0xFF6080DD),
      'icon': 'ETH',
      'value': '\$11,489.21',
      'rate': '2.259',
      'imgUrl': 'assets/graphs/graph-two.png'
    },
  ];

  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
        stops: [0.0, 0.7],
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          headerOfSections('My wallets', 'Empty wallets'),
          Divider(
            color: Colors.grey,
            height: 0.0,
          ),
          Column(
              children:
                  walletItemsList.map((item) => walletItems(item)).toList())
        ],
      ));
}

Widget walletItems(Map<String, dynamic> item) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  item['icon'],
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ),
              backgroundColor: item['iconBGcolor'],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['value'],
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0),
                ),
                Text(
                  item['rate'],
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 120.0,
            ),
            Image(
              width: 70.0,
              image: AssetImage(item['imgUrl']),
            ),
          ],
        ),
      ),
      Divider(
        color: Colors.grey,
        height: 0.0,
      ),
    ],
  );
}

Widget cryptoSection() {
  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
        stops: [0.0, 0.7],
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          headerOfSections('Buy Crypto','Sell Crypto'),
        ],
      ));
}

Widget headerOfSections(String leftOption, String rightOption) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 60.0,
        child: FlatButton(onPressed: null, child: Text(leftOption)),
      ),
      SizedBox(
        height: 60.0,
        child: FlatButton(onPressed: null, child: Text(rightOption)),
      ),
    ],
  );
}
