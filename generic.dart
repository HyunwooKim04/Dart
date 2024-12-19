class Point<A, B> {

  late A x;

  late B y;

  Point(A givenX, B givenY) 
  : x = givenX, 
    y = givenY {
      objCount++;
    }

  static int objCount = 0; 
  ///static 키워드는 변수나 메소드에 사용되며 static 키워드를 사용하면 클래스가 메모리에 로딩될 때 자동으로 생성이 된다. 
  ///즉, static은 instance에 귀속되지 않고 class에 귀속된다. 
  ///그래서 객체를 생성하지 않아도 사용이 가능하며 속도가 빠르다.
  get cnt => objCount;

}

void main() {
  Point<double, String> p = Point<double, String>(10.3, '3.4');
  print("${p.runtimeType} p => (${p.x}, ${p.y}) / ${p.cnt}");
}