// import 'package:activity_3/BottomNavigation.dart';
import 'package:activity_3/DetailPlaylist.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String title;

  ImageCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}

class PlaylistScreen extends StatelessWidget {
  Widget _buildImageCard(BuildContext context, String imagePath, String title,
      String description) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman MoviePage dengan membawa data spesifik
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPlaylist(
              imagePath: imagePath,
              title: title,
              description: description,
            ),
          ),
        );
      },
      child: ImageCard(imagePath: imagePath, title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Spotify',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "poppins",
            height: 0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            // Existing code...

            // 2 cards pertama
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageCard(
                    context,
                    'assets/taylor1.jpg',
                    'Speak Now',
                    'ini album Speak Now',
                  ),
                  _buildImageCard(
                    context,
                    'assets/taylor2.jpg',
                    'Lover',
                    'ini album Lover',
                  ),
                ],
              ),
            ),

            // 2 cards kedua
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageCard(
                    context,
                    'assets/taylor3.jpg',
                    'Evermore',
                    'ini album Evermore',
                  ),
                  _buildImageCard(
                    context,
                    'assets/taylor4.jpg',
                    'Folklore',
                    'ini album Folklore',
                  ),
                ],
              ),
            ),

            // 2 cards ketiga
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageCard(
                    context,
                    'assets/taylor5.jpg',
                    'Red',
                    'ini album Red',
                  ),
                  _buildImageCard(
                    context,
                    'assets/taylor6.jpg',
                    '1989',
                    'ini album 1989',
                  ),
                ],
              ),
            ),

            // 2 cards keempat
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageCard(
                    context,
                    'assets/taylor7.jpg',
                    'Midnight',
                    'ini album Midnight',
                  ),
                  _buildImageCard(
                    context,
                    'assets/taylor8.jpg',
                    'Fearless',
                    'Fearless',
                  ),
                ],
              ),
            ),

            // 2 cards kelima
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildImageCard(
                    context,
                    'assets/taylor9.jpg',
                    'Reputation',
                    'ini album Reputation',
                  ),
                  _buildImageCard(
                    context,
                    'assets/taylor10.jpg',
                    'Taylor Swift',
                    'ini album Taylor Swift',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }

  // ... Existing code
}
