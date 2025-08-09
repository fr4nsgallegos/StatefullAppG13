import 'package:flutter/material.dart';
import 'package:statefullwidgetg13/models/menu_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int? selectedMenuIndex;

  Widget buildMenuCard(double screenWidth, MenuModel menuModel, int index) {
    menuModel.isSelected = selectedMenuIndex == index;
    return GestureDetector(
      onTap: () {
        selectedMenuIndex = menuModel.isSelected == true ? null : index;
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 2,
            color: menuModel.isSelected == true ? Colors.white : Colors.black,
          ),
          color: menuModel.isSelected == true
              ? Color(0xffFDD770)
              : Colors.white,
        ),
        child: Row(
          children: [
            // Primera forma para poner bordes redondeados a una imagen
            // Container(
            //   width: 100,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(16),
            //     image: DecorationImage(
            //       image: NetworkImage(
            //         'https://images.pexels.com/photos/30766457/pexels-photo-30766457.jpeg?_gl=1*1mzr6vp*_ga*MTkyMTY0OTU4Ny4xNzUzMjUyMzUy*_ga_8JE65Q40S6*czE3NTQxNDc1MzMkbzkkZzEkdDE3NTQxNDc4MDEkajU5JGwwJGgw',
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            // Segunda forma para poner bordes redondeados a una imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                menuModel.imageUrl,
                width: screenWidth / 4,
                height: screenWidth / 4,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuModel.name,
                  style: TextStyle(
                    fontSize: 24,
                    color: menuModel.isSelected == true
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Text(
                  menuModel.days,
                  style: TextStyle(
                    fontSize: 20,
                    color: menuModel.isSelected == true
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Text(
                  "S/ ${menuModel.price}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: menuModel.isSelected == true
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setstate Cards Assets App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffEEA339),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Selecciona tu mejor opción', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Column(
              children: List.generate(listMenuModel.length, (i) {
                return buildMenuCard(screenWidth, listMenuModel[i], i);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
