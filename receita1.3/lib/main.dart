import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cervejas"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Accordion(
          maxOpenSections: 4,
          children: [
            AccordionSection(
                headerBorderWidth: 10,
                header: const Text("Eisenbahn"),
                content: const Text(
                    "Eisenbahn é uma cervejaria localizada em Blumenau, Santa Catarina, Brasil. Fundada em 2002, Produz cerveja e chope seguindo a Reinheitsgebot, uma regra alemã de pureza, e com uma grande variedade de sabores e tipos de fermentação")),
            AccordionSection(
                headerBorderWidth: 10,
                headerBackgroundColor: Colors.yellowAccent,
                header: const Text("Heineken"),
                content: const Text(
                    "Heineken International é uma cervejaria holandesa, fundada em 1863 por Gerard Adriaan Heineken na cidade de Amsterdã. Heineken possui cerca de 140 cervejarias em mais de 70 países, empregando aproximadamente 85.000 pessoas. Wikipédia")),
            AccordionSection(
                headerBorderWidth: 10,
                headerBackgroundColor: Colors.blueGrey,
                header: const Text("Bohemia"),
                content: const Text(
                    "A Cervejaria Bohemia é uma empresa brasileira fabricante de cerveja e a primeira cervejaria do país. Wikipédia")),
            AccordionSection(
                headerBorderWidth: 10,
                headerBackgroundColor: Colors.amber,
                header: const Text("Brahma"),
                content: const Text(
                    "Brahma é uma marca de cerveja brasileira criada em 1888, no Rio de Janeiro, pela Manufactura de Cerveja Brahma Villiger & Companhia, que depois mudaria de nome para Companhia Cervejaria Brahma, e depois seria sucedida pela AmBev. Wikipédia")),
          ],
        ),
      ),
    );
  }
}
