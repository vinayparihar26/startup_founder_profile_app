import 'package:flutter/material.dart';
import 'package:startup_founder_profile_app/responsive.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About us'), centerTitle: true),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Who is Ritesh Agarwal?',
                  style: TextStyle(
                    fontSize: 24*getResponsive(context),
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                Text(
                  'Ritesh Agarwal, born in 1993 in Odisha, India, is the Founder and Group CEO of OYO, a leading player in the hospitality industry. Growing up in a small town, Ritesh’s family ran a local shop, giving him early exposure to business. He attended St. Johns Senior Secondary School before moving to Delhi for his higher studies. However, he soon decided to drop out to pursue his entrepreneurial dreams.',
                ),
                Text(
                  'In 2011, Ritesh founded Oravel Stays, which later became OYO Rooms in 2013. His idea was to provide affordable and reliable accommodation for travellers, disrupting the budget hospitality sector in India. Ritesh’s unique approach led him to be selected for the Thiel Fellowship in 2013, a program that supports young entrepreneurs. He was the first Asian resident to be accepted to the Thiel Fellowship, Apart from leading OYO, Ritesh gained great recognition as a judge on Shark Tank India. In 2023, he became the youngest "Shark" on the show, where his practical advice and investment skills have made him a respected figure among budding entrepreneurs.Today, Ritesh Agarwal’s OYO Rooms operates globally, and he continues to play a key role in shaping India’s startup ecosystem. With his sharp business skills and investment acumen, Ritesh is undoubtedly one of the most influential young entrepreneurs in India.',
                ),
                SizedBox(height: 0.020 * getHeight(context)),
                Text(
                  "List of Ritesh Agarwal Investments Here is a comprehensive list of all the Ritesh Agarwal invested companies as sourced from Tracxn (as of February 2025):",
                ),

                DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Ritesh Agarwal Invested Companies',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Founded Year',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Headquarters',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('JoySpoon')),
                        DataCell(Text('2020')),
                        DataCell(Text('Gujarat')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Bambinos')),
                        DataCell(Text('2020')),
                        DataCell(Text('Karnataka')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('BorderPlus')),
                        DataCell(Text('2025')),
                        DataCell(Text('Maharashtra Professor')),
                      ],
                    ),

                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Bambinos')),
                        DataCell(Text('2020')),
                        DataCell(Text('Karnataka')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Shyle')),
                        DataCell(Text('2025')),
                        DataCell(Text('Maharashtra Professor')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Aquapeya')),
                        DataCell(Text('2020')),
                        DataCell(Text('Karnataka')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Speed ')),
                        DataCell(Text('2025')),
                        DataCell(Text('Delhi')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
