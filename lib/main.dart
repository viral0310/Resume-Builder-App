import 'package:flutter/material.dart';
import 'package:resume/pages/Achievements.dart';
import 'package:resume/pages/Carrier_Objective.dart';
import 'package:resume/pages/Decoration.dart';
import 'package:resume/pages/Education.dart';
import 'package:resume/pages/Experience.dart';
import 'package:resume/pages/Interest_Hobbies.dart';
import 'package:resume/pages/Personal_Details.dart';
import 'package:resume/pages/Project.dart';
import 'package:resume/pages/References.dart';
import 'package:resume/pages/Resume_Workspace_Photo_Info.dart';
import 'package:resume/pages/Technical_Skills.dart';
import 'package:resume/pages/home_page.dart';
import 'package:resume/pages/pdf_page.dart';
import 'package:resume/pages/resume_workspace.dart';
import 'package:resume/pages/resume_workspace_contact_info.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/options': (context) => const Resume_Workspace(),
      '/contact': (context) => const Resume_Workspace_Contact_Info(),
      '/Photo': (context) => const Resume_Workspace_Photo_Info(),
      '/carrier_objective': (context) => const Carrier_Objective(),
      '/personal_details': (context) => const Personal_Details(),
      '/Education': (context) => const Education(),
      '/Experience': (context) => const Experience(),
      '/Technical_Skills': (context) => const Technical_Skills(),
      '/Interest_Hobbies': (context) => const Interest_Hobbies(),
      '/Project': (context) => const Project(),
      '/Achievements': (context) => const Achievements(),
      '/References': (context) => const References(),
      '/Declaration': (context) => const Declaration(),
      '/pdfpage': (context) => const PDFPage(),
    },
  ));
}
