// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Portfolio App",
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  // StatelessWidget because the content is static and doesn't change
  // هنا لما انا ورثت  من ال  statelessWidget  كدا class homeApp بقت widget  يعني ممكن استخدمها في اي مكان في التطبيق وبتحتوي علي build method اللي بتحدد شكل ال UI بتاع ال widget
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portfolio App",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 34),
              child: Image.asset(
                "assets/person.png",
                width: 174.375,
                height: 180,
              ),
            ),
            const Text(
              "Hi, I am Ashraf, \n Creative \n Technologist",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFF21243D),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "I am a creative technologist \n with a passion for blending technology and creativity to create innovative solutions. \n With a background in both design and development.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(208, 48),
                // Set the button width
                backgroundColor: Color(0xFFFF6464), // Set the background color
                foregroundColor: Colors.white, // Set the text color
                padding: EdgeInsets.zero, // Set padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2), // Set border radius
                ),
              ),
              onPressed: () {
                // Handle button press
              },
              child: const Text("Download Resume"),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
