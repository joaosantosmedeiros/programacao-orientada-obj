import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: StyledText(
                text: '<white>Cervejas</white>',
                tags: {
                  'white': StyledTextTag(
                      style: const TextStyle(color: Colors.white, fontSize: 24))
                },
              ),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: SingleChildScrollView(
            child: DataTable(
              columns: const [
                DataColumn(label: Text("Nome")),
                DataColumn(label: Text("Estilo")),
                DataColumn(label: Text("IBU")),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text("La Fin Du Monde")),
                  DataCell(Text("Bock")),
                  DataCell(Text("65"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Sapporo Premium")),
                  DataCell(Text("Sour Ale")),
                  DataCell(Text("54"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Duvel")),
                  DataCell(Text("Pilsner")),
                  DataCell(Text("82"))
                ]),
              ],
            ),
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.redAccent)),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  label: StyledText(
                    text: '<white>Primeiro botão</white>',
                    tags: {
                      'white': StyledTextTag(
                          style: const TextStyle(color: Colors.white))
                    },
                  )),
              const Gap(20),
              OutlinedButton.icon(
                  icon: const Icon(Icons.remove),
                  onPressed: null,
                  label: const Text("Segundo botão")),
              const Gap(20),
              const ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent),
                  ),
                  onPressed: null,
                  child: Text("Terceiro botão")),
              const MyIconButton()
            ],
          ),
        ));
  }
}

class MyIconButton extends StatefulWidget {
  const MyIconButton({super.key});

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.front_hand_rounded),
      color: Colors.blueAccent,
      tooltip: 'It will do nothing',
      onPressed: () {
        setState(() {});
      },
    );
  }
}
