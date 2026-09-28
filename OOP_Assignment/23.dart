class Document {
  String title;
  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print('Printing document: $title');
  }
}

class Invoice extends Document with Printable {
  Invoice(String title) : super(title);
}

class Report extends Document with Printable {
  Report(String title) : super(title);
}

void main() {
  Invoice inv = Invoice('Invoice #1001');
  Report rep = Report('Annual Report 2026');

  inv.display();
  rep.display();
}