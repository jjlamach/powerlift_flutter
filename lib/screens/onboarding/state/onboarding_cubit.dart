import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  String? email;
  String? password;
  String? confirmPassword;
  String? username;
  String? fullName;
  OnboardingCubit() : super(const _Initial());

  void emailText(String txt) {
    email = txt;
    emit(OnboardingState.emailField(txt));
  }

  void passwordTxt(String password) {
    this.password = password;
    emit(OnboardingState.passwordField(password));
  }

  void confirmPasswordTxt(String txt) {
    confirmPassword = txt;
    emit(OnboardingState.confirmPasswordField(txt));
  }

  void userName(String txt) {
    username = txt;
    emit(OnboardingState.username(txt));
  }

  void fullname(String txt) {
    fullName = txt;
    emit(OnboardingState.fullName(txt));
  }
}

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.emailField(String email) = _EmailField;
  const factory OnboardingState.passwordField(String password) = _PasswordField;
  const factory OnboardingState.confirmPasswordField(String password) =
      _ConfirmPasswordField;
  const factory OnboardingState.username(String username) = _UsernameField;
  const factory OnboardingState.fullName(String fullName) = _FullNameField;
}
