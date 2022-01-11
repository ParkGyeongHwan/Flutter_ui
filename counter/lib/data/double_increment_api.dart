import 'package:counter/data/increment_api.dart';

class DoubleIncrementApi implements IncrementApi {
  @override
  int increase(int input) {
    return input += 2;
  }
}
