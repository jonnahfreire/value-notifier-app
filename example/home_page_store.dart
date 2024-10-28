import 'package:flutter/material.dart';

class HomeState {
  int counter;
  TextEditingController nameController;
  bool get hasName => nameController.text.isNotEmpty;
  String get name => nameController.text;

  HomeState({required this.counter, required this.nameController});

  HomeState copyWith({int? counter, TextEditingController? nameController}) {
    return HomeState(
      counter: counter ?? this.counter,
      nameController: nameController ?? this.nameController,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "counter": counter,
      "name": nameController.text,
    };
  }
}

class HomePageStore {
  HomePageStore._();

  static HomePageStore? _instance;
  static HomePageStore get instance {
    _instance ??= HomePageStore._();
    return _instance!;
  }

  final ValueNotifier<HomeState> stateNotifier = ValueNotifier(
    HomeState(
      counter: 0,
      nameController: TextEditingController(),
    ),
  );

  bool get hasName => stateNotifier.value.nameController.text.isNotEmpty;
  HomeState get state => stateNotifier.value;

  void increment() {
    stateNotifier.value = state.copyWith(counter: state.counter + 1);
  }

  void decrement() {
    if (stateNotifier.value.counter == 0) return;
    stateNotifier.value = state.copyWith(counter: state.counter - 1);
  }
}
