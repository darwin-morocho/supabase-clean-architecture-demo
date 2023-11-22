import '../../../../core/presentation/utils/validations_ext.dart';

mixin AuthFormMixin {
  String? emailValidator(String? text) {
    text = text?.trim() ?? '';
    if (!text.isValidEmail) {
      return 'Invalid email';
    }
    return null;
  }

  String? passwordValidator(String? text) {
    text = text?.trim() ?? '';
    if (!text.isValidPassword) {
      return 'Invalid password';
    }
    return null;
  }

  String? nameValidator(String? text) {
    text = text?.trim() ?? '';
    if (!text.isValidName) {
      return 'Invalid name';
    }
    return null;
  }
}
