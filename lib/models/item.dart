class Item {
  final String name;
  final String desc;
  final int price;
  final String img;
  Item(
      {required this.name,
      this.desc = "",
      required this.price,
      required this.img});
}
