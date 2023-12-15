import 'package:flutter/material.dart';

class YoutubeResponsive extends StatelessWidget {
  const YoutubeResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          child: (fize < 600) ? MobileResponsive() : DesktopResponsiveness()),
    );
  }
}

class MobileResponsive extends StatelessWidget {
  const MobileResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('M O B I L E')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
            child: AspectRatio(
              aspectRatio: 9 / 9,
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              //     scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 6, 12, 6),
                  child: Container(
                    height: 80,
                    color: Colors.deepPurple[400],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopResponsiveness extends StatelessWidget {
  const DesktopResponsiveness({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('D E S K T O P')),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
                  child: AspectRatio(
                    aspectRatio: 12 / 5,
                    child: Container(
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(12.0, 6, 12, 6),
                        child: Container(
                          height: 120,
                          color: Colors.deepPurple[400],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 24, 12, 0),
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
