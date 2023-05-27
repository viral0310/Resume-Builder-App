import 'package:flutter/material.dart';

import '../gloabl.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final GlobalKey<FormState> experience_formkey = GlobalKey<FormState>();
  final TextEditingController company_name_controller = TextEditingController();
  final TextEditingController school_college_controller =
      TextEditingController();
  final TextEditingController roles_controller = TextEditingController();
  final TextEditingController date_joined_controller = TextEditingController();
  final TextEditingController date_exit_Controller = TextEditingController();

  String radioValListTile = "Employed_Status";
  bool switchCase = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
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
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 15,
                  right: 15,
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Form(
                  key: experience_formkey,
                  child: Column(
                    children: [
                      //company name
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Company Name",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 5),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.company_name = val;
                            });
                          },
                          controller: company_name_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "New Enterprise, san Francisco",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      //school/college/institute
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 10),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.institute = val;
                            });
                          },
                          controller: school_college_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintText: "Quality Test Engineer",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      //Roles
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Roles(optional)",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 15, right: 15, bottom: 10),
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Description first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.roles = val;
                            });
                          },
                          controller: roles_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            hintMaxLines: 3,
                            hintText:
                                "Working with team members to come up new concepts and product analysis...",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      //Employed Status

                      Align(
                        alignment: const Alignment(-0.85, 0),
                        child: Text(
                          "Employed Status",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                                title: const Text(
                                  "Previously Employed",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                                //subtitle: const Text("Gender"),
                                //activeColor: Colors.yellowAccent,
                                //selectedTileColor: Colors.yellowAccent,

                                value: "Previously Employed",
                                groupValue: radioValListTile,
                                onChanged: (val) {
                                  setState(() {
                                    radioValListTile = val as String;
                                  });
                                }),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                                title: const Text(
                                  "Currently Employed",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                ),
                                //subtitle: const Text("Gender"),
                                value: "Currently Employed",
                                groupValue: radioValListTile,
                                onChanged: (val) {
                                  setState(() {
                                    radioValListTile = val as String;
                                  });
                                }),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      (radioValListTile == 'Previously Employed')
                          ? Container(
                              child: Column(
                                children: [
                                  const Divider(
                                    thickness: 2,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 90, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Date Joined",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Date Exit",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your Description first....";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            setState(() {
                                              Global.date_joined = val;
                                            });
                                          },
                                          controller: date_joined_controller,
                                          decoration: const InputDecoration(
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            hintText: "DD/MM/YYYY ",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 60,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your Description first....";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            setState(() {
                                              Global.date_exit = val;
                                            });
                                          },
                                          controller: date_exit_Controller,
                                          decoration: const InputDecoration(
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            hintText: "DD/MM/YYYY ",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 80,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (experience_formkey.currentState!
                                              .validate()) {
                                            experience_formkey.currentState!
                                                .save();
                                            print(
                                                "des: ${Global.company_name}");
                                            print("s a : ${Global.institute}");
                                            print("${Global.roles}");
                                            print(
                                                "s a : ${Global.date_joined}");
                                            print("${Global.date_exit}");
                                          }
                                        },
                                        child: const Text(
                                          "Save",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          experience_formkey.currentState!
                                              .reset();
                                          company_name_controller.clear();
                                          school_college_controller.clear();
                                          roles_controller.clear();

                                          date_joined_controller.clear();
                                          date_exit_Controller.clear();

                                          setState(() {
                                            Global.company_name = "";
                                            Global.institute = "";
                                            Global.roles = "";
                                            Global.date_joined = "";
                                            Global.date_exit = "";
                                          });
                                        },
                                        child: const Text("Clear",
                                            style: TextStyle(fontSize: 18)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 15, right: 15, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Divider(
                                    thickness: 2,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Align(
                                    alignment: Alignment(-0.85, 0),
                                    child: Text(
                                      "Date Joined",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 170,
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your Description first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.date_joined = val;
                                        });
                                      },
                                      controller: date_joined_controller,
                                      decoration: const InputDecoration(
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        hintText: "DD/MM/YYYY ",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (experience_formkey.currentState!
                                              .validate()) {
                                            experience_formkey.currentState!
                                                .save();
                                            print(
                                                "des: ${Global.company_name}");
                                            print("s a : ${Global.institute}");
                                            print("${Global.roles}");
                                            print(
                                                "s a : ${Global.date_joined}");
                                          }
                                        },
                                        child: const Text(
                                          "Save",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          experience_formkey.currentState!
                                              .reset();
                                          company_name_controller.clear();
                                          school_college_controller.clear();
                                          roles_controller.clear();

                                          date_joined_controller.clear();

                                          setState(() {
                                            Global.company_name = "";
                                            Global.institute = "";
                                            Global.roles = "";
                                            Global.date_joined = "";
                                          });
                                        },
                                        child: const Text("Clear",
                                            style: TextStyle(fontSize: 18)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                    ],
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
