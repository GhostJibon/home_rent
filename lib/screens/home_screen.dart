import 'package:flutter/material.dart';
import 'package:home_rent/screens_files/home_screen_categories.dart';
import 'package:home_rent/screens_files/home_screen_near_you.dart';
import 'package:home_rent/screens_files/home_screen_searchbar.dart';
import 'package:home_rent/screens_files/home_screen_youMightAlsoLike.dart';
import 'package:home_rent/screens_files/slotname.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Center(
          child: Text(
            'Homes',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              backgroundImage: ExactAssetImage('images/cricleavatar.jpg'),
            ),
            onPressed: () {
              // do something
            },
          ),
          SizedBox(width: 3),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SlotNames(slotname: 'Categories'),
            Catagories(),
            SlotNames(slotname: 'Near You'),
            NearMe(),
            SlotNames(slotname: 'You Might Also Like'),
            MightAlsoLike(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        onTap: (index) => setState(()=> currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorite',
              backgroundColor: Colors.pinkAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              backgroundColor: Colors.lightBlueAccent),
        ],
      ),
    );
  }
}
