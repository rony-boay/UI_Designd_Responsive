import 'package:flutter/material.dart';

class homepage2 extends StatelessWidget {
  const homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(253, 255, 211, 188),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 0.06 * screenWidth,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage3');
              },
              child: Text('FEED'),
            ),
          ),
          SizedBox(
            height: 0.06 * screenWidth,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(0.08 * screenWidth, 0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(253, 255, 211, 188),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.04 * screenWidth),
                      ),
                      hintText: 'Search Something....',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'RONYBOAY',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.arrow_downward),
                      margin: EdgeInsets.fromLTRB(0, 0, 0.04 * screenWidth, 0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0.04 * screenWidth,
                    0.04 * screenWidth, 0.04 * screenWidth, 0.14 * screenWidth),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.08 * screenWidth),
                  child: Image.network(
                    'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg',
                    width: screenWidth,
                    height: 0.53 * screenWidth,
                    fit: BoxFit.cover,
                    scale: 1.0,
                  ),
                ),
              ),
              Positioned(
                bottom: -0.035 * screenWidth,
                left: 0.33 * screenWidth,
                child: Container(
                  margin: EdgeInsets.all(0.058 * screenWidth),
                  width: 0.21 * screenWidth,
                  height: 0.21 * screenWidth,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(253, 255, 211, 188),
                      width: 0.01 * screenWidth,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(0.14 * screenWidth),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg',
                          fit: BoxFit.cover,
                          width: 0.24 * screenWidth,
                          height: 0.24 * screenWidth,
                          scale: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(
                0.06 * screenWidth, 0.06 * screenWidth, 0, 0),
            child: Text(
              'Ronyboay Junior',
              style: TextStyle(
                fontSize: 0.06 * screenWidth,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(
                0.06 * screenWidth, 0.02 * screenWidth, 0, 0.12 * screenWidth),
            child: Text(
              '@ronyboayjr',
              style: TextStyle(
                fontSize: 0.048 * screenWidth,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(249, 255, 198, 168),
              borderRadius: BorderRadius.circular(0.03 * screenWidth),
            ),
            margin: EdgeInsets.fromLTRB(
                0.04 * screenWidth, 0, 0.04 * screenWidth, 0),
            padding: EdgeInsets.symmetric(vertical: 0.03 * screenWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                    SizedBox(height: 0.02 * screenWidth), // Adjust spacing
                    Text(
                      'Photos',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '512M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                    SizedBox(height: 0.02 * screenWidth),
                    Text(
                      '1.2K',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Videos',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                    SizedBox(height: 0.02 * screenWidth), // Adjust spacing
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '453',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                    SizedBox(height: 0.02 * screenWidth),
                    Text(
                      '2.7K',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 0.04 * screenWidth,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                0.06 * screenWidth, 0.16 * screenWidth, 0, 0),
            child: Text(
              'Your Balance',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 0.038 * screenWidth,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.06 * screenWidth, 0,
                      0.06 * screenWidth, 0.06 * screenWidth),
                  child: Text(
                    '\$564,679,000',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 0.047 * screenWidth),
                  ),
                ),
              ),
              SizedBox(
                width: 0.12 * screenWidth,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(249, 255, 198, 168),
                    borderRadius: BorderRadius.circular(0.06 * screenWidth),
                  ),
                  margin: EdgeInsets.fromLTRB(0.06 * screenWidth, 0,
                      0.06 * screenWidth, 0.06 * screenWidth),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0.03 * screenWidth,
                            0.03 * screenWidth, 0, 0.03 * screenWidth),
                        child: Icon(Icons.arrow_upward),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0.04 * screenWidth,
                            0.03 * screenWidth,
                            0.03 * screenWidth,
                            0.03 * screenWidth),
                        child: Text(
                          '65.33%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 0.04 * screenWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0.015 * screenWidth, 0, 0.015 * screenWidth, 0),
                      padding: EdgeInsets.fromLTRB(
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(249, 255, 198, 168),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                height: 0.43 * screenWidth,
                                width: 0.48 * screenWidth,
                                fit: BoxFit.cover,
                                scale: 1.0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Text(
                              'EmasSilver #03',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Current Bid',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '7.19 ETH',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0.015 * screenWidth, 0),
                      padding: EdgeInsets.fromLTRB(
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(249, 255, 198, 168),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDhoHEQJTNAeqomEA7Bw0FScz6cwR5FlVdjA&usqp=CAU',
                                height: 0.43 * screenWidth,
                                width: 0.48 * screenWidth,
                                fit: BoxFit.cover,
                                scale: 1.0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Text(
                              'EmasSilver #03',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Current Bid',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '7.19 ETH',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0.015 * screenWidth,
                          0.015 * screenWidth,
                          0.015 * screenWidth,
                          0.015 * screenWidth),
                      padding: EdgeInsets.fromLTRB(
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(249, 255, 198, 168),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG6xG7E1eHoI_8OPsHuelXoJP1b8fppdugaA&usqp=CAU',
                                height: 0.43 * screenWidth,
                                width: 0.48 * screenWidth,
                                fit: BoxFit.cover,
                                scale: 1.0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Text(
                              'EmasSilver #03',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Current Bid',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '7.19 ETH',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0.015 * screenWidth,
                          0.015 * screenWidth, 0.015 * screenWidth),
                      padding: EdgeInsets.fromLTRB(
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth,
                          0.02 * screenWidth),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(249, 255, 198, 168),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                height: 0.43 * screenWidth,
                                width: 0.48 * screenWidth,
                                fit: BoxFit.cover,
                                scale: 1.0,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Text(
                              'EmasSilver #03',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0.02 * screenWidth,
                                0 * screenWidth,
                                0.02 * screenWidth,
                                0.02 * screenWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Current Bid',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '7.19 ETH',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
