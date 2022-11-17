class Budget {
  static List<Budget> listBudget = [];
  String title;
  int amount;
  String type;
  DateTime date;

  Budget({
    required this.title,
    required this.amount,
    required this.type,
    required this.date,
  });

  static void add({
    required title,
    required amount,
    required type,
    required date,
  }) {
    listBudget.add(Budget(
      title: title,
      amount: amount,
      type: type,
      date: date,
    ));
  }
}
