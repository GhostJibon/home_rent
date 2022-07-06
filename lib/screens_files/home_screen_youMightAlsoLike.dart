import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class MightAlsoLike extends StatefulWidget {
  @override
  _MightAlsoLikeState createState() => _MightAlsoLikeState();
}

String valueChoosen;
List listitems = ['All', 'Take Away', 'Home Delivery'];

class _MightAlsoLikeState extends State<MightAlsoLike> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Might_also_like_Slots(
            imagelocation1: 'images/7.jpg',
            houseLocation1: 'Naraynganj',
            floorname1: '2nd Floor',
            fare1: '11000',
            imagelocation2: 'images/8.jpg',
            houseLocation2: 'MaymonSing',
            floorname2: '2nd Floor',
            fare2: '19500',
          ),
          Might_also_like_Slots(
            imagelocation1: 'images/9.jpg',
            houseLocation1: 'Rangpur',
            floorname1: '1st Floor',
            fare1: '18000',
            imagelocation2: 'images/10.jpg',
            houseLocation2: 'Sylhet',
            floorname2: '2nd Floor',
            fare2: '18500',
          ),
          Might_also_like_Slots(
            imagelocation1: 'images/11.jpg',
            houseLocation1: 'Cox\'s Bazar',
            floorname1: '4th Floor',
            fare1: '11500',
            imagelocation2: 'images/12.jpg',
            houseLocation2: 'Naraynganj',
            floorname2: '3rd Floor',
            fare2: '13500',
          ),
        ],
      ),
    );
  }
}

class Might_also_like_Slots extends StatelessWidget {
  Might_also_like_Slots(
      {@required this.imagelocation1,
      this.imagelocation2,
      this.houseLocation1,
      this.houseLocation2,
      this.floorname1,
      this.floorname2,
      this.fare1,
      this.fare2});

  final String imagelocation1,
      houseLocation1,
      floorname1,
      fare1,
      imagelocation2,
      houseLocation2,
      floorname2,
      fare2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NearYou_slots(
          imagelocation: imagelocation1,
          houseLocation: houseLocation1,
          floorname: floorname1,
          fare: fare1,
        ),
        NearYou_slots(
          imagelocation: imagelocation2,
          houseLocation: houseLocation2,
          floorname: floorname1,
          fare: fare1,
        ),
      ],
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
            height: 45,
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
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Center(
                          child: LikeButton(
                            size: 20,
                          ),
                        ),
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
