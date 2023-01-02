class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
      id: 1,
      price: 15000,
      title: "لاب توب",
      subTitle: "اتش بى",
      description: "رامات 16 جيجا معالج قوى ",
      image: "images/labtophp.png"),
  Product(
      id: 2,
      price: 12000,
      title: "تليفون محمول",
      subTitle: "ايفون 12",
      description: "رامات 8 ذاكرة 128 جيجا",
      image: "images/iphone.png"),
  Product(
      id: 3,
      price: 150,
      title: "شاحن",
      subTitle: "شاحن باسوس",
      description: "شاحن سريع لكل التليفونات المحمول",
      image: "images/charger.png"),
  Product(
      id: 4,
      price: 13000,
      title: "تليفزيون",
      subTitle: "شاشه سامسونج",
      description: "45 بوصه",
      image: "images/tv.png"),
  Product(
      id: 5,
      price: 10000,
      title: "تليفون",
      subTitle: "تليفون سامسونج نوت ",
      description: "رامات 8 جيجاوذاكرة 128 جيجا",
      image: "images/samsung.png"),
];
