import 'package:flutter/material.dart';

import '../../stores/home_page_store.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final HomePageStore _homePageStore = HomePageStore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_homePageStore.hasName) Text('Name: ${_homePageStore.name}'),
            Text('Count: ${_homePageStore.counter}'),
          ],
        ),
      ),
    );
  }
}
