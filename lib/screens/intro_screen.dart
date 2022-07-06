import 'package:flutter/material.dart';
import 'package:home_rent/screens/home_screen.dart';
import 'package:home_rent/screens_files/intro_screen_slider.dart';
class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height * 1,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: size.height * 0.15,
                child: Texts(
                  text: 'Homebred',
                ),
              ),
              HomePage_Slider(),
              SizedBox(
                height: size.height * 0.03,
              ),
              Texts2(
                text: 'Have all your needing',
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Texts2(
                text: 'in one place!',
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return HomeScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Texts2 extends StatelessWidget {
  Texts2({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w200,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  Texts({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none),
      ),
    );
  }
}
