import 'package:flutter/material.dart';

import '../globals.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  final GlobalKey<FormState> projectkey = GlobalKey<FormState>();

  final TextEditingController projecttileController = TextEditingController();
  final TextEditingController roles2Controller = TextEditingController();
  final TextEditingController TechnologiesController = TextEditingController();
  final TextEditingController projectdesController = TextEditingController();

  dynamic radioGrpval = "Technologies";
  bool C_checkBoxval = false;
  bool CPP_checkBoxval = false;
  bool Flutter_checkBoxval = false;

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
                "Projects",
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
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(35),
                height: _height * 0.95,
                width: _width,
                color: Colors.white,
                child: Form(
                  key: projectkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Projects Tile",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: projecttileController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your project title first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.projectstile = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Resume Builder App",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Technologies",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            onChanged: (val) {
                              setState(() {
                                C_checkBoxval = val!;
                              });
                            },
                            value: C_checkBoxval,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 17,
                              color: (C_checkBoxval == false)
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            onChanged: (val) {
                              setState(() {
                                CPP_checkBoxval = val!;
                              });
                            },
                            value: CPP_checkBoxval,
                          ),
                          Text(
                            "Hindi",
                            style: TextStyle(
                              fontSize: 17,
                              color: (CPP_checkBoxval == false)
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            onChanged: (val) {
                              setState(() {
                                Flutter_checkBoxval = val!;
                              });
                            },
                            value: Flutter_checkBoxval,
                          ),
                          Text(
                            "Gujarati",
                            style: TextStyle(
                              fontSize: 17,
                              color: (Flutter_checkBoxval == false)
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Roles",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 2,
                        controller: roles2Controller,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your role first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.role2 = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Organize team members,Code ananlysis",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Technologies",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: TechnologiesController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your technologies first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.Technology = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "5- Programmers",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Project Desciption",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: projectdesController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your project description first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.project_description = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Enter Your Project Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (projectkey.currentState!.validate()) {
                                projectkey.currentState!.save();
                              }
                            },
                            child: Text("Save"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              projecttileController.clear();
                              TechnologiesController.clear();
                              roles2Controller.clear();
                              projectdesController.clear();
                              setState(() {
                                projectkey.currentState!.reset();
                                Global.projectstile = null;
                                Global.Technology = null;
                                Global.role2 = null;
                                Global.project_description = null;
                                radioGrpval = null;
                                CPP_checkBoxval = false;
                                C_checkBoxval = false;
                                Flutter_checkBoxval = false;
                              });
                            },
                            child: Text("Clear"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
