import 'package:flutter/material.dart';

import '../globals.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  final GlobalKey<FormState> educaionFormkey = GlobalKey<FormState>();

  final TextEditingController courseController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController place2Controller = TextEditingController();
  final TextEditingController yearController = TextEditingController();

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
                "Education",
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(25),
                  height: _height * 0.70,
                  width: _width,
                  color: Colors.white,
                  child: Form(
                    key: educaionFormkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course/Degree",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: courseController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Course/Degree first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.course_degree = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "B.Teach Information Technology",
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
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: placeController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your School/College/Institute first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.where = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "V.N.S.G.U University",
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
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: place2Controller,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Result first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.where2 = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "70% or 7.0 CGPA",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Year Of Pass",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: yearController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Passing Year first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.passing_year = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "2019",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (educaionFormkey.currentState!.validate()) {
                          educaionFormkey.currentState!.save();
                        }
                      },
                      child: Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        educaionFormkey.currentState!.reset();

                        courseController.clear();
                        placeController.clear();
                        place2Controller.clear();
                        yearController.clear();

                        setState(() {
                          Global.course_degree = null;
                          Global.where = null;
                          Global.where2 = null;
                          Global.passing_year = null;
                        });
                      },
                      child: Text("Clear"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
