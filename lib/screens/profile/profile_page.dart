import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/widgets/ui_helper.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, String>> listOfImg = [
    {
      "img":
          "https://th.bing.com/th/id/OIP.n1qPus9a8VqK0qXDBsqMpAHaEK?w=314&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.XVSuK1SvA5eGjJRxTwONxwHaEK?w=250&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.XS7W3worNcW7MLpqhJ_UkAHaEK?w=307&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.zH_IPjgncuI5Ljfz23h-MgHaEK?w=317&h=180&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.yyTqzr55eOTj91ireB9reAHaDt?w=295&h=174&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.DAKYf4MhT45T_uZQ5pAyUQHaEK?w=299&h=180&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.XS7W3worNcW7MLpqhJ_UkAHaEK?w=308&h=180&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.1-wZSevljKTS23T5lb42QAHaFj?w=211&h=180&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.zH_IPjgncuI5Ljfz23h-MgHaEK?w=317&h=180&c=7&r=0&o=5&pid=1.7",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.yyTqzr55eOTj91ireB9reAHaDt?w=295&h=174&c=7&r=0&o=5&pid=1.7",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.RYjZCSe1uTaYksolPo2FMgHaEK?w=316&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'lib/assets/images/ritesh.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 35),
                    UiHelper.customText1(text: 'Ritesh Agarwal ', fontSize: 18),
                    UiHelper.customText1(
                      text: 'Founder and Group CEO of OYO ',
                      fontSize: 15,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.location),
                            Text(
                              'Mumbai, India',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),

                        SizedBox(width: 25),
                        Row(
                          children: [
                            Icon(Icons.facebook),
                            Text(
                              'riteshfb.com',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text('FOLLOW'),
                ),
                SizedBox(width: 30),
                ElevatedButton(onPressed: () {}, child: Text('MESSAGE')),
              ],
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '15',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  SizedBox(width: 70),
                  Column(
                    children: [
                      Text(
                        '235K',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  SizedBox(width: 70),
                  Column(
                    children: [
                      Text(
                        '1220',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text('Following'),
                    ],
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Higlights',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        listOfImg[index]['img'] ?? '',
                      ),
                    ),
                  );
                },
                itemCount: listOfImg.length,
              ),
            ),

            Container(
              alignment: Alignment.center,
              color: CupertinoColors.destructiveRed,
              width: 50,
              height: 2.5,
            ),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: List.generate(listOfImg.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.network(
                    listOfImg[index]['img'] ?? '',
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
