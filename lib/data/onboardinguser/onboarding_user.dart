import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_user.freezed.dart';

@freezed
class OnboardingUser with _$OnboardingUser {
  const factory OnboardingUser({
    String? email,
    String? password,
    String? confirmPassword,
    String? username,
    String? fullName,
  }) = _OnboardingUser;
}
