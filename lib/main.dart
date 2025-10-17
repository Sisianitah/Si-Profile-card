//  it brings flutter's material design widgets and themes
import 'package:flutter/material.dart';
// app entry point
void main() => runApp(ProfileCardApp()); // profile app is an instance (this is the apps entry point in flutter)


class ProfileCardApp extends StatelessWidget {    
  // top level widget
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      // scaffold provides a framework that implements the basic material 
      //design visual layout structure
      // provides app bar, body, floating action button, drawer, etc

      // A widget is the basic building block of the Flutter UI
      home: Scaffold(
        appBar: AppBar(title: const Text('My Profile Card'), centerTitle: true),
        body: Center(
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    // replace with NetworkImage or AssetImage as needed
                    backgroundImage: NetworkImage('Assets/images/AMBASSADOR.jpg'),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'SISI ANITAH',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle:FontStyle.italic ),
                    
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Junior Web Developer, Software Engineer, Graphics Designer',
                    style: TextStyle(color: Color.fromARGB(255, 14, 76, 246)),
                  ),
                  const Divider(height: 20, thickness: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email, size: 28),
                      SizedBox(width: 8),
                      Text('anitasisi851@gmail.com'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone, size: 18),
                      SizedBox(width: 8),
                      Text('+256 761 539 845'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
