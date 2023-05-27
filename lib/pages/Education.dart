import 'package:flutter/material.dart';

import '../gloabl.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final GlobalKey<FormState> education_formkey = GlobalKey<FormState>();

  final TextEditingController course_degree_controller =
      TextEditingController();
  final TextEditingController school_college1_controller =
      TextEditingController();
  final TextEditingController school_college2_controller =
      TextEditingController();
  final TextEditingController yearofpass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        elevation: 0,
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.blue,
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Form(
                    key: education_formkey,
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            "Course/Degree",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 15, bottom: 20),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Description first....";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.course_Degree = val;
                              });
                            },
                            controller: course_degree_controller,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintText: "B.Tech information Technology",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            "School/College/Institute",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 15, bottom: 20),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Description first....";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.school_college1 = val;
                              });
                            },
                            controller: school_college1_controller,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintText: "Bhagavan Mahavir University",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            "School/College/Institute",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 15, bottom: 20),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Description first....";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.school_college2 = val;
                              });
                            },
                            controller: school_college2_controller,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintText: "70% (or) 7.0 CGPA",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            "Year of Pass",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 15, right: 15, bottom: 20),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Description first....";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Global.yearofpass = val;
                              });
                            },
                            //keyboardType: ,
                            controller: yearofpass_controller,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              hintText: "B.Tech information Technology",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (education_formkey.currentState!
                                    .validate()) {
                                  education_formkey.currentState!.save();
                                }
                              },
                              child: const Text("SAVE"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                education_formkey.currentState!.reset();
                                course_degree_controller.clear();
                                school_college1_controller.clear();
                                school_college2_controller.clear();
                                yearofpass_controller.clear();

                                setState(() {
                                  Global.course_Degree = "";
                                  Global.school_college1 = "";
                                  Global.school_college2 = "";
                                  Global.yearofpass = "";
                                });
                              },
                              child: const Text("CLEAR"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
