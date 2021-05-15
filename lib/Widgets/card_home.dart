//import 'package:app_travel/Screens/main_chat_screen.dart';
import 'package:twsel/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  @override
  _CardHome createState() => _CardHome();
}

class _CardHome extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 15),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            side: BorderSide(width: 1, color: Colors.black12)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffDEDADA)),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Transform.translate(
                        offset:Offset(70,0),
                        child: Row(
                          children: [
                            Text(
                              'يوسف احمد ناصر',
                              style: TextStyle(
                                  color: Color(0xFF5787A6),
                                  fontFamily: 'beINNormal',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Image.asset(
                              'assets/flag8.png',
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(20,0),
                        child: Row(
                          children: [
                            Container(
                              //margin:EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'المدينه المنوره',
                                    style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset(
                                    'assets/qwer.png',
                                    color: Color(0xFF5787A6),
                                    width: 6,
                                  ),
                                  Text(
                                    ' جده',
                                    style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset(
                                    'assets/qwer.png',
                                    color: Color(0xFF5787A6),
                                    width: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Text(
                                      ' الرياض',
                                      style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Image.asset(
                                      'assets/qwer.png',
                                      color: Color(0xFF5787A6),
                                      width: 6,
                                    ),
                                  ),
                                  Text(
                                    ' الدمام',
                                    style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Color(0xFF5787A6),
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(25,0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFC9D8E2),
                              radius: 13,
                              child: Column(
                                children: [
                                  Text(
                                    'ثانيه',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                                  ),
                                  Text('60',
                                      style: TextStyle(
                                          color: Color(0xFF5787A6), fontSize: 8))
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFC9D8E2),
                              radius: 13,
                              child: Column(
                                children: [
                                  Text(
                                    'دقيقه',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                                  ),
                                  Text('60',
                                      style: TextStyle(
                                          color: Color(0xFF5787A6), fontSize: 8))
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFC9D8E2),
                              radius: 13,
                              child: Column(
                                children: [
                                  Text(
                                    'ساعه',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                                  ),
                                  Text('60',
                                      style: TextStyle(
                                          color: Color(0xFF5787A6), fontSize: 8))
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFC9D8E2),
                              radius: 13,
                              child: Column(
                                children: [
                                  Text(
                                    'يوم',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                                  ),
                                  Text('60',
                                      style: TextStyle(
                                          color: Color(0xFF5787A6), fontSize: 8)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:25),
                              child: Text('متبقي علي السفر',
                                  style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:25),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/circle1.png',),
                              backgroundColor: Colors.grey.shade50,
                            ),
                            Transform.translate(
                                offset: Offset(5,50),
                                child: Image.asset('assets/logo18.png')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.yellow,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.translate(
                offset: Offset(0,3),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF5787A6),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Transform.translate(
                          offset:Offset(10,-100),
                          child: Container(
                            height: 30,
                            decoration:BoxDecoration(
                              color: Color(0xff8CADC2),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/istoc1.png',
                                  width: 20,
                                  height: 20,
                                  color: Color(0xFFC9D8E2),
                                ),
                                Text(
                                  'مسافر بالطلب',
                                  style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event_note_sharp,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.share, color: Colors.white),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 45),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 1),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ( context) => LoginScreen()
                                        )
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Text(
                                        'تفاوض الان',
                                        style: TextStyle(
                                            color: Color(0xFF5787A6),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Image.asset(
                                        'assets/next.png',
                                        width: 10,
                                        color: Color(0xFF5787A6),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
