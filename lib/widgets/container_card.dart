import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
    this.child,
    required this.title,
  }) : super(key: key);

  final Widget? child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              top: 16.0,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          if (child != null) Expanded(child: child!),
        ],
      ),
    );
  }
}
