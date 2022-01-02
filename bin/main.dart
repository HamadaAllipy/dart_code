import 'examples/solid/1_single_responsibilities/ex_2/Invoice_printer.dart';
import 'examples/solid/1_single_responsibilities/ex_2/invoice.dart';

void main(List<String> arguments) {


  Invoice invoice = Invoice(total: 23);
  InvoicePrinter printer = InvoicePrinter(invoice);

  printer.printInvoice();
}


