import 'package:firstap_codelab_1/TodoApp.dart';
import 'package:firstap_codelab_1/TodoApp_Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Adaptive_res extends StatelessWidget {
  const Adaptive_res({super.key});

  @override
  Widget build(BuildContext context) {
    final wB = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return (wB > 600)
              ? Adaptive_Responsive_web()
              : Adaptive_Responsive_mobile();
        },
      ),
    );
  }
}

class Adaptive_Responsive_web extends StatefulWidget {
  const Adaptive_Responsive_web({Key? key}) : super(key: key);

  @override
  State<Adaptive_Responsive_web> createState() => _Adaptive_ResponsiveState();
}

class _Adaptive_ResponsiveState extends State<Adaptive_Responsive_web> {
  String displayText = '';
  String displayCached = '';
  String displayEmail = '';

  @override
  Widget build(BuildContext context) {
    final wB = MediaQuery.of(context).size.width;

    final hB = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Adaptive_Resposive')),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Drawer(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    subtitle: Text('Gotohome'),
                    trailing: Icon(Icons.add),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TodoAppHome()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('Email'),
                    subtitle: Text('clickToMail'),
                    trailing: Icon(Icons.mark_email_read),
                    onTap: () {
                      setState(() {
                        displayEmail = 'Email has been sent';
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    displayEmail,
                    style: TextStyle(fontSize: 12),
                  ),
                  ListTile(
                    leading: Icon(Icons.cached),
                    title: Text('cached'),
                    subtitle: Text('cachedYourData'),
                    trailing: Icon(Icons.done_outline),
                    onTap: () {
                      setState(() {
                        displayCached = 'Your cached has been done';
                      });
                    },
                  ),
                  SizedBox(height: 12),
                  Text(
                    displayCached,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Container(
                            color: Colors.deepPurple[400],
                            //     height: hB * 0.5,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Container(
                            color: Colors.deepPurple[400],
                            //   height: hB * 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Container(
                            color: Colors.deepPurple[400],
                            //  height: hB * 0.5,
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

class Adaptive_Responsive_mobile extends StatefulWidget {
  const Adaptive_Responsive_mobile({super.key});

  @override
  State<Adaptive_Responsive_mobile> createState() =>
      _Adaptive_Responsive_mobileState();
}

class _Adaptive_Responsive_mobileState
    extends State<Adaptive_Responsive_mobile> {
  String displayText = '';
  String displayCached = '';
  String displayEmail = '';

  @override
  Widget build(BuildContext context) {
    final wB = MediaQuery.of(context).size.width;

    final hB = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Respnsive'),
        actions: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Gotohome'),
              trailing: Icon(Icons.add),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TodoAppHome()));
              },
            ),
            SizedBox(height: 12),
            Text(
              displayText,
              style: TextStyle(fontSize: 12),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Email'),
              subtitle: Text('clickToMail'),
              trailing: Icon(Icons.mark_email_read),
              onTap: () {
                setState(() {
                  displayEmail = 'Email has been sent';
                });
              },
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              displayEmail,
              style: TextStyle(fontSize: 12),
            ),
            ListTile(
              leading: Icon(Icons.cached),
              title: Text('cached'),
              subtitle: Text('cachedYourData'),
              trailing: Icon(Icons.done_outline),
              onTap: () {
                setState(() {
                  displayCached = 'Your cached has been done';
                });
              },
            ),
            SizedBox(height: 12),
            Text(
              displayCached,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple[400],
              height: hB * 0.5,
            ),
          );
        },
      ),
    );
  }
}
