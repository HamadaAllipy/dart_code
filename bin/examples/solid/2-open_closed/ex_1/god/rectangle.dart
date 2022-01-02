import 'shape.dart';

class Rectangle extends Shape {
  final double _width;
  final double _height;

  Rectangle(double width, double height)
      : _height = height,
        _width = width;

  double get width => _width;

  double get height => _height;

  @override
  void draw() {
    print('draw Rectangle........');
  }
}
