class ProductModel {
  final String image;
  final String name;
  final double price;
  final String description;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  static List<ProductModel> products = [
    ProductModel(
      image: 'assets/product/product1.png',
      name: 'Boots ',
      price: 100,
      description: 'Boots perfect fro goothgirls',
    ),
    ProductModel(
      image: 'assets/product/product2.png',
      name: 'Earrings',
      price: 200,
      description: 'Earrings perfect fro goothgirls',
    ),
    ProductModel(
      image: 'assets/product/product3.png',
      name: 'Rings',
      price: 1000,
      description: 'Rings perfect fro goothgirls',
    ),
    ProductModel(
      image: 'assets/product/product4.png',
      name: 'Rings ',
      price: 2000,
      description: 'Rings perfect fro Cuties',
    ),
    ProductModel(
      image: 'assets/product/product5.png',
      name: 'Rings ',
      price: 2000,
      description: 'Rings perfect fro Cuties',
    ),
    ProductModel(
      image: 'assets/product/product6.png',
      name: 'Dress ',
      price: 2000,
      description: 'Dress perfect fro Goothgirls',
    ),
  ];
}
