import 'examples/solid/1_single_responsibilities/ex_2/Invoice_printer.dart';
import 'examples/solid/1_single_responsibilities/ex_2/invoice.dart';
import 'examples/solid/2-open_closed/ex_1/god/shape_printer.dart';
import 'examples/solid/2-open_closed/ex_1/god/square.dart';

void main(List<String> arguments) {

  ShapePrinter printer = ShapePrinter();
  printer.drawShape(Square(20));
}


