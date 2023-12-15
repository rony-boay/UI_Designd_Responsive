import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

class ParallaxEffect extends StatefulWidget {
  const ParallaxEffect({super.key});

  @override
  State<ParallaxEffect> createState() => _ParallaxEffectState();
}

class _ParallaxEffectState extends State<ParallaxEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/YoutubeResponsive');
              },
              child: Text('Youtube_Demo'),
            ),
          ),
          Parallax(
            sensor: ParallaxSensor.accelerometer,
            layers: [
              Layer(
                sensitivity: 3,
                image: NetworkImage(
                    'https://www.everythingabode.com/wp-content/uploads/2022/11/black-aesthetic-wallpaper-50.jpeg'),
                preventCrop: true,
                imageBlurValue: 0,
              ),
              // Layer(
              //   sensitivity: 12,
              //   image: NetworkImage(
              //       'https://e0.pxfuel.com/wallpapers/560/139/desktop-wallpaper-aesthetic-anime-bedroom-lo-fi-room.jpg'),
              //   imageHeight: 400,
              //   imageWidth: 400,
              //   imageFit: BoxFit.cover,
              // ),
              Layer(
                sensitivity: 15,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/ce/9e/2d/ce9e2d83846c46bcdaef892d1a4d7cd2.jpg'),
                imageHeight: 220,
                imageBlurValue: 0.5,
                imageFit: BoxFit.fitHeight,
              ),
            ],
            child: Text('child'),
          ),
        ],
      ),
    );
  }
}

/*

Parallax(
  sensors: ParallaxSensor.accelerometer,
  layers: [
    Layer(
      sensitivity: 1,
      image: NetworkImage('https://example.com/background.png'),
      preventCrop: true,
      imageBlurValue: 5,
    ),
    Layer(
      sensitivity: 7,
      image: AssetImage('assets/middle_layer.png'),
      imageHeight: 500,
      imageFit: BoxFit.fitHeight,
    ),
    Layer(
      sensitivity: 12,
      child: Text('Topmost layer'),
    ),
  ]
  child: Text('Page body here'),
),


 */