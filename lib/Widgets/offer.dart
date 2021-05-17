import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 1, color: Colors.black12)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.1),
                              child: Row(
                                children: [
                                  Text(
                                    ' 4 ',
                                    style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Text(
                                      ': رقم الطلب ',
                                      style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'يوسف احمد ناصر',
                              style: TextStyle(
                                  color: Color(0xFF5787A6),
                                  fontFamily: 'beINNormal',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC9D8E2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Text(
                                    'منذ 11 ساعة',
                                    style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20)),
                                      child: Icon(Icons.av_timer)),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.chat_outlined,color: Color(0xFF649A3A),),
                                Text(
                                  'طلب محادثه ',
                                  style: TextStyle(color: Color(0xFF649A3A), fontSize: 16,fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
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
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.yellow,
                              size: 17,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                    color: Color(0xFF3688B8),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.delete_forever,size: 30,color: Colors.white,),
                    Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF3688B8),
                            width: .3,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: Color(0xFF3688B8)),
                        ),
                        onPressed: (){},
                        child: Text('أدخل المفاوضة',style: TextStyle(color: Color(0xFF649A3A),fontWeight: FontWeight.bold,fontSize: 14),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
