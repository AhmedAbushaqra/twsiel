import 'package:flutter/material.dart';
import 'package:twsel/Widgets/drawer_widget.dart';
import 'package:twsel/Widgets/personal_card.dart';
import 'package:twsel/Dialogs/profile_Image_view.dart';
import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF3688B8),
        title:Text('الصفحه الشخصيه',style: TextStyle(fontFamily: 'beINBlack',fontSize: 20,fontWeight: FontWeight.bold),) ,
        leading: Icon(Icons.home_outlined,size: 30,color: Colors.white,),
        actions: [
        ],
      ),
      endDrawer: MyDrawer(),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/Untit.png',width: double.infinity,height: MediaQuery.of(context).size.height*0.28,fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Text('عميل موثوق',style: TextStyle(color:Colors.white,fontSize: 18 ),),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30,),
                            child: GestureDetector(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ProfileImage();
                                  },
                                );
                              },
                              child: PinchZoomImage(
                                image: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.asset('assets/path4.png'),
                                  //child: AssetImage('assets/circle1.png',),
                                ),
                                zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                                hideStatusBarWhileZooming: true,
                                onZoomStart: () {
                                  print('Zoom started');
                                },
                                onZoomEnd: () {
                                  print('Zoom finished');
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.brown,),
                                Icon(Icons.star,color: Colors.brown,),
                                Icon(Icons.star_border,color: Colors.brown,),
                                Icon(Icons.star_border,color: Colors.brown,),
                                Icon(Icons.star_border,color: Colors.brown,),
                              ],
                            ),
                          ),
                          Text('خالد محمد صقر',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.only(top: 0),
                  height: 50,
                  width: MediaQuery.of(context).size.width*.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CADC2),
                    border: Border.all(
                      color: Color(0xFF3688B8),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/cado.png',color: Colors.white,width: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Text('0')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('الصفقات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top: 0),
                  height: 50,
                  width: MediaQuery.of(context).size.width*.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CADC2),
                    border: Border.all(
                      color: Color(0xFF3688B8),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/donation.png',color: Colors.white,width: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Text('0')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('الطلبات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            PersonalCard(),
            PersonalCard(),
            PersonalCard()
          ],

        ),
      ) ,
    );
  }
}


