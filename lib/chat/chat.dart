import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  final List<String> items = List.generate(5, (index) => "Item $index");
  final List<String> name = [
    'Red Alert',
    'Safety Check',
    'Bayanihan',
    'Red Alert',
    'Safety Check'
  ];
  final List<String> logo = [
    'assets/images/RedOne.png',
    'assets/images/SafetyOne.png',
    'assets/images/BayanihanOne.png',
    'assets/images/RedOne.png',
    'assets/images/SafetyOne.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Organizations',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Questrial',
                ),
              ),
            ),
            Container(
              height: 115.0,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 15.0),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => OrganizationPage()),
                            // );
                          },
                          child: Material(
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Colors.white,
                                child: Image.asset(logo[index],
                                    fit: BoxFit.contain),
                              ),
                              elevation: 3,
                              shape: const CircleBorder(side: BorderSide.none)),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          name[index], // name of org
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => OpportunitiesPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 100,
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, top: 20),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue,
                                  child: Image.asset(
                                      'assets/images/RedAlert.png',
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 30, left: 15),
                                    child: Text(
                                      'Red Alert Local Chapter',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 15),
                                    child: Text(
                                      "You: Let's do this!",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Questrial',
                                          color: const Color(0xFF6E7191)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
