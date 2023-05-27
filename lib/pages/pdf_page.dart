import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';

import '../gloabl.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({Key? key}) : super(key: key);

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  // final image = (rootBundle.load(Global.image as String));
  final pdfImage = pw.MemoryImage(File(Global.image!.path).readAsBytesSync());
  final picker = ImagePicker();
  final pdf = pw.Document();
  File image = Global.image as File;
  @override
  initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
            color: PdfColors.grey,
            child: pw.Container(
              margin: const pw.EdgeInsets.all(10),
              padding: const pw.EdgeInsets.all(20),
              color: PdfColors.grey100,
              child: pw.Column(
                children: [
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Row(children: [
                    pw.SizedBox(
                      width: 30,
                    ),
                    pw.Expanded(
                      flex: 2,
                      child: pw.Container(
                        height: 170,
                        child: pw.Image(pdfImage, fit: pw.BoxFit.cover),
                      ),
                    ),
                    pw.SizedBox(
                      width: 40,
                    ),
                    pw.Expanded(
                      flex: 1,
                      child: pw.Container(
                        height: 170,
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                          children: [
                            pw.Spacer(),
                            pw.Spacer(),
                            pw.Text("Name : "),
                            pw.SizedBox(height: 10),
                            pw.Text("Email : "),
                            pw.SizedBox(height: 10),
                            pw.Text("Phone : "),
                            pw.SizedBox(height: 10),
                            pw.Text("Address : "),
                            pw.Spacer(),
                            pw.Spacer(),
                          ],
                        ),
                      ),
                    ),
                    pw.Expanded(
                        flex: 1,
                        child: pw.Container(
                          height: 170,
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Spacer(),
                              pw.Spacer(),
                              pw.Text("${Global.name}"),
                              pw.SizedBox(height: 10),
                              pw.Text("${Global.email}"),
                              pw.SizedBox(height: 10),
                              pw.Text("${Global.phone}"),
                              pw.SizedBox(height: 10),
                              pw.Text(
                                  "${Global.address},${Global.address1},${Global.address2}"),
                              pw.Spacer(),
                              pw.Spacer(),
                            ],
                          ),
                        )),
                  ]),
                  pw.SizedBox(
                    height: 20,
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Container(
                        child: pw.Text(
                          "Personal Details",
                          style: pw.TextStyle(
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold),
                        ),
                      )),
                      pw.Expanded(
                          child: pw.Container(
                        child: pw.Text(
                          "Education",
                          style: pw.TextStyle(
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold),
                        ),
                      )),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Container(
                        height: 70,
                        //color: Colors.white,
                        child: pw.Expanded(
                          child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("DOB :"),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Marital Status : "),
                              pw.SizedBox(
                                height: 5,
                              ),
                              //  Text("Language Known :"),
                              pw.Text("Nationality :"),
                            ],
                          ),
                        ),
                      ),
                      pw.Container(
                        height: 70,
                        child: pw.Expanded(
                            child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.DOB}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.marital_status}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.nationality}"),
                          ],
                        )),
                      ),
                      pw.SizedBox(
                        width: 100,
                      ),
                      pw.Container(
                        height: 70,
                        child: pw.Expanded(
                            child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("Degree :"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("School/College : "),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("Year of pass :"),
                          ],
                        )),
                      ),
                      pw.Container(
                        height: 70,
                        child: pw.Expanded(
                            child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.course_Degree}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.school_college1}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.yearofpass}"),
                          ],
                        )),
                      ),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                        "Experiences",
                        style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold),
                      )),
                      pw.Expanded(
                          child: pw.Text(
                        "Technical Skills",
                        style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold),
                      )),
                    ],
                  ),
                  pw.Container(
                    height: 60,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Column(
                            children: [
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Company Name :"),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Roles : "),
                            ],
                          ),
                        ),
                        pw.Expanded(
                            flex: 2,
                            child: pw.Column(
                              children: [
                                pw.SizedBox(
                                  height: 5,
                                ),
                                pw.Text("${Global.company_name}"),
                                pw.SizedBox(
                                  height: 5,
                                ),
                                pw.Text("${Global.roles}"),
                              ],
                            )),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            height: 60,
                          ),
                        ),
                        pw.Expanded(
                            flex: 6,
                            child: pw.Column(
                              children: Global.technicalsklls.map((e) {
                                return pw.Text("$e");
                              }).toList(),
                            )),
                      ],
                    ),
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                        "Interest/Hobbies",
                        style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold),
                      )),
                      pw.Expanded(
                          child: pw.Text(
                        "Achievements",
                        style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold),
                      )),
                    ],
                  ),
                  pw.Container(
                    height: 50,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                            flex: 4,
                            child: pw.Column(
                              children: Global.interest_hobbies.map((e) {
                                return pw.Text("$e");
                              }).toList(),
                            )),
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            height: 60,
                          ),
                        ),
                        pw.Expanded(
                            flex: 4,
                            child: pw.Column(
                              children: Global.achievements.map((e) {
                                return pw.Text("$e");
                              }).toList(),
                            )),
                      ],
                    ),
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                        "Language known",
                        style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold),
                      )),
                      pw.Expanded(
                        child: pw.Text(
                          "References",
                          style: pw.TextStyle(
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  pw.Container(
                    height: 50,
                    child: pw.Row(
                      children: [
                        pw.SizedBox(
                          width: 20,
                        ),
                        pw.Expanded(
                            child: pw.Column(
                          children: Global.language_Known.map((e) {
                            return pw.Column(
                              children: [
                                pw.Text("$e"),
                                pw.SizedBox(
                                  height: 5,
                                ),
                              ],
                            );
                          }).toList(),
                        )),
                        pw.SizedBox(
                          width: 60,
                        ),
                        pw.Expanded(
                          child: pw.Column(
                            children: [
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Reference Name :"),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Designation : "),
                              pw.SizedBox(
                                height: 5,
                              ),
                              pw.Text("Organization : "),
                            ],
                          ),
                        ),
                        pw.Expanded(
                            child: pw.Column(
                          children: [
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.references_name}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.designation}"),
                            pw.SizedBox(
                              height: 5,
                            ),
                            pw.Text("${Global.organization}"),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF"),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                Uint8List bytes = await pdf.save();
                //await Printing.layoutPdf(onLayout: (format) => generatePDF());
                await Printing.layoutPdf(onLayout: (format) => bytes);
              },
              icon: const Icon(Icons.print)),
          IconButton(
            onPressed: () async {
              Directory? dir =
                  await getExternalStorageDirectory(); /*getTemporaryDirectory();*/
              File file = File("${dir!.path}/resume.pdf");
              print("====================");
              print(file);
              print("====================");

              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.save_alt_rounded),
          )
        ],
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          color: Colors.grey.withOpacity(0.2),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(Global.image as File),
                          /*  (Global.image != null)
                              ? FileImage(Global.image as File)
                              : null),*/
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Spacer(),
                          Spacer(),
                          Text("Name : "),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Email : "),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Phone : "),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Address : "),
                          Spacer(),
                          Spacer(),
                          //Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          const Spacer(),
                          Text("${Global.name}"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${Global.email}"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${Global.phone}"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "${Global.address},${Global.address1},${Global.address2}"),
                          const Spacer(),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Personal Details",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Education",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    child: Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 5,
                          ),
                          Text("DOB :"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Marital Status : "),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Nationality :"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 70,
                    child: Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text("${Global.DOB}"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("${Global.marital_status}"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("${Global.nationality}"),
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 70,
                    child: Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 5,
                        ),
                        Text("Degree :"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("College : "),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Year of pass :"),
                      ],
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 70,
                    child: Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.course_Degree}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.school_college1}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.yearofpass}"),
                      ],
                    )),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                      child: Text(
                    "Experiences",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Technical Skills",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text("Company Name :"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Roles : "),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.company_name}"),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("${Global.roles}"),
                      ],
                    )),
                    Expanded(
                      child: Container(
                        height: 60,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: Global.technicalsklls.map((e) {
                        return Column(
                          children: [
                            Text("$e"),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }).toList(),
                    )),
                  ],
                ),
              ),
              Row(
                children: const [
                  Expanded(
                      child: Text(
                    "Interest/Hobbies",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Achievements",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: Global.interest_hobbies.map((e) {
                        return Column(
                          children: [
                            Text("$e"),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }).toList(),
                    )),
                    Expanded(
                        child: Column(
                      children: Global.achievements.map((e) {
                        return Column(
                          children: [
                            Text("$e"),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }).toList(),
                    )),
                  ],
                ),
              ),
              Row(
                children: const [
                  Expanded(
                      child: Text(
                    "Language known",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "References",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 90,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: Global.language_Known.map((e) {
                        return Column(
                          children: [
                            Text("$e"),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }).toList(),
                    )),
                    const SizedBox(
                      width: 60,
                    ),
                    /*  Expanded(
                        child: Container(
                      height: 60,
                    )),*/
                    Expanded(
                      child: Column(
                        children: const [
                          Text("Reference Name :"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Designation : "),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Organization : "),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text("${Global.references_name}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.designation}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("${Global.organization}"),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
