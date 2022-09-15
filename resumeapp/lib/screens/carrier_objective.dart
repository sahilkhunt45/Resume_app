import 'package:flutter/material.dart';

import '../globals.dart';

class Carrier extends StatefulWidget {
  const Carrier({Key? key}) : super(key: key);

  @override
  State<Carrier> createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  @override
  final GlobalKey<FormState> carrierFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> carrierFormkey2 = GlobalKey<FormState>();
  final TextEditingController carrierController = TextEditingController();
  final TextEditingController carrierController2 = TextEditingController();

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
                "Carrier Objective",
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
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(15),
                  height: _height * 0.35,
                  width: _width,
                  color: Colors.white,
                  child: Form(
                    key: carrierFormkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Carrier Objective",
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
                          maxLines: 7,
                          controller: carrierController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Desciption first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.description = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Desciption",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            //  label: Text("Description"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(15),
                  height: _height * 0.24,
                  width: _width,
                  color: Colors.white,
                  child: Form(
                    key: carrierFormkey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Carrier Designation\n(Experienced Candidate)",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: carrierController2,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Carrier Designation first";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.description = val;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Software Engineer",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            label: const Text("Carrier Designation"),
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
                        if (carrierFormkey2.currentState!.validate()) {
                          carrierFormkey2.currentState!.save();
                        }
                        if (carrierFormkey.currentState!.validate()) {
                          carrierFormkey.currentState!.save();
                        }
                      },
                      child: const Text("Save"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        carrierFormkey.currentState!.reset();
                        carrierFormkey2.currentState!.reset();
                        carrierController2.clear();

                        setState(() {
                          Global.description = null;
                        });
                      },
                      child: const Text("Clear"),
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
