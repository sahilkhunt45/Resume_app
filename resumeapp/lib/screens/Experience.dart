import 'package:flutter/material.dart';

import '../globals.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  dynamic radioGrpval;
  final GlobalKey<FormState> experienceFormkey = GlobalKey<FormState>();

  final TextEditingController companynameController = TextEditingController();
  final TextEditingController testingController = TextEditingController();
  final TextEditingController rolesController = TextEditingController();
  final TextEditingController date_joinedController = TextEditingController();
  final TextEditingController date_exitController = TextEditingController();

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                "Experience",
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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(25),
                    height: _height * 0.8,
                    width: _width,
                    color: Colors.white,
                    child: Form(
                      key: experienceFormkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company Name",
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
                            controller: companynameController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Company Name first";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.company_name = val;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "New Enterprise,San Francisco",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "School/College/Institute",
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
                            controller: testingController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your School/College/Institute first";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.testing = val;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Quality Test Engineer",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Roles(optional)",
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
                            controller: rolesController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Role first";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.role = val;
                              });
                            },
                            maxLines: 2,
                            decoration: InputDecoration(
                              hintText:
                                  "Working with team members to come up with new concepts and product analysis...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Employeed Status",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "1",
                                groupValue: radioGrpval,
                                onChanged: (val) {
                                  setState(() {
                                    radioGrpval = val;
                                  });
                                },
                              ),
                              Text(
                                "Previously Employeed",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: (radioGrpval == "1")
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                              Radio(
                                value: "2",
                                groupValue: radioGrpval,
                                onChanged: (val) {
                                  setState(() {
                                    radioGrpval = val;
                                  });
                                },
                              ),
                              Text(
                                "Currently Employeed",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: (radioGrpval == "2")
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Container(
                              child: Divider(color: Colors.grey.shade700)),
                          SizedBox(
                            height: 10,
                          ),
                          (radioGrpval == "1")
                              ? Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Date Joined",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey.shade700),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 15, right: 10),
                                          height: 60,
                                          width: _width / 3,
                                          child: TextFormField(
                                            controller: date_joinedController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your date first";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.date_joined = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                top: 20,
                                                left: 5,
                                              ),
                                              hintText: " DD/MM/YYYY",
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "Date Exit",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey.shade700),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          padding: EdgeInsets.only(left: 24),
                                          alignment: Alignment.topRight,
                                          height: 60,
                                          width: _width / 3,
                                          child: TextFormField(
                                            controller: date_exitController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your exit date first";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.date_exit = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                top: 20,
                                                left: 5,
                                              ),
                                              hintText: " DD/MM/YYYY",
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Container(),
                          (radioGrpval == "2")
                              ? Column(
                                  children: [
                                    Text(
                                      "Date Joined",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey.shade700),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 10),
                                      height: 60,
                                      width: _width / 3,
                                      child: TextFormField(
                                        controller: date_joinedController,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your date first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.date_joined = val;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                            top: 20,
                                            left: 5,
                                          ),
                                          hintText: " DD/MM/YYYY",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (experienceFormkey.currentState!
                                      .validate()) {
                                    experienceFormkey.currentState!.save();
                                  }
                                },
                                child: Text("Save"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  experienceFormkey.currentState!.reset();

                                  companynameController.clear();
                                  testingController.clear();
                                  rolesController.clear();
                                  date_exitController.clear();
                                  date_joinedController.clear();

                                  setState(() {
                                    Global.company_name = null;
                                    Global.testing = null;
                                    Global.role = null;
                                    Global.date_joined = null;
                                    Global.date_exit = null;
                                    radioGrpval = false;
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
