import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('workspace');
        },
      ),
      appBar: AppBar(
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
                "RESUMES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 12,
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/box.png",
                    scale: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "No Resume + Create New Resume",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
