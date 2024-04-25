import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users_api/ui/cubit/users/users_state.dart';
import 'package:users_api/ui/pages/data/service/user_service.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial());

  final UserService _userService = UserService();

  void getUsers() async {
    try {
      emit(UsersLoading());
      final users = await _userService.getUsers();
      emit(UsersSuccess(users));
    } catch (e) {
      emit(UsersError());
    }
  }
}
