import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            children: [
              SizedBox(
                width: 345,
                height: 345,
                child: Image.asset("assets/images/reading.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
