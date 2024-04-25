import 'package:flutter/material.dart';
import 'package:users_api/ui/pages/widget/builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const BuilderWidget(),
    );
  }
}
