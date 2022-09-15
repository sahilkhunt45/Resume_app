import 'package:flutter/material.dart';

class Workspace extends StatefulWidget {
  const Workspace({Key? key}) : super(key: key);

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  List<Map<String, dynamic>> alldata = [
    {
      'no': 1,
      'icon': 'assets/icons/1.png',
      'text': "Contact info",
      'page': 'contactinfo',
    },
    {
      'no': 2,
      'icon': 'assets/icons/2.png',
      'text': "Carrier Objective",
      'page': 'carrier_objective',
    },
    {
      'no': 3,
      'icon': 'assets/icons/3.png',
      'text': "Personal Details",
      'page': 'personal_details',
    },
    {
      'no': 4,
      'icon': 'assets/icons/4.png',
      'text': "Education",
      'page': 'education',
    },
    {
      'no': 5,
      'icon': 'assets/icons/5.png',
      'text': "Experiences",
      'page': 'experience',
    },
    {
      'no': 6,
      'icon': 'assets/icons/6.png',
      'text': "Technical Skills",
      'page': 'technical_skills',
    },
    {
      'no': 7,
      'icon': 'assets/icons/7.png',
      'text': "Interest/Hobbies",
      'page': 'hobbies',
    },
    {
      'no': 8,
      'icon': 'assets/icons/8.png',
      'text': "Projects",
      'page': 'projects',
    },
    {
      'no': 9,
      'icon': 'assets/icons/9.png',
      'text': "Achievements",
      'page': 'achievements',
    },
    {
      'no': 10,
      'icon': 'assets/icons/10.png',
      'text': "References",
      'page': 'references',
    },
    {
      'no': 11,
      'icon': 'assets/icons/11.png',
      'text': "Declaration",
      'page': 'declaration',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('pdf_page');
            },
            icon: Icon(Icons.account_box_outlined),
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff0475ff),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: const Color(0xff0475ff),
              width: double.infinity,
              child: const Text(
                "Build Options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: alldata
                  .map(
                    (e) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(e['page']);
                          },
                          child: Container(
                            height: 40,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  e['icon'],
                                  scale: 13,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  e['text'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_ios),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
