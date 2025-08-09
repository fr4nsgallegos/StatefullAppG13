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

  @override
  Widget build(BuildContext context) {
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
            children: [
              Text(
                "¿Cuáles son tus deportes favoritos?",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  buildDeportButton("Gimnasio"),
                  buildDeportButton("Crossfit"),
                  buildDeportButton("Baloncesto"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
