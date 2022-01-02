import 'shape.dart';

class Square extends Shape{
  final double _side;

  Square(double side) : _side = side;

  double get side=> _side;

  @override
  void draw() {
    print('draw Square........');
  }
}