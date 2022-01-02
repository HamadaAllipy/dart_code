class Rectangle {
  final double _width;
  final double _height;

  Rectangle(double width, double height)
      : _height = height,
        _width = width;

  double get width => _width;

  double get height => _height;
}

class Square {
  final double _side;

  Square(double side) : _side = side;

  double get side=> _side;
}

class ShapePrinter {
  void drawShape(Object shape) {
    if (shape is Square) {
      // draw square
    } else if (shape is Rectangle) {
      // draw rectangle
    }
  }
}
