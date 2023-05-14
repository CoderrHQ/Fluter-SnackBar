import 'package:flutter/material.dart';

class ActionSnackBar extends StatelessWidget {
  const ActionSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Colors.purple,
          content: const Text(
            'The selected file was deleted',
            style: TextStyle(fontSize: 16),
          ),
          action: SnackBarAction(
            label: 'Undo',
            textColor: Colors.white,
            onPressed: ScaffoldMessenger.of(context).hideCurrentSnackBar,
          ),
        );

        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            snackBar,
          );
      },
      child: const Text('Action SnackBar'),
    );
  }
}
