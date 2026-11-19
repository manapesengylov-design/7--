//Задание 2. Класс BankAccount  dart run task2_bank_account.dart
class BankAccount {
  String owner;
  double balance = 0;

  BankAccount(this.owner);

  // Пополнение счёта
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('$owner пополнил счёт на $amount');
    }
  }

  // Снятие денег
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Ошибка: неправильная сумма');
    } else if (amount > balance) {
      print('Ошибка: недостаточно денег на счёте $owner');
    } else {
      balance -= amount;
      print('$owner снял $amount');
    }
  }

  // Получение баланса
  double getBalance() {
    return balance;
  }

  // Выписка
  void printStatement() {
    print('Владелец: $owner, баланс: $balance');
  }
}

void main() {
  BankAccount account1 = BankAccount('Манап');
  BankAccount account2 = BankAccount('Азамат');

  // Первый счёт
  account1.deposit(1000);
  account1.withdraw(200);
  account1.deposit(500);

  // Второй счёт
  account2.deposit(2000);
  account2.withdraw(500);
  account2.withdraw(300);

  // Вывод выписок
  print('\nВыписки:');
  account1.printStatement();
  account2.printStatement();

  print('Баланс Манапа: ${account1.getBalance()}');
  print('Баланс Азамата: ${account2.getBalance()}');
}

// Каждый объект BankAccount имеет собственное поле balance.
// Поэтому изменение баланса одного объекта не влияет на другой.
