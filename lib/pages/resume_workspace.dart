import 'package:flutter/material.dart';

class Resume_Workspace extends StatefulWidget {
  const Resume_Workspace({Key? key}) : super(key: key);

  @override
  State<Resume_Workspace> createState() => _Resume_WorkspaceState();
}

class _Resume_WorkspaceState extends State<Resume_Workspace> {
  List<Map<String, dynamic>> options = [
    {
      'id': 1,
      'icons': 'assetes/icons/contact_detail-removebg-preview (1).png',
      'name': 'Contact info',
      'route': '/contact',
    },
    {
      'id': 2,
      'icons': 'assetes/icons/briefcase.png',
      'name': 'Carrier objective',
      'route': '/carrier_objective',
    },
    {
      'id': 3,
      'icons': 'assetes/icons/account.png',
      'name': 'Personal Details',
      'route': '/personal_details',
    },
    {
      'id': 4,
      'icons': 'assetes/icons/graduation-cap.png',
      'name': 'Education',
      'route': '/Education',
    },
    {
      'id': 5,
      'icons': 'assetes/icons/logical-thinking.png',
      'name': 'Experiences',
      'route': '/Experience',
    },
    {
      'id': 6,
      'icons': 'assetes/icons/certificate.png',
      'name': 'Technical Skills',
      'route': '/Technical_Skills',
    },
    {
      'id': 7,
      'icons': 'assetes/icons/open-book.png',
      'name': 'Interest/Hobbies',
      'route': '/Interest_Hobbies',
    },
    {
      'id': 8,
      'icons': 'assetes/icons/project-management.png',
      'name': 'Projects',
      'route': '/Project',
    },
    {
      'id': 9,
      'icons': 'assetes/icons/experience.png',
      'name': 'Achievements',
      'route': '/Achievements',
    },
    {
      'id': 10,
      'icons': 'assetes/icons/handshake.png',
      'name': 'References',
      'route': '/References',
    },
    {
      'id': 11,
      'icons': 'assetes/icons/declaration.png',
      'name': 'Declaration',
      'route': '/Declaration',
    }
  ];
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume Workspace",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pdfpage');
            },
            icon: const Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              width: _width,
              alignment: Alignment.center,
              child: const Text(
                "Build Options",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                ...options.map((options) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed(options['route']);
                      });
                    },
                    child: SizedBox(
                      width: _width,
                      height: _height / 13.80,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                options['icons'],
                                height: 40,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(options['name'],
                                  style: const TextStyle(fontSize: 18)),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
