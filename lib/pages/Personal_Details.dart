import 'package:flutter/material.dart';

import '../gloabl.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({Key? key}) : super(key: key);

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
  final GlobalKey<FormState> personal_Details_formkey = GlobalKey<FormState>();
  final TextEditingController DOB_controller = TextEditingController();

  final TextEditingController Nationality_controller = TextEditingController();

  String radioVal = "Gender";

  String radioValListTile = "Gender";

  bool EncheckBoxVal = false;
  bool HncheckBoxVal = false;
  bool GjcheckBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Details'),
        elevation: 0,
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        color: Colors.grey.shade300,
        height: double.infinity,
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: personal_Details_formkey,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "DOB",
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
                              Global.DOB = val;
                            });
                          },
                          controller: DOB_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            hintText: "DD/MM/YYYY",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Marital Status",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          RadioListTile(
                              value: "Female",
                              groupValue: radioValListTile,
                              title: Text(
                                "Female",
                                style: TextStyle(
                                    color: radioValListTile == "Female"
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  radioValListTile = val as String;
                                  Global.marital_status = radioValListTile;
                                });
                              }),
                          RadioListTile(
                              title: Text(
                                "Male",
                                style: TextStyle(
                                    color: radioValListTile == "Male"
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              value: "Male",
                              groupValue: radioValListTile,
                              onChanged: (val) {
                                setState(() {
                                  radioValListTile = val as String;
                                  Global.marital_status = radioValListTile;
                                });
                              }),
                        ],
                      ),
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Languages Known",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "English",
                          style: TextStyle(
                              color: EncheckBoxVal == true
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                        value: EncheckBoxVal,
                        onChanged: (val) {
                          setState(() {
                            EncheckBoxVal = val!;
                            if (EncheckBoxVal == true) {
                              Global.language_Known.add('English');
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Hindi",
                          style: TextStyle(
                              color: HncheckBoxVal == true
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                        value: HncheckBoxVal,
                        onChanged: (val) {
                          setState(() {
                            HncheckBoxVal = val!;
                            if (HncheckBoxVal == true) {
                              Global.language_Known.add('Hindi');
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Gujarati",
                          style: TextStyle(
                              color: GjcheckBoxVal == true
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                        value: GjcheckBoxVal,
                        onChanged: (val) {
                          setState(() {
                            GjcheckBoxVal = val!;
                            if (GjcheckBoxVal == true) {
                              Global.language_Known.add('Gujarati');
                            }
                          });
                        },
                      ),
                      const Align(
                        alignment: Alignment(-0.85, 0),
                        child: Text(
                          "Nationality",
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
                              Global.nationality = val;
                            });
                          },
                          controller: Nationality_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            hintText: "Indian",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (personal_Details_formkey.currentState!
                                  .validate()) {
                                personal_Details_formkey.currentState!.save();
                                print("${Global.DOB}");
                                print("${Global.marital_status}");
                                print("${Global.nationality}");
                                print(Global.language_Known);
                              }
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              personal_Details_formkey.currentState!.reset();
                              DOB_controller.clear();
                              Nationality_controller.clear();

                              setState(() {
                                Global.DOB = "";
                                radioValListTile = "Gender";
                                Global.nationality = "";
                                EncheckBoxVal = false;
                                HncheckBoxVal = false;
                                GjcheckBoxVal = false;
                              });
                              Global.language_Known = [];
                              print(Global.language_Known);
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
    );
  }
}
