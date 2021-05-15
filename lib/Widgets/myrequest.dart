import 'package:flutter/material.dart';

class MyRequest extends StatefulWidget {
  @override
  _MyRequestState createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: Colors.black12)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.23,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
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
                        Row(
                          children: [
                            Row(
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:40),
                                  child: Text(
                                    'الرياض',
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
                            Container(
                              width: MediaQuery.of(context).size.width*0.32,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC9D8E2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'مطلوب شراء و توصيل ',
                                style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                              padding: EdgeInsets.only(left:25),
                              child: Row(
                                children: [
                                  Text('ينتهى الطلب خلال   ',
                                      style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold)),
                                  Icon(Icons.access_time,color: Color(0xFF5787A6),size: 17,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
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
                    Icon(Icons.assignment_outlined,size: 30,color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        height: MediaQuery.of(context).size.height*0.045,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'تعديل ',
                          style: TextStyle(color: Color(0xFF5787A6), fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        height: MediaQuery.of(context).size.height*0.045,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                       child: Text(
                        'فعال ',
                        style: TextStyle(color: Color(0xFF5787A6), fontSize: 17,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
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
