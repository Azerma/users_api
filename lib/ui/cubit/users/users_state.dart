import 'package:users_api/ui/pages/data/model/user_respons.dart';

sealed class UsersState {}

final class UsersInitial extends UsersState {}

final class UsersLoading extends UsersState {}

final class UsersSuccess extends UsersState {
  UsersSuccess(this.users);
  List<UserResponse> users;
}

final class UsersError extends UsersState {}
