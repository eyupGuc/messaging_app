class MessageRepository {
  final List<Message> messages = [
    Message(
        "Merhaba", "Ali", DateTime.now().subtract(const Duration(minutes: 3))),
    Message("Orada mısın?", "Ayşe",
        DateTime.now().subtract(const Duration(minutes: 2))),
    Message("Evet", "Ali", DateTime.now().subtract(const Duration(minutes: 1))),
    Message("Nasılsın", "Ayşe", DateTime.now())
  ];
}

class Message {
  String yazi;
  String gonderen;
  DateTime zaman;
  Message(this.yazi, this.gonderen, this.zaman);
}
