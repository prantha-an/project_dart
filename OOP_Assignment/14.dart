class Notification {
  String displayNotification() => 'Generic notification';
}

class EmailNotification extends Notification {
  @override
  String displayNotification() => 'Email: You have a new message in your inbox.';
}

class SMSNotification extends Notification {
  @override
  String displayNotification() => 'SMS: You have a new text message.';
}

void main() {
  List<Notification> list = [
    Notification(),
    EmailNotification(),
    SMSNotification(),
  ];

  for (var n in list) {
    print(n.displayNotification());
  }
}