import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../globals.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  final ImagePicker _picker = ImagePicker();
  int IndexVal = 0;
  Color _color1 = Colors.white;
  Color _color3 = Colors.white;
  Color _color4 = const Color(0xff0475ff);
  final GlobalKey<FormState> contactFormkey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController callController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff0475ff),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xff0475ff),
              width: double.infinity,
              child: Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        IndexVal = 0;
                        _color1 = _color4;
                        _color4 = _color3;
                        _color3 = _color1;
                      });
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 27,
                          ),
                          const Text(
                            "Contact",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 9.90,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            color: _color1,
                            height: 2,
                            width: _width / 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        IndexVal = 1;
                        _color1 = _color4;
                        _color4 = _color3;
                        _color3 = _color1;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 27,
                          ),
                          const Text(
                            "Photo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 9.90,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            color: _color4,
                            height: 2,
                            width: _width / 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: IndexedStack(
              index: IndexVal,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(15),
                      height: _height * 0.6,
                      width: _width,
                      color: Colors.white,
                      child: Form(
                        key: contactFormkey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: nameController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your name first";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.name = val;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Name",
                                label: const Text("Name"),
                                icon: Image.asset(
                                  "assets/icons/user.png",
                                  scale: 12,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your email first";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.email = val;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Email",
                                label: const Text("Email"),
                                icon: Image.asset(
                                  "assets/icons/email.png",
                                  scale: 12,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: callController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your number first";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.number = val;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Phone",
                                label: const Text("Phone Number"),
                                icon: Image.asset(
                                  "assets/icons/smartphone-call.png",
                                  scale: 12,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: addressController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your address first";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.location = val;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Address (Street,Building No)",
                                label: const Text("Address"),
                                icon: Image.asset(
                                  "assets/icons/pin.png",
                                  scale: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 60),
                              child: TextFormField(
                                controller: address2Controller,
                                onSaved: (val) {
                                  setState(() {
                                    Global.location2 = val;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: "Address Line 2",
                                  label: Text("Address "),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 60),
                              child: TextFormField(
                                controller: address3Controller,
                                onSaved: (val) {
                                  setState(() {
                                    Global.location3 = val;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: "Address Line 3",
                                  label: Text("Address"),
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
                            if (contactFormkey.currentState!.validate()) {
                              contactFormkey.currentState!.save();
                            }
                          },
                          child: const Text("Save"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            contactFormkey.currentState!.reset();
                            nameController.clear();
                            emailController.clear();
                            callController.clear();
                            addressController.clear();
                            address2Controller.clear();
                            address3Controller.clear();

                            setState(() {
                              Global.name = null;
                              Global.email = null;
                              Global.number = null;
                              Global.location = null;
                              Global.location2 = null;
                              Global.location3 = null;
                            });
                          },
                          child: const Text("Clear"),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: _height * 0.4,
                      width: _width,
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundImage: (Global.image != null)
                                ? FileImage(Global.image!)
                                : null,
                            radius: 60,
                            backgroundColor: Colors.grey.shade400,
                            child: (Global.image != null)
                                ? const Text("")
                                : const Text(
                                    "ADD",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (context) => AlertDialog(
                                  title: const Text("Add Photo"),
                                  actions: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          child: TextButton(
                                            onPressed: () async {
                                              XFile? pickedFile =
                                                  await _picker.pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              setState(() {
                                                Navigator.of(context).pop();
                                                Global.image =
                                                    File(pickedFile!.path);
                                              });
                                            },
                                            child: const Text(
                                              "Take your photo\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          child: TextButton(
                                            onPressed: () async {
                                              XFile? pickedFile =
                                                  await _picker.pickImage(
                                                source: ImageSource.gallery,
                                              );
                                              setState(() {
                                                Navigator.of(context).pop();
                                                Global.image =
                                                    File(pickedFile!.path);
                                              });
                                            },
                                            child: const Text(
                                              "Chose Form Gallary\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          child: TextButton(
                                            onPressed: () async {
                                              setState(() {
                                                Navigator.of(context).pop();
                                                Global.image = null;
                                              });
                                            },
                                            child: Row(
                                              children: [
                                                const Icon(Icons.delete),
                                                const Text(
                                                  "Delete Your Photo",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Icon(Icons.add),
                            mini: true,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Save"),
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
