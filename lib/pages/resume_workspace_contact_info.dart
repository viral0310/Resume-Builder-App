import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../gloabl.dart';

class Resume_Workspace_Contact_Info extends StatefulWidget {
  const Resume_Workspace_Contact_Info({Key? key}) : super(key: key);

  @override
  State<Resume_Workspace_Contact_Info> createState() =>
      _Resume_Workspace_Contact_InfoState();
}

class _Resume_Workspace_Contact_InfoState
    extends State<Resume_Workspace_Contact_Info> {
  final ImagePicker _picker = ImagePicker();

  //File? image;

  int initialIndex = 0;

  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: this);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Resume Workspace",
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            centerTitle: true,
            elevation: 0,
            bottom: const TabBar(
              indicatorColor: Colors.yellowAccent,
              labelPadding: EdgeInsets.only(left: 70, right: 70),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "Contact",
                    style: TextStyle(fontSize: 18),
                  ),
                  //text: "Cards",
                ),
                Tab(
                  child: Text(
                    "Photo",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 1, left: 1, top: 18, bottom: 48),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: 414,
                          width: 300,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Form(
                              key: contactFormKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your name first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.name = val;
                                        });
                                      },
                                      controller: nameController,
                                      decoration: const InputDecoration(
                                        hintText: "Name",
                                        label: Text("Name"),
                                        icon: Icon(
                                          Icons.person,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your Email first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.email = val;
                                        });
                                      },
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                        hintText: "Email",
                                        label: Text("Email"),
                                        icon: Icon(
                                          Icons.email,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your phone first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.phone = val;
                                        });
                                      },
                                      controller: phoneController,
                                      decoration: const InputDecoration(
                                        hintText: "Phone",
                                        label: Text("Phone"),
                                        icon: Icon(
                                          Icons.phone_android,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your phone first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.address = val;
                                        });
                                      },
                                      controller: addressController,
                                      decoration: const InputDecoration(
                                        hintText: "Address",
                                        label: Text("Address"),
                                        icon: Icon(
                                          Icons.location_on_rounded,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 59,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your phone first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.address1 = val;
                                        });
                                      },
                                      //controller: phoneController,
                                      decoration: const InputDecoration(
                                        hintText: "Address",
                                        label: Text("Address"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 59,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your phone first....";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.address2 = val;
                                        });
                                      },
                                      //controller: phoneController,
                                      decoration: const InputDecoration(
                                        hintText: "Address",
                                        label: Text("Address"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (contactFormKey.currentState!.validate()) {
                                  contactFormKey.currentState!.save();
                                  print("Name: ${Global.name}");
                                  print("Email: ${Global.email}");
                                  print("Phone: ${Global.phone}");
                                  print("address: ${Global.address}");
                                  print("address: ${Global.address1}");
                                  print("address: ${Global.address2}");
                                }
                              },
                              child: const Text("SAVE"),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  contactFormKey.currentState!.reset();
                                  nameController.clear();
                                  emailController.clear();
                                  phoneController.clear();
                                  addressController.clear();
                                  address1Controller.clear();
                                  address2Controller.clear();
                                  setState(() {
                                    Global.name = "";
                                    Global.email = "";
                                    Global.phone = "";
                                    Global.address = "";
                                    Global.address1 = "";
                                    Global.address2 = "";
                                  });
                                },
                                child: const Text("CLEAR"))
                          ],
                        ),
                      ],
                    ),
                  )),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.4),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 20, left: 15, right: 15, bottom: 0),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40, bottom: 40),
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: (Global.image != null)
                                  ? FileImage(Global.image!)
                                  : null,
                              backgroundColor: Colors.blueGrey.withOpacity(0.3),
                              child: (Global.image != null)
                                  ? const Text("")
                                  : const Text(
                                      "Add",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            right: 1,
                            child: FloatingActionButton(
                              mini: true,
                              onPressed: () async {
                                XFile? pickedFile = await _picker.pickImage(
                                    source: ImageSource.camera);

                                setState(() {
                                  Global.image = File(pickedFile!.path);
                                });
                                print(pickedFile!.path);
                              },
                              child: const Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Save"),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
