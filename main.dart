import 'package:flutter/material.dart';

// ----------------------------------------------------------------------
// 1. MAIN ENTRY POINT (This is where your app starts)
// ----------------------------------------------------------------------
void main() {
  // This function tells Flutter to run the widget defined below (MyApp).
  runApp(const MyApp());
}

// ----------------------------------------------------------------------
// 2. WIDGET DEFINITION (The blueprint for your app's look and feel)
// ----------------------------------------------------------------------

// MyApp is a StatelessWidget, meaning its content won't change after it's drawn.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The build method is where you define the UI structure of this widget.
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the foundational look and feel (like design system, fonts, etc.).
    return const MaterialApp(
      title: 'Hello World App',
      // The 'home' property is where the main screen content goes.
      home: MyHomePage(),
    );
  }
}

// ----------------------------------------------------------------------
// 3. MAIN SCREEN CONTENT (The actual visible part of your app)
// ----------------------------------------------------------------------

// MyHomePage is now a StatefulWidget to allow UI updates.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String message = '';
  double opacityLevel = 0.0;

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual structure (like a clean sheet of paper).
    // It gives you space for an AppBar, a body, and things like a floating button.
    return Scaffold(
      // The AppBar is the header at the top of the screen.
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Swiggy Coupon Generator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFD62E29),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF000000),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        selectedItemColor: Color(0xFFD62E29),
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),

      backgroundColor: Color(0xFF131313), // 19 in hex = 13
      // The body is the main area where most of your content will live.
      body: SingleChildScrollView(
        child: Center(
          // Center centers the widget inside of it.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //////////////
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/Screenshot 2025-10-03 003059.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 80),
              Text(message, style: TextStyle(color: Colors.blueAccent)),
              //////////////
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "BHIKHARI BHI TERE MU NAA LAGE";
                    opacityLevel = 1.0;
                  });
                },
                child: Text('Click to generate Coupon code!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
