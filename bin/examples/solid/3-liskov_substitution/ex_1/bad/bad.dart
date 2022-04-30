class Rectangle {
  final double _width;
  final double _height;

  Rectangle({
    required double width,
    required double height,
  })  : _height = height,
        _width = width;

  double getArea() {
    return _height * _width;
  }

  double get getWidth => _width;

  double get getHeight => _height;
}

class Square extends Rectangle{
  Square(double height, double width) : super(height: height, width: width);

}
