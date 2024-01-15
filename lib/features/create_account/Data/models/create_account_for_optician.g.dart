// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_for_optician.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountForOpticianImpl _$$CreateAccountForOpticianImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountForOpticianImpl(
      opticianName: json['opticianName'] as String?,
      profession: json['profession'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      emailAddress: json['emailAddress'] as String?,
      createPassword: json['createPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$CreateAccountForOpticianImplToJson(
        _$CreateAccountForOpticianImpl instance) =>
    <String, dynamic>{
      'opticianName': instance.opticianName,
      'profession': instance.profession,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'createPassword': instance.createPassword,
      'confirmPassword': instance.confirmPassword,
    };
