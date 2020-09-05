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
            height: 10.0,
          ),
          wallets(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text('Home')),
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
                  fontWeight: FontWeight.w500
                  ),
                children: [
                  TextSpan(
                text: '27,812.',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500
                  )
                  ),
                  TextSpan(
                    text: '34',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
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

Widget wallets() {
  return Container(
    height: 200.0,
    decoration: BoxDecoration(
        gradient: LinearGradient(
      colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
      stops: [0.0, 0.7],
    )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
            height: 60.0,
              child: FlatButton(
                onPressed: null,
                child: Text('My wallets')
              ),
            ),
            SizedBox(
            height: 60.0,
              child: FlatButton(
                onPressed: null,
                child: Text('Empty wallets')
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 0.0,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                  child: Text(
                  'BTC',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                ),
              ),
              backgroundColor: Color(0xFFFA913D),
            ),
            Column(
              children: [
                Text(
                  '\$13,894.12',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '0.028195',
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            Image.asset('assets/graphs/graph-one.png'),
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 0.0,
        ),
      ],
    )
  );
}
