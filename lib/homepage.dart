import 'package:firstap_codelab_1/homepage2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://protocoderspoint.com/wp-content/uploads/2020/01/flutter-hero-animation-transaction-.jpg?ezimgfmt=rs%3Adevice%2Frscb20-1',
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
            child: Text(
              'Running Iron Man',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 2, 0, 0),
                child: Text('Iron Man with blue background'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(180, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 247, 127, 28),
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                child: Text('41'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(70, 60, 0, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Call',
                      style: TextStyle(fontSize: 22, color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 60, 0, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.route,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Route',
                      style: TextStyle(fontSize: 22, color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 60, 0, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(fontSize: 22, color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 50, 40, 0),
            child: Text(
              'You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.  Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.  Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.  Remember, "Lorem Ipsum" text is often used as a placeholder when designing or prototyping to mimic the appearance of real text in the absence of actual content. You can replace the provided "Lorem Ipsum" text with your own content once you have the actual text ready.',
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage2');
              },
              child: Text('Next'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
