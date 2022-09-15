import 'package:flutter/material.dart';

import '../globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  bool switchval = false;

  final GlobalKey<FormState> declarationFormkey = GlobalKey<FormState>();

  final TextEditingController description2Controller = TextEditingController();
  final TextEditingController date2Controller = TextEditingController();
  final TextEditingController place2Controller = TextEditingController();

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
          Container(
            height: _height / 14,
            child: const Text(
              "Declaration",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            color: const Color(0xff0475ff),
            width: double.infinity,
          ),
          Column(
            children: [
              (switchval == true)
                  ? Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: _height / 1.5,
                      width: _width,
                      child: Form(
                        key: declarationFormkey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                  height: 40,
                                ),
                                const Text(
                                  "Declaration",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Spacer(),
                                Switch(
                                  value: switchval,
                                  onChanged: (val) {
                                    setState(() {
                                      switchval = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    "assets/icons/target.png",
                                    scale: 7,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: _width / 1.2,
                              child: TextFormField(
                                controller: description2Controller,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your project description first";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.description2 = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintStyle: const TextStyle(fontSize: 20),
                                  contentPadding:
                                      const EdgeInsets.only(left: 100),
                                  hintText: "Description",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  //  label: Text("DOB"),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Container(
                              width: _width * 0.83,
                              child: const Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                Text(
                                  "Date",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade700),
                                ),
                                const Spacer(flex: 15),
                                Text(
                                  "\nPlace(Interview \nVenue/City)",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade700),
                                ),
                                const Spacer(),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  height: 60,
                                  width: _width / 2.5,
                                  child: TextFormField(
                                    controller: date2Controller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your date first";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Global.date2 = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                        top: 20,
                                        left: 5,
                                      ),
                                      hintText: " DD/MM/YYYY",
                                      hintStyle: const TextStyle(
                                        fontSize: 14,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                  width: 30,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 24),
                                  alignment: Alignment.topRight,
                                  height: 60,
                                  width: _width / 2.5,
                                  child: TextFormField(
                                    controller: place2Controller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your venue first";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Global.place2 = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                        top: 20,
                                        left: 5,
                                      ),
                                      hintText: "      Eg.Surat",
                                      hintStyle: const TextStyle(
                                        fontSize: 14,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(flex: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (declarationFormkey.currentState!
                                        .validate()) {
                                      declarationFormkey.currentState!.save();
                                    }
                                  },
                                  child: const Text("Save"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    declarationFormkey.currentState!.reset();

                                    description2Controller.clear();
                                    date2Controller.clear();
                                    place2Controller.clear();

                                    setState(() {
                                      Global.description2 = null;
                                      Global.date2 = null;
                                      Global.place2 = null;
                                    });
                                  },
                                  child: const Text("Clear"),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: _height / 15,
                      width: _width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 40,
                              ),
                              const Text(
                                "Declaration",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const Spacer(),
                              Switch(
                                value: switchval,
                                onChanged: (val) {
                                  setState(() {
                                    switchval = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
