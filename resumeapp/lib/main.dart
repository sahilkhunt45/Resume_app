import 'package:flutter/material.dart';
import 'package:resumeapp/screens/Experience.dart';
import 'package:resumeapp/screens/Homepage.dart';
import 'package:resumeapp/screens/Resume workspace.dart';
import 'package:resumeapp/screens/achievements.dart';
import 'package:resumeapp/screens/carrier_objective.dart';
import 'package:resumeapp/screens/declaration.dart';
import 'package:resumeapp/screens/education.dart';
import 'package:resumeapp/screens/hobbies.dart';
import 'package:resumeapp/screens/options/contactinfo.dart';
import 'package:resumeapp/screens/pdf_page.dart';
import 'package:resumeapp/screens/personal_details.dart';
import 'package:resumeapp/screens/projects.dart';
import 'package:resumeapp/screens/references.dart';
import 'package:resumeapp/screens/technical%20skills.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      initialRoute: 'homepage',
      routes: {
        'homepage': (context) => const Homepage(),
        'workspace': (context) => const Workspace(),
        'contactinfo': (context) => const ContactInfo(),
        'carrier_objective': (context) => const Carrier(),
        'technical_skills': (context) => const Technical_skills(),
        'personal_details': (context) => const Personal_Details(),
        'education': (context) => const Education(),
        'experience': (context) => const Experience(),
        'hobbies': (context) => const Hobbies(),
        'achievements': (context) => const Achievements(),
        'projects': (context) => const Projects(),
        'references': (context) => const References(),
        'declaration': (context) => const Declaration(),
        'pdf_page': (context) => const PDF(),
      },
    ),
  );
}
