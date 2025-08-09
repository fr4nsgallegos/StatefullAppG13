import 'package:flutter/material.dart';
import 'package:statefullwidgetg13/models/menu_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int? selectedMenuIndex;

  // Llevar estos mapas a menuModels
  // List<Map<String, dynamic>> listMenuMaps = [
  //   {
  //     "name": "Menú 1",
  //     "days": "Lun - Mier - Jue",
  //     "price": 6,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/30766457/pexels-photo-30766457.jpeg",
  //     "isSelected": false,
  //   },
  //   {
  //     "name": "Menú 2",
  //     "days": "Mar - Jue - Sab",
  //     "price": 6,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/28460875/pexels-photo-28460875.jpeg?_gl=1*1t8urd8*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxMzY3JGo1MiRsMCRoMA..",
  //     "isSelected": false,
  //   },
  //   {
  //     "name": "Menú 3",
  //     "days": "Mar - Jue - Sab",
  //     "price": 7,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?_gl=1*146f5pu*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxMzk4JGoyMSRsMCRoMA..",
  //     "isSelected": false,
  //   },
  //   {
  //     "name": "Menú 4",
  //     "days": "Mar - Jue - Sab",
  //     "price": 8,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?_gl=1*1o8hi7a*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxNDE5JGo2MCRsMCRoMA..",
  //     "isSelected": true,
  //   },
  //   {
  //     "name": "Menú 5",
  //     "days": "Mar - Jue - Sab",
  //     "price": 9,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?_gl=1*f2pa15*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxNDQ0JGozNSRsMCRoMA..",
  //     "isSelected": false,
  //   },
  // ];

  Widget buildMenuCard(double screenWidth, MenuModel menuModel, int index) {
    // menuMap["isSelected"] = selectedMenuIndex == index;
    menuModel.isSelected = selectedMenuIndex == index;
    return GestureDetector(
      onTap: () {
        // selectedMenuIndex = menuMap["isSelected"] == true ? null : index;
        selectedMenuIndex = menuModel.isSelected == true ? null : index;
        // for (var menu in listMenuMaps) {
        //   menu["isSelected"] = false;
        // }
        // menuMap["isSelected"] = true;
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
