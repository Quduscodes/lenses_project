import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_for_optician.freezed.dart';
part 'create_account_for_optician.g.dart';

@freezed
class CreateAccountForOpticianFormData with _$CreateAccountForOpticianFormData {
  factory CreateAccountForOpticianFormData({
    String? opticianName,
    String? profession,
    String? phoneNumber,
    String? emailAddress,
    String? createPassword,
    String? confirmPassword,
  }) = _CreateAccountForOptician;

  factory CreateAccountForOpticianFormData.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountForOpticianFormDataFromJson(json);
}
