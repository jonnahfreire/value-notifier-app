import 'package:flutter/material.dart';

class HomePageStore {
  HomePageStore._();

  static HomePageStore? _instance;
  static HomePageStore get instance {
    _instance ??= HomePageStore._();
    return _instance!;
  }

  final ValueNotifier<TextEditingController> nameControllerNotifier =
      ValueNotifier(TextEditingController());
  final ValueNotifier<int> counterNotifier = ValueNotifier(0);

  int get counter => counterNotifier.value;
  bool get hasName => nameControllerNotifier.value.text.isNotEmpty;
  String get name => nameControllerNotifier.value.text;
  TextEditingController get nameController => nameControllerNotifier.value;

  void increment() {
    counterNotifier.value++;
  }

  void decrement() {
    if (counterNotifier.value == 0) return;
    counterNotifier.value--;
  }
}
