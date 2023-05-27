import 'package:flutter/material.dart';

import '../gloabl.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  List<TextEditingController> allControllers = [];
  @override
  initState() {
    super.initState();
    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievements'),
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
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "Enter Achivements",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  ...allControllers
                      .map((e) => getTextField(myController: e))
                      .toList(),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: SizedBox.expand(
                      child: OutlinedButton(
                        child: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            allControllers.add(TextEditingController());
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          allControllers.forEach((e) {
                            Global.achievements.add(e.text);
                          });
                        });
                        print(Global.achievements.toSet().toList());
                      },
                      child: Text("SAVE")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row getTextField({required TextEditingController myController}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: myController,
            decoration:
                const InputDecoration(hintText: "Exceeded sales 17% avearage"),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              allControllers.removeAt(allControllers.indexOf(myController));
            });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
