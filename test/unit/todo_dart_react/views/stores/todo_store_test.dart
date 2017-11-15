library vending_machine_store_test;

import 'package:test/test.dart';
import 'package:todo_dart_react/src/todo_dart_react/todo_dart_react.dart';

main() {
  group('Vending Machine Store and Actions', () {
    ToDoActions actions;
    ToDoStore store;

    setUp(() {
      actions = new ToDoActions();
      store = new ToDoStore(actions);
    });

    group('TODO', () {
      test('TODO', () async {
        // await actions.productSelected(product);
        // expect(store.lastProductDispensed, isNull, reason: 'The last dispensed product was not null');
        // expect(store.displayError, equals('"${product}" not found'));
      });
    });
  });
}