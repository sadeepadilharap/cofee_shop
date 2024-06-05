import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
          ),
          Stack(children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'lib/assets/Homepage.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.black,
                        // Adjust the opacity as needed
                        Colors.transparent,
                      ],
                      stops: [
                        0,
                        0.1
                      ]),
                ),
              ),
            ),
          ]),
          Bottom_sector(context).buildWidget(),
        ]));
  }
}

class Bottom_sector {
  final BuildContext context;

  Bottom_sector(this.context);

  Widget buildWidget() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 8.0, top: 52.0),
              child: Text(
                'Coffee so good, your taste buds will love it.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 34.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.34,
                  height: 1.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 24.0, top: 0.0),
              child: Text(
                'The best grain, the finest roast, the powerful flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA9A9A9),
                  // Hex color code #A9A9A9
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  height: 1.54,
                  // Line height of 154% (1.54 times the font size)
                  letterSpacing: 0.14,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 0.0, bottom: 28.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.only(
                        left: 109.0, right: 109.0, top: 21.0, bottom: 21.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    // You can customize other button styles here
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
