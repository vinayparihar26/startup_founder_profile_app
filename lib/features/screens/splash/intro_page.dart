import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/features/screens/profile/profile_page.dart';
import 'package:startup_founder_profile_app/responsive.dart';
import 'package:startup_founder_profile_app/widgets/ui_helper.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(10.0*getResponsive(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.050 * getHeight(context)),
            Text(
              'Find the best',
              style: TextStyle(
                fontSize: 30 * getResponsive(context),
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            UiHelper.customText(text: "startup founder"),

            UiHelper.customText(text: "of your choice"),
            SizedBox(height: 0.050 * getHeight(context)),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UiHelper.customText1(
                  text: "Get Started",
                  fontSize: 15 * getResponsive(context),
                ),
              
                IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
