import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';

import '../globals.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  final imageo = pw.MemoryImage(
    File(Global.image!.path).readAsBytesSync(),
  );
  final pdf = pw.Document();

  @override
  initState() {
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  child: pw.Column(
                    children: [
                      pw.Text(
                        "Personal Detail",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Divider(
                        thickness: 2,
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Name : ${Global.name}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Email : ${Global.email}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Mob No. : ${Global.number}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Address : ${Global.location}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Date of Birth : ${Global.day}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Language Known : English,Hindi,Gujrati",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Marital Status : Single",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Nationality : ${Global.nationality}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          pw.Spacer(),
                          pw.Column(
                            children: [
                              pw.Container(
                                height: 80,
                                width: 110,
                                child: pw.Image(imageo),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              pw.Expanded(
                flex: 4,
                child: pw.Container(
                  child: pw.Column(
                    children: [
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Education",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Course : ${Global.course_degree}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "School/College/Institute : ${Global.where}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "School/College/Institute : ${Global.where2}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Year of Pass : ${Global.passing_year}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Experiences",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Company Name : ${Global.company_name}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "School/College/Institute : ${Global.testing}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Role : ${Global.role}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Date Joined : ${Global.date_joined}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Date Exit : ${Global.date_exit}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Technical Skills",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Technical Skills : ${Global.technicalskills}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Interest/Hobbies",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Technical Skills : ${Global.interest_hobbies}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Projects",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Project Tile : ${Global.projectstile}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Roles : ${Global.role2}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Technologies : ${Global.Technology}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Project Description : ${Global.project_description}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Achievements",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Technical Skills : ${Global.achievements}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "References",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Reference Name : ${Global.reference_name}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Designation : ${Global.Designation}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Institute : ${Global.organization}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Divider(thickness: 2),
                      pw.Text(
                        "Declaration",
                        style: pw.TextStyle(
                          fontSize: 15,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(width: 25),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Declaration : ${Global.description2}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Date : ${Global.date2}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                              pw.Text(
                                "Place : ${Global.place2}",
                                style: const pw.TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        })); // Pag
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              Directory? dir = await getExternalStorageDirectory();
              File file = File("${dir!.path}/resume.pdf");

              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.save_alt),
          ),
          IconButton(
            onPressed: () async {
              Uint8List bytes = await pdf.save();
              await Printing.layoutPdf(onLayout: ((format) => bytes));
            },
            icon: const Icon(Icons.print),
          ),
        ],
        title: const Text("pdf"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  const Text(
                    "Personal Detail",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : ${Global.name}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Email : ${Global.email}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Mob No. : ${Global.number}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Address : ${Global.location}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Date of Birth : ${Global.day}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          const Text(
                            "Language Known : English,Hindi,Gujrati",
                            style: TextStyle(fontSize: 10),
                          ),
                          const Text(
                            "Marital Status : Single",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Nationality : ${Global.nationality}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  const Divider(thickness: 2),
                  const Text(
                    "Education",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Course : ${Global.course_degree}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "School/College/Institute : ${Global.where}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "School/College/Institute : ${Global.where2}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Year of Pass : ${Global.passing_year}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Experiences",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company Name : ${Global.company_name}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "School/College/Institute : ${Global.testing}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Role : ${Global.role}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Date Joined : ${Global.date_joined}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Date Exit : ${Global.date_exit}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Technical Skills",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Technical Skills : ${Global.technicalskills}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Interest/Hobbies",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Technical Skills : ${Global.interest_hobbies}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Project Tile : ${Global.projectstile}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Roles : ${Global.role2}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Technologies : ${Global.Technology}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Project Description : ${Global.project_description}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Achievements",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Technical Skills : ${Global.achievements}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "References",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reference Name : ${Global.reference_name}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Designation : ${Global.Designation}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Institute : ${Global.organization}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 2),
                  const Text(
                    "Declaration",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Declaration : ${Global.description2}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Date : ${Global.date2}",
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Place : ${Global.place2}",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  //
  // Future<Uint8List> fire() async {
  //   final image1 =
  //       (await rootBundle.load("${Global.image}")).buffer.asUint8List();
  // }
}
