import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Gojek',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your favorites',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.green, width: 2.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  _buildGridItem('images/GoRide.jpg', 'GoRide'),
                  _buildGridItem('images/GoCar.jpg', 'GoCar'),
                  _buildGridItem('images/GoFood.jpg', 'GoFood'),
                  _buildGridItem('images/GoSend.jpg', 'GoSend'),
                  _buildGridItem('images/GoMart.jpg', 'GoMart'),
                  _buildGridItem('images/GoPulsa.jpg', 'GoPulsa'),
                  _buildGridItem('images/CheckIn.jpg', 'Check In'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String label) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(
              imagePath,
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}