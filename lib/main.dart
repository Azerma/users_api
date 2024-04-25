import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users_api/ui/cubit/users/users_cubit.dart';

import 'package:users_api/ui/pages/home_page.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
      home: BlocProvider(
        create: (context) => UsersCubit()..getUsers(),
        child: const HomePage(),
      ),
    );
  }
}
