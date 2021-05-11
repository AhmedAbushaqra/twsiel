import 'package:flutter/material.dart';
//import 'package:app_travel/Screens/sign_in_screen.dart';
class ClientDrawer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF3688B8)

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 240),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFF3688B5),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170,left: 170),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/path6.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star,color: Colors.brown,),
                    Icon(Icons.star,color: Colors.brown,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),

                  ],

                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 150,left: 60),
                  child: Text(' توصيل مع  ',style: TextStyle(color: Colors.white,fontSize: 20),)
              ),
            ],
          ),



          ListTile(
            leading: Icon(Icons.share),
          ),
          ListTile(
            leading : Icon(Icons.navigate_before),
            title: Container(
                margin: EdgeInsets.only(left: 60),
                child: Text('الصفحه الرئيسيه',style: TextStyle(color: Color(0xFF3688B8),fontSize: 16,fontWeight: FontWeight.bold),)),
            trailing: Icon(Icons.home_outlined,color: Color(0xFF3688B8),size: 30,),

          ),
          ListTile(
            leading : Icon(Icons.navigate_before),
            trailing: Icon(Icons.email_sharp,color: Color(0xFF3688B8),size: 30),
            title: Container(
                margin: EdgeInsets.only(left: 60),
                child: Text('خدمة العملاء',style: TextStyle(color: Color(0xFF3688B8),fontSize: 15,fontWeight: FontWeight.bold))),
          ),
          ListTile(
            leading: Icon(Icons.navigate_before),
            trailing: Icon(Icons.event_note_sharp,color: Color(0xFF3688B8),size: 30),
            title: Container(
                margin: EdgeInsets.only(left: 60),
                child: Text('االشروط والسياسة',style: TextStyle(color: Color(0xFF3688B8),fontSize: 15,fontWeight: FontWeight.bold))),
          ),
          GestureDetector(
            onTap: (){
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ( context) =>SignInScreen()
                  )
              );*/
            },
            child: ListTile(
              leading: Icon(Icons.navigate_before),
              trailing: Icon(Icons.logout,color: Color(0xFF3688B8),size: 30),
              title: Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Text(' دخول التطبيق',style: TextStyle(color: Color(0xFF3688B8),fontSize: 15,fontWeight: FontWeight.bold))),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 160,
                height: 50,
                margin: EdgeInsets.only(left: 80),
                child: RaisedButton(
                  color: Color(0xFF638462),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  onPressed: (){},
                  child: Text('دخول المسافر',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 220),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/path6.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(100, 0, 100, 0);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
