import 'package:flutter/material.dart';

import '../globals.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  final GlobalKey<FormState> referenceFormkey = GlobalKey<FormState>();

  final TextEditingController reference_nameController =
      TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController organizationController = TextEditingController();

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
                "References",
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
                  height: _height * 0.6,
                  width: _width,
                  color: Colors.white,
                  child: Form(
                    key: referenceFormkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "References Name",
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
                          controller: reference_nameController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your references name first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.reference_name = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Suresh Shah",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Designation",
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
                          controller: designationController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your designation first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.Designation = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Marketing Manager,ID-342332",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Organization/Institute",
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
                          controller: organizationController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your organization first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.organization = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Green Energy Pvt.Ltd",
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
                        if (referenceFormkey.currentState!.validate()) {
                          referenceFormkey.currentState!.save();
                        }
                      },
                      child: Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        referenceFormkey.currentState!.reset();

                        reference_nameController.clear();
                        designationController.clear();
                        organizationController.clear();

                        setState(() {
                          Global.reference_name = null;
                          Global.Designation = null;
                          Global.organization = null;
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
