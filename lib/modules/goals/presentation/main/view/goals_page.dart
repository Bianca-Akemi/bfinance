import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SMobillsAppBar(title: 'Metas'),
      body: const Center(
        child: Text('Metas'),
      ),
    );
  }
}
