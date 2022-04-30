import 'shape.dart';

class Rectangle implements Shape{
  final double _width;
  final double _height;

  Rectangle({
    required double width,
    required double height,
  })  : _height = height,
        _width = width;


  double get getWidth => _width;

  double get getHeight => _height;

  @override
  double getArea() {
    return _height * _width;
  }
}