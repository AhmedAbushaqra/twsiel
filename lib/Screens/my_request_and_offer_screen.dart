import 'package:flutter/material.dart';
import 'package:twsel/Widgets/drawer_widget.dart';

class MyRequestAndOfferScreen extends StatefulWidget {
  @override
  _MyRequestAndOfferScreenState createState() => _MyRequestAndOfferScreenState();
}

class _MyRequestAndOfferScreenState extends State<MyRequestAndOfferScreen> {

  bool _firstPage = true;
  String _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading:Padding(
          padding:  EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Icon(Icons.home_outlined,size: 35,),
            ],
          ),
        ),
        backgroundColor: Color(0xFF3688B8),
        centerTitle: true,
        title: Text(' طلباتي',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'beINBlack  ',fontWeight: FontWeight.bold),),
      ),
      endDrawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
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
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFF3688B8)),
                      ),
                      onPressed: (){},
                      child: Text('احذف المنتهي',style: TextStyle(color: Color(0xFF9DA617),fontWeight: FontWeight.bold,fontSize: 14),),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF3688B8),
                          width: .3,
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: RaisedButton(
                      color: _firstPage?Color(0xFF3688B8):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color(0xFF3688B8)),
                      ),
                      onPressed: (){
                        setState(() {
                          _firstPage=true;
                        });
                      },
                      child: Text('طلباتى',style: TextStyle(color: _firstPage?Colors.white:Color(0xFF3688B8),fontWeight: FontWeight.bold,fontSize: 14),),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF3688B8),
                          width: .3,
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: RaisedButton(
                      color: _firstPage?Colors.white:Color(0xFF3688B8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFF3688B8)),
                      ),
                      onPressed: (){
                        setState(() {
                          _firstPage=false;
                        });
                      },
                      child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_outlined,color: Colors.red,),
                        Text(' العروض',style: TextStyle(color: _firstPage?Color(0xFF3688B8):Colors.white,fontWeight: FontWeight.bold,fontSize: 13,),),

                      ],
                    ),
                  )
      ),
                ],
              ),
            ),
           /* Padding(
              padding: const EdgeInsets.all(8.0),
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
                                      margin:EdgeInsets.only(left: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:EdgeInsets.only(right: 14),
                                            child: Text(
                                              ' رقم الطلب:12',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            ' جده',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Image.asset(
                                            'assets/qwer.png',
                                            color: Color(0xFF638462),
                                            width: 6,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text(
                                              ' الرياض',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Image.asset(
                                              'assets/qwer.png',
                                              color: Color(0xFF638462),
                                              width: 6,
                                            ),
                                          ),
                                          Text(
                                            ' الدمام',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0xFF638462),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset:Offset(10,0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:3),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF5787A6),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:5),
                                            child: Text('منذ 11 ساعه',style: TextStyle(color: Colors.white),),
                                          ),
                                          Icon(Icons.access_time,size: 20,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      child: RaisedButton(
                                        color: Color(0xFF5787A6),
                                        onPressed: (){},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide.none
                                        ),
                                        child: Text(
                                          ' مطلوب توصيل طلب ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'beINNormal',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(25,5),
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8)),
                                        ],
                                      ),
                                    ),
                                    Text(' ينتهي الطلب خلال ',
                                        style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(left:25),
                                      child: Icon(Icons.hourglass_empty,size: 15,color: Color(0xFF829B81),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:40),
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 45,
                                      backgroundImage: AssetImage('assets/circle1.png',),
                                      backgroundColor: Colors.grey.shade50,
                                    ),
                                    Transform.translate(
                                        offset: Offset(5,65),
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
                        offset: Offset(0,10),
                        child: Container(
                          height: 40,
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
                                Icon(Icons.delete_forever_sharp,color: Colors.white,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.event_note_sharp,
                                      color: Colors.white,
                                    ),

                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 1),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text(
                                            ' تعديل ',
                                            style: TextStyle(
                                                color: Color(0xFF3688B8),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 1),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text(
                                            ' فعال ',
                                            style: TextStyle(
                                                color: Color(0xFF3688B8),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),*/
           /* Padding(
              padding: const EdgeInsets.all(5.0),
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
                                      margin:EdgeInsets.only(left: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:EdgeInsets.only(right: 14),
                                            child: Text(
                                              ' رقم الطلب:12',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            ' جده',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Image.asset(
                                            'assets/qwer.png',
                                            color: Color(0xFF638462),
                                            width: 6,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text(
                                              ' الرياض',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Image.asset(
                                              'assets/qwer.png',
                                              color: Color(0xFF638462),
                                              width: 6,
                                            ),
                                          ),
                                          Text(
                                            ' الدمام',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0xFF638462),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset:Offset(10,0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:3),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF5787A6),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:5),
                                            child: Text('منذ 11 ساعه',style: TextStyle(color: Colors.white),),
                                          ),
                                          Icon(Icons.access_time,size: 20,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      child: RaisedButton(
                                        color: Color(0xFF5787A6),
                                        onPressed: (){},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide.none
                                        ),
                                        child: Text(
                                          ' مطلوب توصيل طلب ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'beINNormal',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(25,5),
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8)),
                                        ],
                                      ),
                                    ),
                                    Text(' ينتهي الطلب خلال ',
                                        style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(left:25),
                                      child: Icon(Icons.hourglass_empty,size: 15,color: Color(0xFF829B81),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:40),
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 45,
                                      backgroundImage: AssetImage('assets/circle1.png',),
                                      backgroundColor: Colors.grey.shade50,
                                    ),
                                    Transform.translate(
                                        offset: Offset(5,65),
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
                        offset: Offset(0,10),
                        child: Container(
                          height: 40,
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
                                Icon(Icons.delete_forever_sharp,color: Colors.white,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.event_note_sharp,
                                      color: Colors.white,
                                    ),

                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 20),
                                    child: Icon(Icons.monetization_on_outlined,color: Colors.white,)
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 20),
                                    child: Icon(Icons.chat_bubble_outlined,color: Colors.white,)
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 1),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text(
                                            'معلق ',
                                            style: TextStyle(
                                                color: Color(0xFF5787A6),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),*/
           /* Padding(
              padding: const EdgeInsets.all(8.0),
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
                                      margin:EdgeInsets.only(left: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:EdgeInsets.only(right: 14),
                                            child: Text(
                                              ' رقم الطلب:12',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            ' جده',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Image.asset(
                                            'assets/qwer.png',
                                            color: Color(0xFF638462),
                                            width: 6,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text(
                                              ' الرياض',
                                              style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Image.asset(
                                              'assets/qwer.png',
                                              color: Color(0xFF638462),
                                              width: 6,
                                            ),
                                          ),
                                          Text(
                                            ' الدمام',
                                            style: TextStyle(color: Color(0xFF638462), fontSize: 12,fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0xFF638462),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset:Offset(10,0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right:3),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF5787A6),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:5),
                                            child: Text('منذ 11 ساعه',style: TextStyle(color: Colors.white),),
                                          ),
                                          Icon(Icons.access_time,size: 20,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      child: RaisedButton(
                                        color: Color(0xFF5787A6),
                                        onPressed: (){},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide.none
                                        ),
                                        child: Text(
                                          ' مطلوب توصيل طلب ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'beINNormal',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(25,5),
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8))
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
                                                  color: Colors.white, fontSize: 8)),
                                        ],
                                      ),
                                    ),
                                    Text(' ينتهي الطلب خلال ',
                                        style: TextStyle(color: Color(0xFF5787A6), fontSize: 12,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(left:25),
                                      child: Icon(Icons.hourglass_empty,size: 15,color: Color(0xFF829B81),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:40),
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 45,
                                      backgroundImage: AssetImage('assets/circle1.png',),
                                      backgroundColor: Colors.grey.shade50,
                                    ),
                                    Transform.translate(
                                        offset: Offset(5,65),
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
                        offset: Offset(0,10),
                        child: Container(
                          height: 40,
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
                                Icon(Icons.delete_forever_sharp,color: Colors.white,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.event_note_sharp,
                                      color: Colors.white,
                                    ),

                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 20),
                                    child: Icon(Icons.monetization_on_outlined,color: Colors.white,)
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 20),
                                    child: Icon(Icons.chat_bubble_outlined,color: Colors.white,)
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 1),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text(
                                            'معلق ',
                                            style: TextStyle(
                                                color: Color(0xFF5787A6),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )*/
            // CardHome(),
            // CardHome(),
            // CardHome()

          ],
        ),
      ),
    );
  }
}

