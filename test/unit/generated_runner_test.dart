@TestOn('browser')
library test.unit.generated_runner_test;

import 'package:test/test.dart';
import 'package:over_react/over_react.dart';

import './todo_dart_react/views/stores/todo_store_test.dart' as todo_store_test;
import './todo_dart_react/views/todo_list_test.dart' as todo_list_test;

void main() {
  setClientConfiguration();
  enableTestMode();
  
  todo_store_test.main();
  todo_list_test.main();
}