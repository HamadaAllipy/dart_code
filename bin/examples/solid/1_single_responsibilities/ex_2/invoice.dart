import 'bad/book.dart';

class Invoice{
  // attributes
  final double _total;

  // constructor
  Invoice({
    required double total,
  })  :_total = total;

  double calcInvoice(){
    // calculate
    return _total;
  }
}