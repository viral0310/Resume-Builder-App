import 'package:flutter/material.dart';

import '../gloabl.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool switchVal = false;
  int intialVal = 0;
  final GlobalKey<FormState> Declaration_Key = GlobalKey<FormState>();
  final TextEditingController description_controller = TextEditingController();
  final TextEditingController date_controller = TextEditingController();
  final TextEditingController place_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Declaration'),
        centerTitle: true,
        elevation: 0,
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.only(
                top: 6,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Declaration",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                      Switch(
                          value: switchVal,
                          onChanged: (val) {
                            setState(() {
                              switchVal = val;
                            });
                          }),
                      //const SizedBox(height: 30),
                    ],
                  ),
                  // const SizedBox(height: 30),
                  switchVal
                      ? Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 10, right: 10, bottom: 10),
                          width: 420,
                          color: Colors.white54,
                          child: Form(
                            key: Declaration_Key,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assetes/icons/target.png',
                                  height: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 15, right: 15, bottom: 10),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your Description first....";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Global.description = val;
                                      });
                                    },
                                    controller: description_controller,
                                    decoration: const InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                      hintText: "Description ",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, bottom: 5),
                                  child: Divider(
                                    height: 5,
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
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
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Place(Interview\nvenue/city)",
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
                                            Global.date = val;
                                          });
                                        },
                                        controller: date_controller,
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
                                            Global.place = val;
                                          });
                                        },
                                        controller: place_controller,
                                        decoration: const InputDecoration(
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                          hintText: "En. Surat ",
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
                                        if (Declaration_Key.currentState!
                                            .validate()) {
                                          Declaration_Key.currentState!.save();
                                          print("des: ${Global.description}");
                                          print("s a : ${Global.date}");
                                          print("${Global.place}");
                                        }
                                      },
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Declaration_Key.currentState!.reset();
                                        description_controller.clear();
                                        date_controller.clear();
                                        place_controller.clear();

                                        setState(() {
                                          Global.description = "";
                                          Global.date = "";
                                          Global.place = "";
                                        });
                                      },
                                      child: const Text("Clear",
                                          style: TextStyle(fontSize: 18)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )) // the blue box
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
