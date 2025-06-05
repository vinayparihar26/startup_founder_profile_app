import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/responsive.dart';
import 'package:startup_founder_profile_app/widgets/ui_helper.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              UiHelper.showBottomSheet(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                UiHelper.profileHeader(
                  context: context,
                  backgroundImagePath: 'lib/assets/images/oyo1.png',
                  avatarImagePath: 'lib/assets/images/ritesh.png',
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    //UiHelper.verticalSpace(0.120, context),
                    SizedBox(height: 0.09 * getHeight(context)),
                    UiHelper.customText1(
                      text: 'Ritesh Agarwal ',
                      fontSize: 20 * getResponsive(context),
                    ),
                    UiHelper.verticalSpace(0.010, context),
                    UiHelper.customText1(
                      text: 'Founder and Group CEO of OYO ',
                      fontSize: 16 * getResponsive(context),
                    ),

                    UiHelper.verticalSpace(0.015, context),

                    Row(
                      children: [
                        UiHelper.iconWithText(
                          context: context,
                          icon: FontAwesomeIcons.linkedinIn,
                          //  text: 'riteshtlinkedin',
                        ),
                        UiHelper.horizontalSpace(0.050, context),

                        UiHelper.iconWithText(
                          context: context,
                          icon: FontAwesomeIcons.xTwitter,
                          //text: 'riteshtwitter',
                        ),

                        UiHelper.horizontalSpace(0.050, context),

                        UiHelper.iconWithText(
                          context: context,
                          icon: FontAwesomeIcons.whatsapp,
                          //text: 'riteshtwitter',
                        ),

                        UiHelper.horizontalSpace(0.050, context),

                        UiHelper.iconWithText(
                          context: context,
                          icon: FontAwesomeIcons.instagram,
                          //text: 'riteshtwitter',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            UiHelper.verticalSpace(0.025, context),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.statColumn(
                  context: context,
                  count: '15',
                  label: 'Posts',
                ),

                UiHelper.horizontalSpace(0.120, context),
                UiHelper.statColumn(
                  context: context,
                  count: '235K',
                  label: 'Followers',
                ),
                UiHelper.horizontalSpace(0.120, context),
                UiHelper.statColumn(
                  context: context,
                  count: '1220',
                  label: 'Following',
                ),
              ],
            ),

            UiHelper.verticalSpace(0.020, context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customButton(onPressed: () {}, text: 'FOLLOW'),

                UiHelper.horizontalSpace(0.050, context),

                UiHelper.customButton(onPressed: () {}, text: 'MESSAGE'),
              ],
            ),
            UiHelper.verticalSpace(0.020, context),
            Padding(
              padding: EdgeInsets.only(left: 4.0 * getResponsive(context)),
              child: Text(
                'Higlights',
                style: TextStyle(
                  fontSize: 20 * getResponsive(context),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            UiHelper.horizontalAvatarList(context),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: CupertinoColors.destructiveRed,
                  width: 0.150 * getWidth(context),
                  height: 0.004 * getHeight(context),
                ),
              ],
            ),

            UiHelper.imageGrid(context),
          ],
        ),
      ),
    );
  }
}
