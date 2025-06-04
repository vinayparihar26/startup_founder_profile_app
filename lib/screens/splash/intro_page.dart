import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/responsive.dart';
import 'package:startup_founder_profile_app/screens/splash/home/home.dart';
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
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
            SizedBox(height: 70),
            Image.asset('lib/assets/images/intro1.png'),
            //SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UiHelper.customText1(text: "Get Started", fontSize: 15),
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.black),
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
