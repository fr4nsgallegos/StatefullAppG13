import 'package:flutter/material.dart';

class DeportesFavoritosPage extends StatelessWidget {
  const DeportesFavoritosPage({super.key});

  Widget buildDeportButton(String deport) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Text(deport),
    );
  }

  Widget buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffEBA049),
          title: Text(
            "SetState Texts App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle("¿Cuáles son tus deportes favoritos?"),
              SizedBox(height: 16),
              Center(
                child: Wrap(
                  spacing: 8, //espaciado horizontal entre elementos
                  runSpacing: 8, //espaciado vertical entre elementos
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Crossfit"),
                    buildDeportButton("Baloncesto"),
                  ],
                ),
              ),
              Divider(height: 40, thickness: 4),
              buildTitle("Mis deportes favoritos son"),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                width: screenWidth,
                height: screenHeigth / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Wrap(
                  spacing: 8, //espaciado horizontal entre elementos
                  runSpacing: 8, //espaciado vertical entre elementos
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Gimnasio"),
                    buildDeportButton("Crossfit"),
                    buildDeportButton("Baloncesto"),
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
