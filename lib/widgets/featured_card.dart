import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12.0,
        top: 12.0,
      ),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.8,
      height: 200.0,
    );
  }
}
