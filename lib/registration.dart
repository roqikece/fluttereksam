import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginScreen.dart';

void main() {
  runApp(Registration());
}

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(240, 244, 243, 1),
        body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('images/atas.png'),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 31),
            child: const Text(
              'Welcome to Onboard!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 0,),
          Container(
            margin: EdgeInsets.fromLTRB(85, 0, 0, 31),
            child: const Text(
              'Let’s help to meet up your tasks.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins1",
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide.none, // Remove black border
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0)
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide.none, // Remove black border
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0)
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: 'Enter password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide.none, // Remove black border
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0)
            ),
            obscureText: true,
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
                hintText: 'Confirm password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide.none, // Remove black border
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0)
            ),
            obscureText: true,
          ),
          const SizedBox(height: 70,),
          SizedBox(
            width: double.infinity, // Set width to infinity to expand the button
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) => login(),
                   ),
                   );
                // Register button action
              },
              style: TextButton.styleFrom(                 
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10)
              ),
              child: Container(
                width: double.infinity, // Set width to infinity
                decoration: BoxDecoration(
                  color: Color(0xff50c2c9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins1',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.5699999068,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  // Sign In button action
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Color.fromRGBO(80, 194, 201, 1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
