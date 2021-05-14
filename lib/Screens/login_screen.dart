import 'package:twsel/Widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:twsel/Screens/register.dart';
import 'dart:math'as math;
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity( //semi red clippath with more height and with 0.5 opacity
                  opacity: 0.5,
                  child: ClipPath(
                    clipper:WaveClipper(), //set our custom wave clipper
                    child:Container(
                      color:Color(0xFF5786A5),
                      height:200,
                    ),
                  ),
                ),
                ClipPath(  //upper clippath with less height
                  clipper:WaveClipper(), //set our custom wave clipper.
                  child:Container(
                      padding: EdgeInsets.only(bottom: 50),
                      color:Color(0xFF5786A5),
                      height:180,
                      alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('مرحبا بك',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),),
                ),
        ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(right: 4),
              child: Text('دخول',style: TextStyle(color: Color(0xFF5786A5),fontSize: 35,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image(image: AssetImage('images/facebook.png',),width: 30,height: 30,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image(image: AssetImage('images/twitter.png',),width: 30,height: 30,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orangeAccent.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 9,
                            offset: Offset(0, 2),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image(image: AssetImage('images/search.png',),width: 30,height: 30,),
                  ),

                ],
              ),
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 60,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: 'رقم جوالك أوايميلك',
                            suffixIcon: Icon(Icons.perm_identity_sharp,color: Colors.black54,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),

                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 60,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: 'الرقم السري',
                            suffixIcon: Icon(Icons.lock,color: Colors.black54,),
                            prefixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black54,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('نسيت كلمة المرور',style: TextStyle(color: Color(0xFF5786A5),fontWeight: FontWeight.bold,fontSize: 20),),
                          Icon(Icons.lock,)
                        ],
                      ),
                      margin: EdgeInsets.only(right:25 ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RaisedButton(
                      onPressed: (){},
                      color: Color( 0xFF5786A5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular (20,),bottomLeft: Radius.circular(20))
                      ),
                      child: Text('تسجيل الدخول',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ( context) =>Register()
                              )
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text('حساب جديد',style: TextStyle(color: Color( 0xFF5786A5),fontSize: 16),),
                        ),
                      ),
                      Icon(Icons.person_outline)
                    ],
                  ),
                  FlatButton(onPressed: (){}, child: Text('تخطى التسجيل',style: TextStyle(fontSize: 20,color:Color(0xffBB9701)),))
                ],
              ),
            )
          ],
        ),
      ) ,
      endDrawer: MyDrawer(),


    );
  }
}
//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    //var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    //var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(size.width / 4, size.height - 80, size.width / 2, size.height - 40);

   // var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    //var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(size.width - (size.width / 4), size.height, size.width, size.height - 40);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
