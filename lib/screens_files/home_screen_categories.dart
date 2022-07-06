import 'package:flutter/material.dart';

class Reusable_catagories extends StatelessWidget {
  Reusable_catagories({@required this.label, this.icon, this.image});
  final IconData icon;
  final String label;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.teal.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Catagories extends StatelessWidget {
  const Catagories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 3,
            ),
            Reusable_catagories(
              image: 'images/house.png',
              label: 'All',
            ),
            Reusable_catagories(
              image: 'images/apartment.png',
              label: 'Apartment',
            ),
            Reusable_catagories(
              image: 'images/bedroom.png',
              label: 'Bedroom',
            ),
            Reusable_catagories(
              image: 'images/comarcialhouse.jpg',
              label: 'Comarcial',
            ),
            Reusable_catagories(
              image: 'images/windowroom.png',
              label: 'Window Room',
            ),
            Reusable_catagories(
              image: 'images/sublet.jpg',
              label: 'Sublet',
            ),
            Reusable_catagories(
              image: 'images/sublet.jpg',
              label: 'Sublet',
            ),
          ],
        ),
      ),
    );
  }
}
