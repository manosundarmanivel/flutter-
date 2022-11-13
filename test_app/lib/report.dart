import 'package:flutter/material.dart';

class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Patient Report',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 5, 192, 225),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Appointment(),
          // Box(
          //   title: 'hello',
          // ),
          // Box(
          //   title: 'hello2',
          // )
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String title;
  Box({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color.fromARGB(255, 5, 192, 225), Colors.blue]),
              borderRadius: BorderRadius.circular(10)),
          //margin: const EdgeInsets.all(10),
          //padding: const EdgeInsets.all(20),
          width: 150,
          height: 150,
          //color: Colors.greenAccent,
          child: Center(child: Text(title)),
        ),
      ],
    );
  }
}

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Icon(
                      Icons.account_circle,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Dr. Mano Sundar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Medical Proffesional',
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 235, 235),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 10),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.blue.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Icon(
                            Icons.schedule,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text('January 12 at 09:00 AM - 10:00 AM',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Kallakurichi,Tamil Nadu',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color.fromARGB(255, 5, 192, 225), Colors.blue]),
              borderRadius: BorderRadius.circular(10)),
          width: 380,
          height: 150,
          margin: EdgeInsets.all(10),
        ),
        SizedBox(height: 30),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(title: 'Acetone Level'),
                Box(title: 'Glucose Level')
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(title: 'Acetone Level'),
                Box(title: 'Glucose Level')
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(title: 'Acetone Level'),
                Box(title: 'Glucose Level')
              ],
            )
          ],
        )
      ],
    );
  }
}
