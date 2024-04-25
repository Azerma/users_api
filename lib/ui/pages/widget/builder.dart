import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users_api/ui/cubit/users/users_cubit.dart';
import 'package:users_api/ui/cubit/users/users_state.dart';

import 'package:users_api/ui/pages/widget/adress_box.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(builder: (context, state) {
      if (state is UsersLoading) {
        return const CircularProgressIndicator();
      } else if (state is UsersSuccess) {
        final user = state.users;
        return ListView.builder(
            itemCount: user.length,
            itemBuilder: (BuildContext context, int index) {
              final users = user[index];
              return AdressBox(userName: users.username!);
            });
      }
      return const SizedBox.shrink();
    });
  }
}
