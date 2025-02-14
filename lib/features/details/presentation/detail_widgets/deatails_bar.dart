
import 'package:flutter/material.dart';

class DetailsBar extends StatelessWidget {
  const DetailsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.close),
        Spacer(),
        Icon(Icons.shopping_cart)
      ],
    );
  }
}