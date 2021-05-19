import 'package:flutter/material.dart';
import 'package:twsel/Screens/personal_page_screen.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Color(0xFF3688B8)

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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

          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFF3688B5),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),
                    )
                ),

              ),
              Positioned(
                bottom: 3,
                right: 40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/person.jpeg'),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.share),
          ),
          ListTile(
            leading : Icon(Icons.navigate_before),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('الصفحه الرئيسيه'),
            ),
            trailing: Icon(Icons.home_outlined),
            onTap: (){
            },
          ),
          ListTile(
            leading : Icon(Icons.navigate_before),
            trailing: Icon(Icons.person),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('الصفحه الشخصيه'),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ( context) => PersonalScreen()
                  )
              );
            },
          ),
          ListTile(
            leading  : Icon(Icons.navigate_before),
            trailing: Icon(Icons.admin_panel_settings_rounded),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('الخزنة والرصيد'),
            ),
          ),
          ListTile(
            leading : Icon(Icons.navigate_before),
            trailing: Icon(Icons.email_sharp),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('خدمة العملاء'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.navigate_before),
            trailing: Icon(Icons.event_note_sharp),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('االشروط والسياسة'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.navigate_before),
            trailing: Icon(Icons.logout),
            title: Padding(
              padding: const EdgeInsets.only(left: 99),
              child: Text('خروج من'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 150,
                child: RaisedButton(
                  color: Color(0xFF3688B8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('دخول',style: TextStyle(color: Colors.white),),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('images/person.jpeg'),
                      )
                    ],
                  ),
                ),
              ),
            ),
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
