class Catalogmodel{
  static final item=[
    Item(id: 1,name: "iphone",desc: "one of the best phone",price: 1000)
  ];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final int price;

  Item({required this.id, required this.name, required this.desc, required this.price});
}