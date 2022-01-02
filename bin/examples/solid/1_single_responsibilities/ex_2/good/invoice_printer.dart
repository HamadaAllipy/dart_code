import 'invoice.dart';

class InvoicePrinter{

  final Invoice? _invoice;
  InvoicePrinter(Invoice invoice): _invoice = invoice;
  void printInvoice(){
    print(_invoice?.calcTotal());
  }
}