import 'package:flutter/material.dart';
import 'code_verification_screen.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkbox = false;
  // bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.35,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BottomWaveClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: height*0.1,right: width*0.05),
                      width: MediaQuery. of(context).size.width,
                      height: height*0.3,
                      color: Color(0xFF5787A6),
                      child: Stack(
                        textDirection: TextDirection.rtl,
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('توصيل مع',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                                Image.asset('assets/Icons.png'),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20.0,
                              top: 0.0,
                              child: GestureDetector(
                                onTap: ()=> Navigator.pop(context),
                                  child: Image.asset('assets/qwer.png'))),

                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 50.0,
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            width: 105,
                            height: 105,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFF5787A6)),
                            ),
                          ),
                          Positioned(
                            bottom: 10.0,
                            right: 0.0,
                            child: Container(
                                width: 25,
                                height: 25,
                                // color: Colors.red,
                                child: Icon(Icons.cloud_upload,color: Color(0xFF5787A6),size: 40,)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: height*0.02,
                      left: width*0.5,
                      child: Center(child: Text('التسجيل',style: TextStyle(color: Color(0xFF5787A6),fontSize: 26,fontWeight: FontWeight.bold),))),
                ],
              ),
            ),
            SizedBox(height: height*0.05,),
            Container(
              height: height*0.55,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.05,vertical: 10.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width*0.2,
                            height: height*0.07,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: '+966',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xFF5787A6),
                                    ),

                                  )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width*0.65,
                            height: height*0.07,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  hintText: 'رقم الجوال',
                                  suffixIcon: Container(
                                      height: height*0.07,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF3688B8),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(Icons.phone,color: Colors.white,)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xFF5787A6),
                                    ),

                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      SizedBox(
                        height: height*0.07,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              hintText: ' بريدك الالكتروني',
                              suffixIcon: Container(
                                  height: height*0.07,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF3688B8),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.alternate_email,color: Colors.white,)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Color(0xFF5787A6),
                                ),

                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      SizedBox(
                        height: height*0.07,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              hintText: 'الاسم المستعار',
                              suffixIcon: Container(
                                  height: height*0.07,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF3688B8),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.person_pin_rounded,color: Colors.white,)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Color(0xFF5787A6),
                                ),

                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      SizedBox(
                        height: height*0.07,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              hintText: 'الرقم السري',
                              suffixIcon: Container(
                                  height: height*0.07,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF3688B8),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.lock,color: Colors.white,)),
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
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Text('لقد اطلعت علي سياسة التطبيق واتعهد بالالتزام بها',style: TextStyle(color: Color( 0xFF5786A5),fontSize: 16),),
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
                      RaisedButton(
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
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('سجل',style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                      SizedBox(height: 10.0,),
                      Text('تخطي التسجيل',style: TextStyle(color: Color(0xFF945F0F),fontWeight:FontWeight.bold ,fontFamily: 'beINNormal ',fontSize: 16),)
                    ],
                  ),
                ),
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
