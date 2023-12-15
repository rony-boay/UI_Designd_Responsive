import 'dart:ui';

import 'package:firstap_codelab_1/ParallaxEffect.dart';
import 'package:flutter/material.dart';

class homepage4 extends StatelessWidget {
  const homepage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            foregroundColor: const Color.fromARGB(255, 248, 248, 248),
            backgroundColor: Colors.deepPurple[500],

            //   title: Text('CustomScrollView'),
            leading: Icon(Icons.menu),
            expandedHeight: 300,
            pinned: true,
            floating: false,

            flexibleSpace: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ParallaxEffect');
              },
              child: FlexibleSpaceBar(
                title: Text('CustomScrollView'),
                centerTitle: true,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1603950227760-e609ce8e15b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dmludGFnZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 0.1),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            Colors.transparent,
                            Colors.deepPurple.withOpacity(0.9),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // background: ClipRRect(
                //   //      borderRadius: BorderRadius.circular(22),
                //   child: Image.network(
                //     'https://images.unsplash.com/photo-1603950227760-e609ce8e15b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dmludGFnZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              //mainAxisExtent: 200,
              mainAxisSpacing: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 400,
                      color: Colors.deepPurple[300],
                      child: Center(
                        child: Text('SliverToBoxAdapter $index'),
                      ),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Container(
                  width: 400,
                  height: 400,
                  color: Colors.deepPurple[300],
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 260,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 35,
                                    left: 35,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        color: Colors.black,
                                      ),
                                    ))
                              ],
                            ),
                            width: 100,
                            height: 100,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 35,
                                    left: 35,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        color: Colors.black,
                                      ),
                                    ))
                              ],
                            ),
                            width: 100,
                            height: 100,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 190,
                        left: 215,
                        child: Container(
                          width: 10,
                          height: 70,
                          color: Colors.amber,
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 160,
                        child: Container(
                          width: 140,
                          height: 10,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
