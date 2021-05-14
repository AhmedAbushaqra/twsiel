import 'package:flutter/material.dart';
import 'code_verification_screen.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkbox = true;
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: BottomWaveClipper(),
                  child: Container(
                      width: MediaQuery. of(context).size.width,
                      height: MediaQuery.of(context).size.height*.257,
                    color: Color(0xFF5787A6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left:270 ),
                  child: Text('توصيل مع',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:100,left: 280),
                  child: Image.asset('assets/Icons.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:50,left: 90),
                  child: Image.asset('assets/qwer.png'),
                ),
                 Stack(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 120,left: 30),
                       child: CircleAvatar(
                         radius: 60,
                        backgroundColor: Color(0xFFC9D8E2),
                        backgroundImage: AssetImage('assets/circle1.png'),

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 190,left: 130,),
                       child: Image.asset('assets/camera3.png',color: Color(0xFF5787A6),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 200,top: 180),
                       child: Text('التسجيل',style: TextStyle(color: Color(0xFF5787A6),fontSize: 26,fontWeight: FontWeight.bold),),
                     )


                   ],
                 )

              ],
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 40,right: 40),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'رقم الجوال',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 1,),
                            child: Container(
                              height: 70,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF3688B8),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                child: Icon(Icons.phone,color: Colors.white,)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF5787A6),
                            ),

                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: ' بريدك الالكتروني',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 1,),
                            child: Container(
                                height: 70,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3688B8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.alternate_email,color: Colors.white,)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF5787A6),
                            ),

                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'الاسم المستعار',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 1,),
                            child: Container(
                                height: 70,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3688B8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.person_pin_rounded,color: Colors.white,)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF5787A6),
                            ),

                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'الرقم السري',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 1,),
                            child: Container(
                                height: 70,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF3688B8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.lock,color: Colors.white,)),
                          ),
                          prefixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF5787A6),
                            ),

                          )
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 14),
                        child: Text('لقد اطلعت علي سياسة التطبيق واتعهد بالالتزام بها',style: TextStyle(color: Color( 0xFF5786A5),fontSize: 16),),
                      ),
                      Checkbox(
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ( context) =>CodeVerificationScreen(),
                            )
                        );
                      },
                      color: Color( 0xFF5786A5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text('سجل',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('تخطي التسجيل',style: TextStyle(color: Color(0xFF945F0F),fontWeight:FontWeight.bold ,fontFamily: 'beINNormal ',fontSize: 16),),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {

  @override

  Path getClip(Size size) {

    var path = new Path();

    path.lineTo(0.0, size.height - 40);

    path.quadraticBezierTo(

        size.width / 4, size.height - 170, size.width / 2, size.height - 90);

    path.quadraticBezierTo(size.width - (size.width / 5), size.height,

        size.width, size.height - 30);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;

  }

  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return false;

  }

}
