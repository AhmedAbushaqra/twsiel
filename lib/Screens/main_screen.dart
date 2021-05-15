import 'package:flutter/material.dart';
import 'package:twsel/Screens/home_page_screen.dart';
import 'package:twsel/Screens/my_request_and_offer_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  bool home=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home==true?HomePage()
            :_page==0?Text('tnbehaat')
            :_page==1?Text('eb7ss')
            :_page==2?MyRequestAndOfferScreen()
            :Text('atlob'),
      bottomNavigationBar: _buildBottomBar(),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          elevation: 1,
          backgroundColor: Color(0xFFC9D8E2),
          child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF5787A6)),
              child: Icon(Icons.home_outlined,size: 30,color: Colors.white,)),
          onPressed: (){
            setState(() {
              home=true;
              _page=0;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Widget _buildBottomBar() {
    return Container(
      height: 80,
      child: BottomAppBar(
        color: Color(0xFFC9D8E2),
        shape: CircularNotchedRectangle(),
        elevation: 1,
        notchMargin: 5,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.notifications_none,size: home?25:30,color: home?Colors.white:Color(0xFF5787A6),),
              icon: Icon(Icons.notifications_none, size: 25,color: Colors.white,),
            title: Text('تنبيهات',style: TextStyle(fontSize: 14),)),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.search,size: 30,color: home?Colors.white:Color(0xFF5787A6),),
                icon: Icon(Icons.search,size: 25,color: Colors.white,),
                title: Text('ابحث',style: TextStyle(fontSize: 14),)),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.card_travel_sharp,size: 30,color: home?Colors.white:Color(0xFF5787A6),),
                icon: Icon(Icons.card_travel_sharp,size: 25,color: Colors.white,),
                title: Text('طلباتي',style: TextStyle(fontSize: 14),)),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.assignment_turned_in_sharp,size: 30,color: home?Colors.white:Color(0xFF5787A6),),
                icon: Icon(Icons.assignment_turned_in_sharp,size: 25 ,color: Colors.white,),
                title: Text('اطلب',style: TextStyle(fontSize: 14),)),
          ],
          selectedItemColor: home?Colors.white:Color(0xFF3688B8),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFFC9D8E2).withOpacity(0.2),
          selectedLabelStyle: TextStyle(color: Color(0xFF5787A6),fontWeight: FontWeight.bold,fontSize: 16.0,fontFamily: 'beINNormal'),
          unselectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'beINNormal'),
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          onTap: (index) {
            setState(() {
              _page = index;
              home=false;
            });
          },
        ),
      ),
    );
  }
}
