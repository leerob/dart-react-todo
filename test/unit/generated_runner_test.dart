@TestOn('browser')
library test.unit.generated_runner_test;

import 'package:test/test.dart';
import 'package:over_react/over_react.dart';

import './todo_dart_react/views/todo_app_test.dart' as todo_app_test;
import './todo_dart_react/views/todo_input_test.dart' as todo_input_test;
import './todo_dart_react/views/todo_list_test.dart' as todo_list_test;
import './todo_dart_react/views/todo_list_item_test.dart' as todo_list_item_test;
import './todo_dart_react/stores/todo_store_test.dart' as todo_store_test;

void main() {
  setClientConfiguration();
  enableTestMode();
  
  todo_app_test.main();
  todo_input_test.main();
  todo_list_test.main();
  todo_list_item_test.main();
  todo_store_test.main();
}