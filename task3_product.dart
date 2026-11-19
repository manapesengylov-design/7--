//Задание 3. Класс Product и список товаров dart run task3_product.dart

class Product {
  String title;
  double price;
  int quantity;

  Product(this.title, this.price, this.quantity);

  // Общая стоимость товара
  double getTotalCost() {
    return price * quantity;
  }

  // Вывод информации о товаре
  void printProduct() {
    print('Товар: $title, цена: $price, кол-во: $quantity');
  }

  // Пополнение склада
  void restock(int amount) {
    if (amount > 0) {
      quantity += amount;
      print('$title пополнен на $amount штук');
    }
  }
}

void main() {
  // Создаём список из пяти товаров
  List<Product> products = [
    Product('Ноутбук', 50000, 5),
    Product('Телефон', 25000, 10),
    Product('Наушники', 1500, 20),
    Product('Мышка', 800, 15),
    Product('Клавиатура', 2000, 8),
  ];

  // Вывод всех товаров
  print('СПИСОК ТОВАРОВ:');

  for (Product product in products) {
    product.printProduct();
  }

  // Находим общую стоимость склада
  double total = 0;

  for (Product product in products) {
    total += product.getTotalCost();
  }

  print('\nОбщая стоимость склада: $total сом');

  // Находим самый дорогой товар
  Product expensive = products[0];

  for (Product product in products) {
    if (product.price > expensive.price) {
      expensive = product;
    }
  }

  print('Самый дорогой товар: ${expensive.title}');
  print('Его цена: ${expensive.price} сом');

  // Демонстрация пополнения склада
  print('\nПОПОЛНЕНИЕ СКЛАДА:');

  products[0].restock(3);
  products[0].printProduct();
}
