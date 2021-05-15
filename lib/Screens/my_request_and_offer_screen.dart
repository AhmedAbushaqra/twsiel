import 'package:flutter/material.dart';
import 'package:twsel/Widgets/drawer_widget.dart';
import 'package:twsel/Widgets/myrequest.dart';

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
            _firstPage?
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    ' جميع طلباتك',
                    style: TextStyle(color:Color(0xFF3688B8),fontWeight: FontWeight.bold,fontSize: 23,),
                    textAlign: TextAlign.end,
                  ),
                ),
            MyRequest(),
              ],
            ):Center(
              child: Text('العروض'),
            ),
          ],
        ),
      ),
    );
  }
}

