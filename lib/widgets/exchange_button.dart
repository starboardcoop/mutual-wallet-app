import 'package:flutter/material.dart';

class ExchangeButton extends FloatingActionButton {
  const ExchangeButton({required VoidCallback? onPressed})
      : super(
          onPressed: onPressed,
          child: const Icon(
            Icons.swap_horiz,
            size: 32,
          ),
        );
}
