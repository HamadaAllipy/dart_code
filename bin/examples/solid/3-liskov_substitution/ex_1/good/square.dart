import 'shape.dart';

class Square implements Shape {
  final double _size;

  Square({
    required double size,
  }) : _size = size;

  @override
  double getArea() {
    return _size * _size;
  }
}

// interface segregation segregation
