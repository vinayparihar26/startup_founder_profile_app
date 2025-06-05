import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/features/screens/about_screen/about_screen.dart';
import 'package:startup_founder_profile_app/responsive.dart';
import 'package:startup_founder_profile_app/utils.dart';

class UiHelper {
  static customText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  static Widget customText1({required String text, required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  static Widget customButton({
    required VoidCallback onPressed,
    required String text,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }

  static Widget statColumn({
    required BuildContext context,
    required String count,
    required String label,
  }) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 17 * getResponsive(context),
          ),
        ),
        Text(label),
      ],
    );
  }

  static Widget horizontalAvatarList(BuildContext context) {
    return SizedBox(
      height: 0.12 * getHeight(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Utils.listOfImg.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(
              (5.0 * getResponsive(context)).clamp(2.0, 6.0),
            ),
            child: Container(
              width: 0.140 * getWidth(context),
              height: 0.140 * getWidth(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1),
                image: DecorationImage(
                  image: NetworkImage(Utils.listOfImg[index]['img'] ?? ''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  static Widget imageGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(Utils.listOfImg.length, (index) {
        return Padding(
          padding: EdgeInsets.all(2.0 * getResponsive(context)),
          child: Image.network(
            Utils.listOfImg[index]['img'] ?? '',
            width: 0.55 * getWidth(context),
            height: 0.55 * getHeight(context),
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }

  static Widget iconWithText({
    required BuildContext context,
    required IconData icon,
    //required String text,
  }) {
    return Row(
      children: [
        Icon(icon, size: 18 * getResponsive(context)),
        SizedBox(width: 0.05 * getWidth(context)),
        //  Text(text, style: TextStyle(fontSize: 15 * getResponsive(context))),
      ],
    );
  }

  static Widget profileHeader({
    required BuildContext context,
    required String backgroundImagePath,
    required String avatarImagePath,
  }) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 0.190 * getHeight(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(backgroundImagePath),
              ),
            ),
          ),
          Positioned(
            bottom: -45 * getResponsive(context),
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,

              // child: CircleAvatar(
              //   radius: 40 * getResponsive(context),
              //   backgroundImage: AssetImage(avatarImagePath),
              // ),

              // child: ClipOval(
              //   child: Image.asset(
              //     avatarImagePath,
              //     width: 80 * getResponsive(context),
              //     height: 80 * getResponsive(context),
              //     fit: BoxFit.cover,
              //     alignment: Alignment.center,
              //   ),
              // ),
              child: Container(
                width: 80 * getResponsive(context),
                height: 80 * getResponsive(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 21, 20, 20),
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: AssetImage(avatarImagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget verticalSpace(double height, BuildContext context) =>
      SizedBox(height: height * getHeight(context));

  static Widget horizontalSpace(double width, BuildContext context) =>
      SizedBox(width: width * getWidth(context));

  static showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => SizedBox(
            height: 0.10 * getHeight(context),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.more),
                  title: Text('About us'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AboutScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
    );
  }
}
