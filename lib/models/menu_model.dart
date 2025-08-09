class MenuModel {
  String name;
  String days;
  double price;
  String imageUrl;
  bool isSelected;

  MenuModel({
    required this.name,
    required this.days,
    required this.price,
    required this.imageUrl,
    required this.isSelected,
  });
}

List<MenuModel> listMenuModel = [
  MenuModel(
    name: "Menú 1",
    days: "Lun - Mier - Jue",
    price: 6,
    imageUrl:
        "https://images.pexels.com/photos/30766457/pexels-photo-30766457.jpeg",
    isSelected: false,
  ),
  MenuModel(
    name: "Menú 2",
    days: "Mar - Jue - Sab",
    price: 6,
    imageUrl:
        "https://images.pexels.com/photos/28460875/pexels-photo-28460875.jpeg?_gl=1*1t8urd8*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxMzY3JGo1MiRsMCRoMA..",
    isSelected: false,
  ),
  MenuModel(
    name: "Menú 3",
    days: "Mar - Jue - Sab",
    price: 7,
    imageUrl:
        "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?_gl=1*146f5pu*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxMzk4JGoyMSRsMCRoMA..",
    isSelected: false,
  ),
  MenuModel(
    name: "Menú 4",
    days: "Mar - Jue - Sab",
    price: 8,
    imageUrl:
        "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?_gl=1*1o8hi7a*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxNDE5JGo2MCRsMCRoMA..",
    isSelected: true,
  ),
  MenuModel(
    name: "Menú 5",
    days: "Mar - Jue - Sab",
    price: 9,
    imageUrl:
        "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?_gl=1*f2pa15*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTQxNTEzNTkkbzYyJGcxJHQxNzU0MTUxNDQ0JGozNSRsMCRoMA..",
    isSelected: false,
  ),
];
