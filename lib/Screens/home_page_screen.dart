import 'package:flutter/material.dart';
//import 'package:app_travel/Widgets/drawer_widget.dart';
import 'package:twsel/Widgets/client_drawer2.dart';
import 'package:twsel/Widgets/card_home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  String _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Container(
          margin: EdgeInsets.only(left: 10,top: 5),
          child: Stack(
            children: [
              Icon(Icons.notifications_none,size: 40,),
              Container(
                margin: EdgeInsets.only(left: 25,top: 5),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.white,
                  child: Text('24',style: TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xFF457B9D),
        centerTitle: true,
        title: Text('الرئيسيه',style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'beINBlack   ',fontWeight: FontWeight.bold),),
      ),
      endDrawer: ClientDrawer2(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Color(0xFFC9D8E2),
                height: 40,
                child: ClipRect(
                  child: Container(
                    color: Color(0xFFC9D8E2),
                    height: 100,
                    child: Center(

                      child: Text("مرحبا بكم في تطبيق توصيل مع مسافر     شاهد الشروح من هنا ",style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold,fontFamily: 'beINNormal',letterSpacing: 1.2),),

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF3688B8),
                          width: .3,
                        ),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed: (){},
                      child: Text('الطلبات',style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold,fontSize: 14),),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFF457B9D),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
                      child: DropdownButton(
                        underline: SizedBox(),
                        iconSize: 20.0,
                        icon: Icon(Icons.arrow_drop_down_circle_sharp,color: Colors.white,),
                        iconDisabledColor: Colors.white,
                        hint: _dropDownValue==null?
                        Text('كل المسافرين',
                          style: TextStyle(color: Colors.white),):
                        Text(
                          _dropDownValue,
                          style: TextStyle(color: Colors.white),
                        ),
                        items: [
                          'مسافر بالطلب' ,'مسافر بوقت','مسافر اسبوعي'
                        ].map((val){
                          return DropdownMenuItem<String>(
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF3688B8),
                                ),
                                child: Center(child: Text(val,style: TextStyle(color: Colors.white),))),
                            value: val,
                          );
                        }).toList(),
                        onChanged: (val){
                          setState(() {
                            _dropDownValue=val;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            CardHome(),
            CardHome(),
            CardHome()

          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(

        index: 0,
        height: 50.0,
        items: [
          Padding(
            padding:  EdgeInsets.only(top: 3),
            child: Column(
              children: [
                Icon(Icons.notifications_none, size: 30,color: Color(0xFF3688B8),),
                Text('تنبيهات',style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:3),
            child: Column(
              children: [
                Icon(Icons.search, size: 30,color: Color(0xFF3688B8)),
                Text('ابحث',style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:3),
            child: Column(
              children: [
                Icon(Icons.home, size: 30,color: Color(0xFF3688B8)),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:3),
            child: Column(
              children: [
                Icon(Icons.work_outline, size: 30,color: Color(0xFF3688B8)),
                Text('طلباتي',style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:3),
            child: Column(
              children: [
                Icon(Icons.backpack, size: 30,color: Color(0xFF3688B8)),
                Text('اطلب',style: TextStyle(color: Color(0xFF3688B8),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ],
        color: Color(0xFFC9D8E2),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xFF3688B8),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
