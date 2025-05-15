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
              // first Page
              Column(
                children: [
                  Image.asset(
                    "assets/images/reading.png",
                    fit: BoxFit.fitWidth,
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: text24Normal(text: "First see Learning"),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: text16Normal(
                      text:
                          "Forget about of paper all knowledge in one learning",
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
