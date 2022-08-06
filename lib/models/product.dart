class Product {
  final String name;
  final String image;
  final String store;
  final int price;
  final int discount;

  Product({
    required this.name,
    required this.image,
    required this.store,
    required this.price,
    required this.discount,
  });
}

//list product sale
List<Product> saleProductList = [
  Product(
      name: "Blouse",
      image: "assets/images/item4.png",
      store: "OVS",
      price: 30,
      discount: 0),
  Product(
      name: "T-Shirt Sailing",
      image: "assets/images/item2.png",
      store: "Manggo Boy",
      price: 10,
      discount: 0),
  Product(
      name: "Blouse",
      image: "assets/images/item1.png",
      store: "OVS",
      price: 30,
      discount: 0),
  Product(
      name: "Jeans",
      image: "assets/images/item3.png",
      store: "Cool",
      price: 45,
      discount: 0),
];

//list product new
List<Product> newProductList = [
  Product(
      name: "Blouse",
      image: "assets/images/item1.png",
      store: "OVS",
      price: 30,
      discount: 0),
  Product(
      name: "T-Shirt Sailing",
      image: "assets/images/item2.png",
      store: "Manggo Boy",
      price: 10,
      discount: 0),
  Product(
      name: "Jeans",
      image: "assets/images/item3.png",
      store: "Cool",
      price: 45,
      discount: 0),
  Product(
      name: "Blouse",
      image: "assets/images/item4.png",
      store: "OVS",
      price: 30,
      discount: 0),
];
