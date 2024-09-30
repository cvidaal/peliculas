import 'package:flutter/material.dart';

class BuscarWidget extends StatelessWidget {
  const BuscarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => print(value),
      decoration: const InputDecoration(
        labelStyle: TextStyle(fontSize: 20),
        labelText: "Busqueda",
        prefixIcon: Icon(Icons.search),
        hintText: 'Busca una película o actor',
        enabledBorder: UnderlineInputBorder(
          
        )
      ),
    );
  }
}