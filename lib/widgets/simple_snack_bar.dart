import 'package:flutter/material.dart';

class SimpleSnackBar extends StatelessWidget {
  const SimpleSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        const snackBar = SnackBar(
          content: Text(
            'I am an snack bar.',
            style: TextStyle(fontSize: 16),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.purple,
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Simple Snack Bar'),
    );
  }
}
