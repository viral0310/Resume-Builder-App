import 'package:flutter/material.dart';

import '../gloabl.dart';

class Carrier_Objective extends StatefulWidget {
  const Carrier_Objective({Key? key}) : super(key: key);

  @override
  State<Carrier_Objective> createState() => _Carrier_ObjectiveState();
}

class _Carrier_ObjectiveState extends State<Carrier_Objective> {
  final GlobalKey<FormState> Carrier_onjective_formkey = GlobalKey<FormState>();

  final TextEditingController carrier_objective_controller =
      TextEditingController();
  final TextEditingController current_designation_controller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrier Objective'),
        centerTitle: true,
        elevation: 0,
        //leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: Carrier_onjective_formkey,
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Carrier Objective",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 22,
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
                              Global.Carrier_objective_description = val;
                            });
                          },
                          maxLines: 5,
                          controller: carrier_objective_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            hintText: "Description",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, left: 15, right: 15, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment(40, 0),
                        child: Text(
                          "Current Designation (Experienced Candidate)",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
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
                              return "Enter Software Engineer first....";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              Global.current_designation = val;
                            });
                          },
                          controller: current_designation_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            hintText: "Software Engineer",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
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
                        if (Carrier_onjective_formkey.currentState!
                            .validate()) {
                          Carrier_onjective_formkey.currentState!.save();
                          print("des: ${Global.Carrier_objective_description}");
                          print("s a : ${Global.current_designation}");
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Carrier_onjective_formkey.currentState!.reset();
                        carrier_objective_controller.clear();
                        current_designation_controller.clear();

                        setState(() {
                          Global.Carrier_objective_description = "";
                          Global.current_designation = "";
                        });
                      },
                      child:
                          const Text("Clear", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
