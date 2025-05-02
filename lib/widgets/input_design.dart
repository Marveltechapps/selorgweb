import 'package:flutter/material.dart';

class EmptyContainer extends StatelessWidget {
  /// Creates an instance of [InputDesign].
  const EmptyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 222.0),
      decoration: const BoxDecoration(color: Color(0xFF052E16)),
      // Using Row as a flex container equivalent
      child: const Row(
        children: [], // Empty children array as per original design
      ),
    );
  }
}
