import 'package:bloc/bloc.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/models/onboardinguser/onboarding_user.dart';

class OnboardingCubit extends Cubit<OnboardingUser?> {
  OnboardingUser? user;

  OnboardingCubit() : super(const OnboardingUser()) {
    user = const OnboardingUser();
  }

  void emailText(String txt) async {
    user = user?.copyWith(email: txt);
    emit(user);
  }

  void passwordTxt(String password) {
    user = user?.copyWith(password: password);
    emit(user);
  }

  void confirmPasswordTxt(String txt) {
    user = user?.copyWith(confirmPassword: txt);
    emit(user);
  }

  void userName(String txt) {
    user = user?.copyWith(username: txt);
    emit(user);
  }

  void fullname(String txt) {
    user = user?.copyWith(fullName: txt);
    emit(user);
  }

  @override
  void onChange(Change<OnboardingUser?> change) {
    super.onChange(change);
    kLogger.i(change);
  }
}
