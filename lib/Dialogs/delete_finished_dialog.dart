import 'package:flutter/material.dart';
class DeleteFinishedDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
            backgroundColor: Color(0xff8CADC2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)
            ),
            child: Container(
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color:  Color(0xff8CADC2),
                  border: Border.all(
                      color: Color(0xFF90AC7A)
                  )
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    margin: EdgeInsets.only(top: 50,bottom: 50,left: 10,right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.black
                        )
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.1,
                              width: 100,
                              child: Image.asset(
                                'assets/recyclerpin.png',
                                //color: Color(0xFF5787A6),
                                width: 6,
                              ),
                            ),
                          ),
                          Text('سوف يتم مسح المنتهي والملغي',style: TextStyle(color: Color(0xFF5787A6),fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            margin: EdgeInsets.only(top: 20,),
                            width: 150,
                            child: RaisedButton(
                              color: Color(0xFF5787A6),
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text(' تـأكيد',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
        Padding(
          padding:EdgeInsets.only(top: 260,left: 50),
          child: SizedBox.fromSize(
            size: Size(40, 40),
            child: ClipOval(
              child:Material(
                color: Color(0xFF5787A6),
                child: IconButton(
                  icon: Icon(Icons.clear,color: Colors.white,size: 20,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
