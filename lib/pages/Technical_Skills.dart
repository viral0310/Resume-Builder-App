import 'package:flutter/material.dart';

import '../gloabl.dart';

class Technical_Skills extends StatefulWidget {
  const Technical_Skills({Key? key}) : super(key: key);

  @override
  State<Technical_Skills> createState() => _Technical_SkillsState();
}

class _Technical_SkillsState extends State<Technical_Skills> {
  List<Row> allTextField = [];
  final List<TextEditingController> _controllerInput = [];

  int counter = 2;
  @override
  initState() {
    super.initState();

    _controllerInput.add(TextEditingController());
    _controllerInput.add(TextEditingController());
    allTextField.add(getTextField(i: 0, row: Row()));
    allTextField.add(getTextField(i: 1, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Technical Skills'),
        elevation: 0,
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 10),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Enter your Skills',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        ...allTextField
                            .map((e) => getTextField(
                                i: allTextField.indexOf(e), row: e))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  color: Colors.white,
                  height: 40,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _controllerInput.add(TextEditingController());
                        allTextField.add(
                            getTextField(i: allTextField.length, row: Row()));
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controllerInput.forEach((e) {
                        Global.technicalsklls.add(e.text);
                      });
                    });
                    print(Global.technicalsklls.toSet().toList());
                  },
                  child: const Text('SAVE'))
            ],
          ),
        ),
      ),
    );
  }

  Row getTextField({required int i, required Row row}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controllerInput[i],
            decoration:
                const InputDecoration(hintText: "C Programming, Web Technical"),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _controllerInput.removeAt(i);
              allTextField.remove(row);
            });
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
