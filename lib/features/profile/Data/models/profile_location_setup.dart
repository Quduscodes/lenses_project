import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_location_setup.freezed.dart';
part 'profile_location_setup.g.dart';

@freezed
class ProfileSetupFormData with _$ProfileSetupFormData {
  factory ProfileSetupFormData({
    String? city,
    String? state,
    String? homeAddress,
  }) = _ProfileSetup;

  factory ProfileSetupFormData.fromJson(Map<String, dynamic> json) =>
      _$ProfileSetupFormDataFromJson(json);
}
