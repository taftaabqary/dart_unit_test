import 'package:dart_unit_test/src/book.dart';
import 'package:dart_unit_test/src/book_repository.dart';

class BookService {

  BookRepository bookRepository;

  BookService(this.bookRepository);

  void save(String id, String name, int price) {
    if(id == '' || name == '' || price <= 0) {
      throw Exception('Invalid Data');
    }
    
    bookRepository.save(Book(id, name, price));
  }

  void update(String id, String name, int price) {
    if(id == '' || name == '' || price <= 0) {
      throw Exception('Invalid Data');
    }

    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book not found!');
    } else {
      book.name = name;
      book.price = price;
      bookRepository.save(book);
    }
  }

  Book find(String id) {
    var book = bookRepository.findById(id);
    if (book == null) {
      throw Exception('Book Not Found!');
    } else {
      return book;
    }
  }

  void delete(String id) {
    var book = bookRepository.findById(id);

    if (book == null) {
      throw Exception('Book Not Found!');
    } else {
      bookRepository.delete(book);
    }
  }


}