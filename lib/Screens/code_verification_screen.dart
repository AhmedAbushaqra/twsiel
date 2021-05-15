import 'package:flutter/material.dart';
class CodeVerificationScreen  extends StatefulWidget {
  @override
  _CodeVerificationScreenState createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomShapeBorder(),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .42,
                    color: Color(0xFF5787A6),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 60),
                  child: Image.asset('assets/qwer.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90, left: 230),
                  child: Text('توصيل مع', style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170, left: 240),
                  child: Image.asset('assets/Layer6.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170, left: 50),
                  child: Image.asset('assets/Unt5.png', height: 100,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300, left: 90),
                  child: Text('تم ارسال الكود الي الرقم التالي ',
                    style: TextStyle(color: Color(0xFF3688B8),
                        fontFamily: 'beINBlack',
                        fontSize: 20),),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 86, top: 10),
                  child: Icon(Icons.phone_android_outlined, size: 40,
                    color: Color(0xFF3688B8),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Text('336  ** ** ** 68',
                    style: TextStyle(color: Colors.black, fontSize: 18),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40),
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF3688B8),
                        ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF3688B8),
                        ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF3688B8),
                        ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF3688B8),
                        ),
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('اعادة الارسال بعد 120 ثانيه', style: TextStyle(
                  color: Color(0xFF3688B8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'beINBlack'),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text('المحاوله  4  !!  ..  اعد', style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
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
