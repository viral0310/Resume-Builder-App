import 'package:flutter/material.dart';

import '../gloabl.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  final GlobalKey<FormState> projects_formkey = GlobalKey<FormState>();
  final TextEditingController project_tile_Controller = TextEditingController();
  final TextEditingController your_role_Controller = TextEditingController();
  final TextEditingController technologies_Controller = TextEditingController();
  final TextEditingController project_desc_Controller = TextEditingController();

  bool c_programming = false;
  bool cpp = false;
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.blue,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                  ),
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Form(
                    key: projects_formkey,
                    child: Column(
                      children: [
                        //project tile
                        const Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            "Project Tile",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.project_tile = val;
                            });
                          },
                          controller: project_tile_Controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "Resume Builder App",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        //Technologies
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            "Technologies",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "C Programming",
                            style: TextStyle(
                                color: c_programming == true
                                    ? Colors.blue
                                    : Colors.grey),
                          ),
                          value: c_programming,
                          onChanged: (val) {
                            setState(() {
                              c_programming = val!;
                              if (c_programming == true) {
                                Global.techno.add('c Programming');
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "C++",
                            style: TextStyle(
                                color: cpp == true ? Colors.blue : Colors.grey),
                          ),
                          value: cpp,
                          onChanged: (val) {
                            setState(() {
                              cpp = val!;
                              if (cpp == true) {
                                Global.techno.add('c++');
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text(
                            "Flutter",
                            style: TextStyle(
                                color: flutter == true
                                    ? Colors.blue
                                    : Colors.grey),
                          ),
                          value: flutter,
                          onChanged: (val) {
                            setState(() {
                              flutter = val!;
                              if (flutter == true) {
                                Global.techno.add('flutter');
                              }
                            });
                          },
                        ),
                        //roles

                        const Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            "Roles",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.your_roles = val;
                            });
                          },
                          controller: your_role_Controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "Organize team members,Code analysis",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //Technologies
                        const Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            "Technologies",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.technologies = val;
                            });
                          },
                          controller: technologies_Controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "5 - Programmers",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //project description
                        const Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            "Project Description",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.project_desc = val;
                            });
                          },
                          controller: project_desc_Controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "Enter Your Project Description",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (projects_formkey.currentState!.validate()) {
                                  projects_formkey.currentState!.save();
                                  print("${Global.project_tile}");
                                  print("${Global.your_roles}");
                                  print("${Global.technologies}");
                                  print("${Global.project_desc}");
                                  print(Global.techno);
                                }
                              },
                              child: const Text(
                                "Save",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                projects_formkey.currentState!.reset();
                                project_tile_Controller.clear();
                                your_role_Controller.clear();
                                technologies_Controller.clear();
                                project_desc_Controller.clear();
                                setState(() {
                                  Global.project_tile = "";
                                  Global.your_roles = "";
                                  Global.technologies = "";
                                  Global.project_desc = "";
                                });
                                Global.techno = [];
                                print(Global.techno);
                              },
                              child: const Text("Clear",
                                  style: TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
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
