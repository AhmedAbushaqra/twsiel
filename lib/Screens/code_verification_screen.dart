import 'package:flutter/material.dart';
class CodeVerificationScreen  extends StatefulWidget {
  @override
  _CodeVerificationScreenState createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.35,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CustomShapeBorder(),
                    child: Container(
                      width: width,
                      color: Color(0xFF5787A6),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: height*0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: ()=> Navigator.pop(context),
                                child: Image.asset('assets/qwer.png')),
                            Text('توصيل مع', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),),
                          ],
                        ),
                        Image.asset('assets/Layer6.png'),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                      left: 50.0,
                      child: Image.asset('assets/Unt5.png', height: 100,)),
                ],
              ),
            ),
            Container(
              height: height*0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('تم ارسال الكود الي الرقم التالي ',
                  style: TextStyle(color: Color(0xFF3688B8),
                      fontFamily: 'beINBlack',
                      fontSize: 20),),
                  Container(
                    width: width*0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.phone_android_outlined, size: 40,
                          color: Color(0xFF3688B8),),
                        Text('336  ** ** ** 68',
                          style: TextStyle(color: Colors.black, fontSize: 18),)
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFF5787A6),
                                  ),

                                )
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFF5787A6),
                                  ),

                                )
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFF5787A6),
                                  ),

                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.6,
                    height: height*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('اعادة الارسال بعد 120 ثانيه', style: TextStyle(
                            color: Color(0xFF3688B8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'beINBlack'),),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xFF5786A5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: GestureDetector(
                          onTap: () {
                            /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ( context) =>PersonalPageScreen3(),
                          ),
                      );*/
                          },
                          child: Text('تفعيل',
                            style: TextStyle(color: Colors.white, fontSize: 18),)),
                    ),
                  ),
                  Text('المحاوله  4  !!  ..  اعد',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomShapeBorder extends CustomClipper<Path>{


  @override

  Path getClip(Size size) {

    var path = new Path();

    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width /6, size.height - 250, size.width / 2.39, size.height -150);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height -200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
