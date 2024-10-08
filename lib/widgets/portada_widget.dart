import 'package:flutter/material.dart';

class PortadaWidget extends StatelessWidget {
  const PortadaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 180,
      width: 120,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}