abstract class Rectangle {
  int cx = 0;
  int cy = 0;
  void draw();
}

class Circle implements Rectangle {
  @override
  int cx = 0;
  int cy = 0;

  late int radius;

  @override
  void draw() {
    print("Circle.draw(): center($cx, $cy) with r[$radius]");
  }

  Circle([int givenRadius = 1]) : radius = givenRadius;
}

class Square implements Rectangle {
  @override
  int cx = 0;
  int cy = 0;

  late int height, width;

  @override  
  void draw() {
    print("Squre.draw(): center($cx, $cy) with h[$height] and w[$width]");
  }

  Square([int givenHeight = 1, int givenWidth = 1])
  : height = givenHeight,
    width = givenWidth;
}