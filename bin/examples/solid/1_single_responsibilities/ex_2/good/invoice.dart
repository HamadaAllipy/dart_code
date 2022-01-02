import '../bad/book.dart';

class Invoice{

  // attributes
  final Book? _book;
  final int? _quantity;
  final double? _discountRate;
  final double? _txtRate;
  final double? _total;

  // constructor
  Invoice({
    required Book book,
    required int quantity,
    required double discountRate,
    required double txtRate,
    required double total,
  })  : _book = book,
        _quantity = quantity,
        _discountRate = discountRate,
        _txtRate = txtRate,
        _total = total;


  double? calcTotal(){
    return _total;
  }
}