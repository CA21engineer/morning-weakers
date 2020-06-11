import 'package:morning_weakers/models/technical_stack/stack.dart';

extension StackTech on Stack {
  String getStackTech() {
    return toString().split('.')[1];
  }
}
