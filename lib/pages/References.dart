import 'package:flutter/material.dart';

import '../gloabl.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  final GlobalKey<FormState> References_formkey = GlobalKey<FormState>();
  final TextEditingController Reference_name_controller =
      TextEditingController();
  final TextEditingController Designation_controller = TextEditingController();
  final TextEditingController organization_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('References'),
        elevation: 0,
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        color: Colors.grey.shade300,
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
                key: References_formkey,
                child: Column(
                  children: [
                    //company name
                    const Align(
                      alignment: Alignment(-0.85, 0),
                      child: Text(
                        "References Name",
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
                            Global.references_name = val;
                          });
                        },
                        controller: Reference_name_controller,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          hintText: "Suresh Shah",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    //school/college/institute
                    const Align(
                      alignment: Alignment(-0.85, 0),
                      child: Text(
                        "Designation",
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
                            Global.designation = val;
                          });
                        },
                        controller: Designation_controller,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          hintText: "Marketing Manager, ID-342332",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    //Roles
                    const Align(
                      alignment: Alignment(-0.85, 0),
                      child: Text(
                        "Organization/Institute",
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
                            Global.organization = val;
                          });
                        },
                        controller: organization_controller,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          hintMaxLines: 3,
                          hintText: "Green Energy Pvt. Ltd",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (References_formkey.currentState!.validate()) {
                              References_formkey.currentState!.save();
                              print("des: ${Global.references_name}");
                              print("s a : ${Global.designation}");
                              print("${Global.organization}");
                            }
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            References_formkey.currentState!.reset();
                            Reference_name_controller.clear();
                            Designation_controller.clear();
                            organization_controller.clear();

                            setState(() {
                              Global.references_name = "";
                              Global.designation = "";
                              Global.organization = "";
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
            ),
          ],
        ),
      ),
    );
  }
}
