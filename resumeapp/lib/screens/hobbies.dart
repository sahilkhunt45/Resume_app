import 'package:flutter/material.dart';

import '../globals.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  List<Row> allTextFields2 = [];
  List<TextEditingController> allControllers2 = [];
  @override
  initState() {
    super.initState();
    allControllers2.add(TextEditingController());
    allControllers2.add(TextEditingController());

    allTextFields2.add(getTextField(i: 0, row: Row()));
    allTextFields2.add(getTextField(i: 1, row: Row()));
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
                "Interest/Hobbies",
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
                      "Enter Your Interest/Hobbies",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...allTextFields2
                        .map(
                          (e) => getTextField(
                              i: allTextFields2.indexOf(e), row: e),
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
                              allControllers2.add(TextEditingController());
                              allTextFields2.add(getTextField(
                                  i: allTextFields2.length, row: Row()));
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
                          allControllers2.forEach(
                            (e) {
                              Global.interest_hobbies.add(e.text);
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
            controller: allControllers2[i],
            decoration:
                InputDecoration(hintText: "Travelling/Fishing,Painting"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () {
            setState(() {
              allControllers2.removeAt(i);
              allTextFields2.remove(row);
            });
          },
        ),
      ],
    );
  }
}
