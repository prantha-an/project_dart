class Book {
  final int id;
  final String title;
  final String author;
  bool _isIssued = false;

  Book(this.id, this.title, this.author);

  bool get isIssued => _isIssued;

  void markIssued() => _isIssued = true;
  void markReturned() => _isIssued = false;
}

class Member {
  final int memberId;
  final String name;
  final List<Book> _borrowed = [];

  Member(this.memberId, this.name);

  List<Book> get borrowed => _borrowed;

  void addBook(Book b) => _borrowed.add(b);
  void removeBook(Book b) => _borrowed.remove(b);
}

class Library {
  List<Book> books = [];

  void addBook(Book b) => books.add(b);

  void issueBook(int bookId, Member m) {
    for (Book b in books) {
      if (b.id == bookId) {
        if (b.isIssued) {
          print('"${b.title}" is already issued.');
        } else {
          b.markIssued();
          m.addBook(b);
          print('"${b.title}" issued to ${m.name}.');
        }
        return;
      }
    }
    print('Book id $bookId not found.');
  }

  void returnBook(int bookId, Member m) {
    for (Book b in m.borrowed) {
      if (b.id == bookId) {
        b.markReturned();
        m.removeBook(b);
        print('"${b.title}" returned by ${m.name}.');
        return;
      }
    }
    print('${m.name} did not borrow book id $bookId.');
  }

  void showStatus() {
    print('--- Library Status ---');
    for (Book b in books) {
      print('${b.id}. ${b.title} by ${b.author} -> ${b.isIssued ? "Issued" : "Available"}');
    }
  }
}

void main() {
  Library lib = Library();
  lib.addBook(Book(1, 'Clean Code', 'Robert C. Martin'));
  lib.addBook(Book(2, 'Dart Basics', 'John Doe'));

  Member m = Member(101, 'Prantha');

  lib.issueBook(1, m);
  lib.issueBook(1, m);
  lib.showStatus();

  lib.returnBook(1, m);
  lib.showStatus();
}