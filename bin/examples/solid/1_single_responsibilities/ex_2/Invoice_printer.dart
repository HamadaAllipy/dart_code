
import 'invoice.dart';

class InvoicePrinter{

  final Invoice _invoice;

  InvoicePrinter(Invoice invoice)
  : _invoice = invoice;
  
  printInvoice(){
    print('total = ${_invoice.calcInvoice()}');
  }
}