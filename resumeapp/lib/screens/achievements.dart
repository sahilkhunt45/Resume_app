import 'package:flutter/material.dart';

import '../globals.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  List<Row> allTextFields3 = [];
  List<TextEditingController> allControllers3 = [];
  @override
  initState() {
    super.initState();
    allControllers3.add(TextEditingController());
    allControllers3.add(TextEditingController());

    allTextFields3.add(getTextField(i: 0, row: Row()));
    allTextFields3.add(getTextField(i: 1, row: Row()));
  }

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0475ff),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: const Text(
                "Achievements",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              color: Color(0xff0475ff),
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              height: _height * 0.35,
              width: _width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter Your Achievements",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...allTextFields3
                        .map(
                          (e) => getTextField(
                              i: allTextFields3.indexOf(e), row: e),
                        )
                        .toList(),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: _width,
                      child: SizedBox.expand(
                        child: OutlinedButton(
                          child: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              allControllers3.add(TextEditingController());
                              allTextFields3.add(getTextField(
                                  i: allTextFields3.length, row: Row()));
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      child: Text("SAVE"),
                      onPressed: () {
                        setState(() {
                          allControllers3.forEach(
                            (e) {
                              Global.achievements.add(e.text);
                            },
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row getTextField({required int i, required Row row}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: allControllers3[i],
            decoration:
                InputDecoration(hintText: "Exceeded sales 17% avearage"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () {
            setState(() {
              allControllers3.removeAt(i);
              allTextFields3.remove(row);
            });
          },
        ),
      ],
    );
  }
}
