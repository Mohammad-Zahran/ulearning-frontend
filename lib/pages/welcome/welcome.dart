import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/reading.png",
                    fit: BoxFit.fitWidth,
                  ),
                  text24Normal(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
