import 'package:flutter/material.dart';
import 'package:flutter_application_1/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "splashscreen",
      home: LandingPageView(),
    );
  }
}

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 244, 243, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 0,),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset('images/atas.png'),
            ),
            Align(
              child: Image.asset('images/awal.png'),
            ),
            SizedBox(height: 30,),
            Transform.translate(
              offset: const Offset(80, 0),
              child: Text(
                'Gets things with TODs',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ), 
              ),
            ),
            SizedBox(height: 0,),
            Container(
              width: 200,
              child: Transform.translate(
                offset: const Offset(90, 0),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                  style: TextStyle(
                    fontFamily: "Poppins1",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 90),
            Center( // Center the button horizontally
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(355, 60),
                  backgroundColor: Color.fromRGBO(80, 194, 201, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registration())
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: "Ibarra",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
