part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInSuccess extends SignInState {
  final String role;

  SignInSuccess({required this.role});
}

final class SignInLoading extends SignInState {}

final class SignInFailure extends SignInState {
  final String titleErrorMessage, descriptionErrMessage;

  SignInFailure(
      {required this.titleErrorMessage, required this.descriptionErrMessage});
}
