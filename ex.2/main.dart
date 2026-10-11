class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  String getInfo() {
    return '$title by $author, $pages pages';
  }
}

void main() {
  Book book1 = Book('1984', 'George Orwell', 328);
  Book book2 = Book('Հայոց պատմություն', 'Մովսես Խորենացի', 250);

  print(book1.getInfo());
  print(book2.getInfo());
}