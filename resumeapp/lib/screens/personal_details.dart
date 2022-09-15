import 'package:flutter/material.dart';

import '../globals.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({Key? key}) : super(key: key);

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
  @override
  final GlobalKey<FormState> personaldetailkey = GlobalKey<FormState>();

  final TextEditingController dobController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();

  dynamic radioGrpval = "v";
  bool english_checkBoxval = false;
  bool hindi_checkBoxval = false;
  bool gujarati_checkBoxval = false;

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
                "Personal Details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              color: const Color(0xff0475ff),
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(35),
                height: _height / 1.2,
                width: _width,
                color: Colors.white,
                child: Form(
                  key: personaldetailkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "DOB",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: dobController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your birth date first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.day = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Marital Status",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Single",
                            groupValue: radioGrpval,
                            onChanged: (val) {
                              setState(() {
                                radioGrpval = val;
                              });
                            },
                          ),
                          Text(
                            "Single",
                            style: TextStyle(
                              fontSize: 17,
                              color: (radioGrpval == "Single")
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Married",
                            groupValue: radioGrpval,
                            onChanged: (val) {
                              setState(() {
                                radioGrpval = val;
                              });
                            },
                          ),
                          Text(
                            "Married",
                            style: TextStyle(
                              fontSize: 17,
                              color: (radioGrpval == "Married")
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Languages Known",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
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
                                english_checkBoxval = val!;
                              });
                            },
                            value: english_checkBoxval,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 17,
                              color: (english_checkBoxval == false)
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
                                hindi_checkBoxval = val!;
                              });
                            },
                            value: hindi_checkBoxval,
                          ),
                          Text(
                            "Hindi",
                            style: TextStyle(
                              fontSize: 17,
                              color: (hindi_checkBoxval == false)
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
                                gujarati_checkBoxval = val!;
                              });
                            },
                            value: gujarati_checkBoxval,
                          ),
                          Text(
                            "Gujarati",
                            style: TextStyle(
                              fontSize: 17,
                              color: (gujarati_checkBoxval == false)
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Nationality",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nationalityController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your nationality first";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Global.nationality = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Ex. Indian",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  label: Text("DOB"),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (personaldetailkey.currentState!.validate()) {
                                personaldetailkey.currentState!.save();
                              }
                            },
                            child: const Text("Save"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              dobController.clear();
                              nationalityController.clear();
                              personaldetailkey.currentState!.reset();
                              setState(() {
                                Global.day = null;
                                Global.nationality = null;
                                radioGrpval = null;
                                english_checkBoxval = false;
                                gujarati_checkBoxval = false;
                                hindi_checkBoxval = false;
                              });
                            },
                            child: const Text("Clear"),
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
