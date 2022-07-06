import 'package:flutter/material.dart';

class NearMe extends StatefulWidget {
  @override
  _NearMeState createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            NearYou_slots(
              imagelocation: 'images/1.jpg',
              houseLocation: 'MohammadPur Townhall',
              floorname: '2nd Floor',
              fare: '2200.00',
            ),
            NearYou_slots(
              imagelocation: 'images/2.jpg',
              houseLocation: 'Mirpur',
              floorname: '2nd Floor',
              fare: '1800.00',
            ),
            NearYou_slots(
              imagelocation: 'images/3.jpg',
              houseLocation: 'MohammadPur BusStand',
              floorname: '2nd Floor',
              fare: '1200.00',
            ),
            NearYou_slots(
              imagelocation: 'images/4.jpg',
              houseLocation: 'Japan Garden',
              floorname: '2nd Floor',
              fare: '2000.00',
            ),
            NearYou_slots(
              imagelocation: 'images/5.jpg',
              houseLocation: 'Shia Mosque',
              floorname: '2nd Floor',
              fare: '1300.00',
            ),
          ],
        ),
      ),
    );
  }
}

class NearYou_slots extends StatelessWidget {
  NearYou_slots(
      {@required this.imagelocation,
      this.fare,
      this.floorname,
      this.houseLocation});

  final String imagelocation, houseLocation, floorname, fare;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170.0,
            width: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(imagelocation),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 3, left: 5, right: 5),
                  child: Text(
                    houseLocation,
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Text(
                        floorname,
                        style: TextStyle(
                            color: Colors.teal.withOpacity(0.6),
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '\$' + fare,
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
