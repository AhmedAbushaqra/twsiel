import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child:Image.asset('assets/temporaryimg7.png',height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
