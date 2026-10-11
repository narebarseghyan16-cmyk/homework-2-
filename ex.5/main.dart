void main() {
  List<Product> products = [
    Product('Կաթ', 'Կաթնամթերք', 450),
    Product('Պանիր', 'Կաթնամթերք', 1800),
    Product('Հաց', 'Հացաբուլկեղեն', 300),
    Product('Լավաշ', 'Հացաբուլկեղեն', 200),
    Product('Խնձոր', 'Մրգեր', 700),
  ];

  Map<String, double> result = totalByCategory(products);

  result.forEach((category, total) {
    print('$category: $total');
  });
}

class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> totals = {};

  for (Product product in products) {
    totals[product.category] = (totals[product.category] ?? 0) + product.price;
  }

  return totals;
}

