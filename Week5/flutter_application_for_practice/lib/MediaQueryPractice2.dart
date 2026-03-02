import 'package:flutter/material.dart';

class ScreenPractice extends StatefulWidget {
  const ScreenPractice({super.key});

  @override
  State<ScreenPractice> createState() => _ScreenPracticeState();
}

class _ScreenPracticeState extends State<ScreenPractice> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    //if()

    //This is for portrait and
    Map<String, dynamic> info = {
      'Name': "Roudro",
      'Title': "Flutter Developer (Junior)",
      'Education': "B.Sc. in CSE, Daffodil International University",
      'Skills': "Dart, Flutter, Firebase, REST APIs, Git",
      'Projects': "E-commerce App, Weather App, Portfolio UI",
      'Achievements': "Best Project Award 2024 (DIU)",
      'Location': "Dhaka, Bangladesh",
      'Email': "roudro.dev@example.com",
      'LinkedIn': "linkedin.com/in/roudro-dev",
    };
    var currentOrientation = MediaQuery.of(context).orientation;
    var size = MediaQuery.of(context).size;

    var height = size.height;
    var width = size.width;

    bool isPortrait;
    if (currentOrientation == Orientation.portrait) {
      isPortrait = true;
    } else {
      isPortrait = false;
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? Colors.black87 : Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              color: isDarkMode ? Colors.amber : Colors.black54,
            ),
          ],
          title: Center(
            child: Text(
              "MediaQuery Practice",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: isPortrait
            ? Column(
                children: [
                  SizedBox(height: 50),
                  //Profile Picture
                  Center(child: _buildProfileImage(height * .25, width * .5)),
                  SizedBox(height: 30),
                  Expanded(child: _information(info)),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: _buildProfileImage(height * .5, width * .25),
                    ),
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: _information(info),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _information(Map<String, dynamic> info) {
    return ListView(
      children: [
        for (var info in info.entries)
          Card(
            elevation: 3,
            child: ListTile(
              tileColor: isDarkMode ? Colors.black87 : Colors.white,
              title: Text(
                info.key,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black87,
                ),
              ),

              subtitle: Text(
                info.value,
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black87,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildProfileImage(double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("asset/image/img.jpg"),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: isDarkMode ? Colors.deepPurple : Colors.blue,
          width: 2,
        ),
      ),
    );
  }
}
