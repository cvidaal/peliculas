import 'package:flutter/material.dart';

class BotonOpciones extends StatelessWidget {
  const BotonOpciones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 70),
      icon: const Icon(Icons.more_vert, size: 40, color: Colors.white,),
      itemBuilder: (BuildContext context) => <PopupMenuEntry> [
        PopupMenuItem(onTap: (){}, value: 1, child: const Text('Opción 1'),),
        PopupMenuItem(onTap: (){}, value: 2, child: const Text('Opción 2'),)
      ],
    );
  }
}