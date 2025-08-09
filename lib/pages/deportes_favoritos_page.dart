import 'package:flutter/material.dart';

class DeportesFavoritosPage extends StatefulWidget {
  @override
  State<DeportesFavoritosPage> createState() => _DeportesFavoritosPageState();
}

class _DeportesFavoritosPageState extends State<DeportesFavoritosPage> {
  List<Map<String, dynamic>> deportMapList = [
    {"name": "Gimnasio", "isFavorite": false},
    {"name": "Crossfit", "isFavorite": false},
    {"name": "Corredor", "isFavorite": false},
    {"name": "Baloncesto", "isFavorite": false},
    {"name": "Nadador", "isFavorite": false},
    {"name": "Golf", "isFavorite": false},
    {"name": "Tenis", "isFavorite": false},
  ];
  List<Map<String, dynamic>> favoriteMapDeportList = [];

  Widget buildDeportButton(Map<String, dynamic> deportMap) {
    return GestureDetector(
      onTap: () {
        if (!deportMap["isFavorite"]) {
          deportMap["isFavorite"] = true;
          favoriteMapDeportList.add(deportMap);
        } else {
          deportMap["isFavorite"] = false;
          favoriteMapDeportList.remove(deportMap);
        }
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: deportMap["isFavorite"] ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.orange, width: 2),
        ),
        child: Text(
          deportMap["name"],
          style: TextStyle(
            color: deportMap["isFavorite"] ? Colors.white : Colors.black,
          ),
        ),
      ),
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
                    for (int i = 0; i < deportMapList.length; i++)
                      buildDeportButton(deportMapList[i]),
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
                    for (int j = 0; j < favoriteMapDeportList.length; j++)
                      buildDeportButton(favoriteMapDeportList[j]),
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
