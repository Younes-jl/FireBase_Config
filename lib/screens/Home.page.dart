import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 173, 166),
        centerTitle: true,
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    const Color.fromARGB(255, 149, 184, 213),
                  ],
                  begin: Alignment.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/suit.jpg"),
                    radius: 30,
                  ),
                  Text(
                    "TOM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Tom@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.purpleAccent),
              title: Text('Covid Tracker'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 155, 209, 55),
              thickness: 3,
            ),

            ListTile(
              leading: Icon(
                Icons.chat,
                color: const Color.fromARGB(255, 200, 20, 231),
              ),
              title: Text('Chat'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 155, 209, 55),
              thickness: 3,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 85, 28, 95),
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: const Color.fromARGB(255, 155, 209, 55),
              thickness: 3,
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
                color: const Color.fromARGB(255, 41, 0, 48),
              ),
              title: Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to the home page",
          style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
