class AuthFormValidations {
  const AuthFormValidations._();

  static String? validateRequiredField(String? value) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    return null;
  }

  static String? validateValueLength(String? value, int length) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    if (value?.length != length) return 'Invalid length';
    return null;
  }

  static String? validateEmailField(String? value) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value ?? "");
    if (!emailValid) {
      return 'Enter a valid email address.';
    }
    return null;
  }

  static String? validateMinMax(String? value, int min, [int? max]) {
    if ((value?.length ?? 0) < min) return 'Character too short.';
    if (max != null && (value?.length ?? 0) > max) return 'Character too long.';
    return null;
  }

  static String? validatePhoneNumber(String? value, int min, [int? max]) {
    if ((value?.length ?? 0) < min) return 'Phone number too short.';
    if (max != null && (value?.length ?? 0) > max) {
      return 'Phone number too long.';
    }
    return null;
  }

  static String? validateAmount(String? value, int min, [int? max]) {
    if (value != null) {
      double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
      if (amount < min) return "Amount should be at least $min";
      if (max != null && (amount > max)) {
        return "Amount cannot be greater than $max";
      }
    } else {
      return 'Character too short.';
    }
    return null;
  }

  static String? validateAmountWithBalance(String? value, num balance, int min,
      [int? max]) {
    if (value != null) {
      double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
      if (amount < min) return "Amount should be at least $min";
      if (max != null && (amount > max)) {
        return "Amount cannot be greater than $max";
      }
      if (amount > balance) return "Insufficient balance";
    } else {
      return 'Character too short.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regExp = RegExp(pattern);
    if ((value?.length ?? 0) < 6) return 'Minimum of 6 characters for password';
    if (!regExp.hasMatch(value!)) {
      return 'Password should contain at least 1 uppercase, 1 digit & 1 special character';
    }
    return null;
  }

  static String? validatePin(String? value) {
    if ((value?.length ?? 0) != 6) {
      return 'Transaction pin should be 6 characters';
    }

    return null;
  }

  static String? validateRePassword(String? value, String previousPassword) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    if (value != previousPassword) return 'Password does not match.';
    return null;
  }
}
