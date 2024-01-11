import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main(){
  group('BookService', () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);
    
    test('Save new book must success', () {
      bookService.save('1', 'Tutorial belajar Dart', 150000);
      verify(bookRepository.save(Book('1', 'Tutorial belajar Dart', 150000))).called(1);
    });

    test('Find book by id not found', () {
      expect((){
        bookService.find('1');
      }, throwsException);

      verify(bookRepository.findById('1')).called(1);
    });
    
    test('Find book by id success', () {
      when(bookRepository.findById('1'))
          .thenReturn(Book('1', 'Althaaf', 150000));

      var book = bookService.find('1');
      expect(book, equals(Book('1', 'Althaaf', 150000)));

      verify(bookRepository.findById('1')).called(1);
    });
    
    test('Find book by id tafta123', () {
      when(bookRepository.findById(argThat(startsWith('tafta'))))
          .thenReturn(Book('tafta123', 'Tutorial Flutter', 150000));

      var book = bookService.find('tafta');
      expect(book, equals(Book('tafta123', 'Tutorial Flutter', 150000)));

      verify(bookRepository.findById(any)).called(1);
    });
  });
}