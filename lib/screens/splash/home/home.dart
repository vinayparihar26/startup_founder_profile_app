import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/screens/profile/profile_page.dart';
import 'package:startup_founder_profile_app/widgets/ui_helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var startupFounders = [
    'Elon Musk',
    'Jeff Bezos',
    'Mark Zuckerberg',
    'Larry Page',
    'Sergey Brin',
    'Jack Dorsey',
    'Reed Hastings',
    'Brian Chesky',
    'Travis Kalanick',
    'Evan Spiegel',
  ];

  var startUpFounderImg = [
    {
      "name": "Ritesh Agarwal",
      "company": "OYO Rooms",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Ritesh-Agarwal.jpeg",
    },
    {
      "name": "Sachin Bansal and Binny Bansal",
      "company": "Flipkart",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Sachin-Bansal-and-Binny-Bansal.jpeg",
    },
    {
      "name": "Anand Mahindra",
      "company": "Mahindra Group",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Anand-Mahindra.jpeg",
    },

    {
      "name": "Uday Kotak",
      "company": "Kotak Mahindra Bank",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Uday-Kotak.jpeg",
    },
    {
      "name": "Kiran Mazumdar-Shaw",
      "company": "Biocon",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Kiran-Mazumdar-Shaw.jpeg",
    },
    {
      "name": "Shradha Sharma",
      "company": "YourStory",
      "imge":
          "https://www.founderjar.com/wp-content/uploads/2022/09/Shradha-Sharma.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: IconButton(
        
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          icon: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/profile.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UiHelper.customText(text: "Top Startup Founders"),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: startUpFounderImg.length,

              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        startUpFounderImg[index]['imge']!,
                      ),
                    ),
                    title: Text(startUpFounderImg[index]['name']!),
                    subtitle: Text(startUpFounderImg[index]['company']!),
                  ),
                );
              },
            ),
          ),

          UiHelper.customText(text: "Explore Founders"),
          SizedBox(height: 10),

          Text(
            'Discover and connect with the best startup founders in the industry.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
