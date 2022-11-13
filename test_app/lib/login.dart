import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Icon(
            Icons.bloodtype,
            size: 100,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Hello Again!',
            style: GoogleFonts.pacifico(fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Welcome Back you have been missed !',
            style: GoogleFonts.pacifico(fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Username'),
            )),
        Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Password'),
            )),
        Padding(
          padding: EdgeInsets.only(left: 220, top: 10),
          child: Text('Recovery Password'),
        ),
        Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(
                    top: 15, bottom: 15, right: 150, left: 150)),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            )),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(0.8),
            )
          ],
        )
      ]),
    );
  }
}
