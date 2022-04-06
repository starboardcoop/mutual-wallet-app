import 'package:flutter/material.dart';

class ExchangeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ExchangeButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.swap_horiz, size: 32),
    );
  }
}
