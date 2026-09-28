class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void display() {
    print('Title   : $title');
    print('Subtitle: $subtitle');
    print('Author  : $author');
  }
}

void main() {
  Book b = Book('Clean Code', 'A Handbook of Agile Software Craftsmanship',
      'Robert C. Martin');
    print('Title   : ${b.title}');
    print('Subtitle: ${b.subtitle}');
    print('Author  : ${b.author}');
}