import 'package:flutter/material.dart';
import 'package:resumeapp/globals.dart';

class Technical_skills extends StatefulWidget {
  const Technical_skills({Key? key}) : super(key: key);

  @override
  State<Technical_skills> createState() => _Technical_skillsState();
}

class _Technical_skillsState extends State<Technical_skills> {
  List<Row> allTextFields = [];
  List<TextEditingController> allControllers = [];
  @override
  initState() {
    super.initState();
    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());

    allTextFields.add(getTextField(i: 0, row: Row()));
    allTextFields.add(getTextField(i: 1, row: Row()));
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
                "Technical Skills",
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
                      "Enter Your Skills",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...allTextFields
                        .map(
                          (e) =>
                              getTextField(i: allTextFields.indexOf(e), row: e),
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
                              allControllers.add(TextEditingController());
                              allTextFields.add(getTextField(
                                  i: allTextFields.length, row: Row()));
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
                          allControllers.forEach(
                            (e) {
                              Global.technicalskills.add(e.text);
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
            controller: allControllers[i],
            decoration:
                InputDecoration(hintText: "C Programming,Web Technical"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () {
            setState(() {
              allControllers.removeAt(i);
              allTextFields.remove(row);
            });
          },
        ),
      ],
    );
  }
}
