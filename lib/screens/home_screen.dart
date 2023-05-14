import 'package:flutter/material.dart';

import '/widgets/action_snack_bar.dart';
import '/widgets/simple_snack_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(width: double.infinity),
          SimpleSnackBar(),
          SizedBox(height: 30),
          ActionSnackBar(),
        ],
      ),
    );
  }
}
