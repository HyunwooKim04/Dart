class Integer {
  late int _value;

  Integer([int givenValue = 0]) {
    _value = givenValue;
  }

  int get() {
    return _value;
  }

  void set(int givenValue) {
   _value = givenValue;
  }

  Integer operator +(Integer givenValue) {
    return Integer(this.get() + givenValue.get());
  }
}

mixin ActivationFlag {
  bool _flag = true;

  bool getFlag() {
    return _flag;
  }

  void setFlag(bool givenFlag) {
    _flag = givenFlag;
  }
}

class TimeMachineInteger extends Integer with ActivationFlag {
  List<int> _timemachine = [];

  TimeMachineInteger([int givenValue = 0]) {
    _value = givenValue;
  }

  List getOld() {
    return _timemachine;
  }

  @override
  void set(int givenValue) {
    if(getFlag == true) {
      _timemachine.add(_value);
    }
    super.set(givenValue);
  }
}

void main() {

}