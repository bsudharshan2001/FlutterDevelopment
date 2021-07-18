import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage(),

      )
  );
}
class HomePage extends StatefulWidget{
  const HomePage({Key?key}):super(key: key);
  @override
  _HomePageState createState()=>_HomePageState();
}
  class _HomePageState extends State<HomePage>{
  int _currentIndex=0;
  Widget build(BuildContext context){
    List<Widget> _pages=[
      Icon(Icons.home,size: 50,),
      Icon(Icons.search,size: 50,),
      Icon(Icons.shopping_cart,size: 50,)
    ];
   return Scaffold(
     appBar: AppBar(
       title: Text('Bottom Navigation'),
     ),
     body: Container(
       child: Center(
         child: _pages.elementAt(_currentIndex),
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(

       iconSize: 30,
       elevation: 20,
       //backgroundColor: Colors.black87,
       mouseCursor: SystemMouseCursors.grab,
       showSelectedLabels: true,
       showUnselectedLabels: false,
       currentIndex: _currentIndex,
       unselectedItemColor: Colors.white,
       selectedItemColor: Colors.yellow,
       type: BottomNavigationBarType.shifting,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.white,ti),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.white),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart',backgroundColor: Colors.white),
       ],
       onTap:(index){
         setState(() {
           _currentIndex=index;
         });
       }
     ),
   );
  }
}