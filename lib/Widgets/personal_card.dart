import 'package:flutter/material.dart';
class PersonalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10)),
            side: BorderSide(width: 2, color: Colors.black12)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF3688B8),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF3688B8),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15,left: 30),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                              Icon(Icons.star_border,color: Colors.white,size: 15,),
                              Icon(Icons.star_border,color: Colors.white,size: 15,),
                              Icon(Icons.star_border,color: Colors.white,size: 15,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44,top: 8),
                          child: Text('40%',style: TextStyle(color: Colors.white),),
                        )
                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 9,right: 7),
                      child: Column(
                        children: [
                          Text('اسم المسافر',style: TextStyle(color: Colors.white,fontSize: 17),),
                          Text('رقم الرحله',style: TextStyle(color: Colors.white,fontSize: 15)),

                        ],

                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/circle1.png',),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFC9D8E2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF3688B8),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "لا يوجد تعليق",
                    style: TextStyle(fontSize: 18,color: Colors.black54,),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

