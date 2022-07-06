import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15,left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 17, color: Colors.teal.withOpacity(0.4)),
          hintText: 'Search area or house type here...',
          suffixIcon: GestureDetector(
            onTap: null,
            child: Icon(
              Icons.search,
              color: Colors.teal.withOpacity(0.5),
            ),
          ),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}