import 'increment_api.dart';

class BasicIncrementApi implements IncrementApi {
  @override
  int increase(int input) {
    input++;
    return input;
  }
}
