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
          title: Text('Patient Report'),
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
          Box(
            title: 'hello',
          ),
          Box(
            title: 'hello2',
          )
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
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.blue, Colors.pink]),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: 380,
      height: 100,
      //color: Colors.greenAccent,
      child: Center(child: Text(title)),
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
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Medical Proffesional',
                          style: TextStyle(color: Colors.white38),
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
                          child: Text(
                            'January 12 at 09:00 AM - 10:00 AM',
                            style: TextStyle(color: Colors.white),
                          ),
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
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blue, Colors.pink]),
              borderRadius: BorderRadius.circular(10)),
          width: 380,
          height: 150,
          margin: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
