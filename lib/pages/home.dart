import 'package:flutter/material.dart';
import '../components/TabbarContainer.dart';

class HomePage extends StatelessWidget {
  void _onAdd() {}

  @override
  Widget build(BuildContext context) {
    return TabbarContainer(
        body: Container(
      child: Text("123456"),
    ));
  }
}
