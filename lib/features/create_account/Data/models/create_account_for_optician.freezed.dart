// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_for_optician.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountForOpticianFormData _$CreateAccountForOpticianFormDataFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountForOptician.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountForOpticianFormData {
  String? get opticianName => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get emailAddress => throw _privateConstructorUsedError;
  String? get createPassword => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountForOpticianFormDataCopyWith<CreateAccountForOpticianFormData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountForOpticianFormDataCopyWith<$Res> {
  factory $CreateAccountForOpticianFormDataCopyWith(
          CreateAccountForOpticianFormData value,
          $Res Function(CreateAccountForOpticianFormData) then) =
      _$CreateAccountForOpticianFormDataCopyWithImpl<$Res,
          CreateAccountForOpticianFormData>;
  @useResult
  $Res call(
      {String? opticianName,
      String? profession,
      String? phoneNumber,
      String? emailAddress,
      String? createPassword,
      String? confirmPassword});
}

/// @nodoc
class _$CreateAccountForOpticianFormDataCopyWithImpl<$Res,
        $Val extends CreateAccountForOpticianFormData>
    implements $CreateAccountForOpticianFormDataCopyWith<$Res> {
  _$CreateAccountForOpticianFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opticianName = freezed,
    Object? profession = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? createPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      opticianName: freezed == opticianName
          ? _value.opticianName
          : opticianName // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createPassword: freezed == createPassword
          ? _value.createPassword
          : createPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountForOpticianImplCopyWith<$Res>
    implements $CreateAccountForOpticianFormDataCopyWith<$Res> {
  factory _$$CreateAccountForOpticianImplCopyWith(
          _$CreateAccountForOpticianImpl value,
          $Res Function(_$CreateAccountForOpticianImpl) then) =
      __$$CreateAccountForOpticianImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? opticianName,
      String? profession,
      String? phoneNumber,
      String? emailAddress,
      String? createPassword,
      String? confirmPassword});
}

/// @nodoc
class __$$CreateAccountForOpticianImplCopyWithImpl<$Res>
    extends _$CreateAccountForOpticianFormDataCopyWithImpl<$Res,
        _$CreateAccountForOpticianImpl>
    implements _$$CreateAccountForOpticianImplCopyWith<$Res> {
  __$$CreateAccountForOpticianImplCopyWithImpl(
      _$CreateAccountForOpticianImpl _value,
      $Res Function(_$CreateAccountForOpticianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opticianName = freezed,
    Object? profession = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? createPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$CreateAccountForOpticianImpl(
      opticianName: freezed == opticianName
          ? _value.opticianName
          : opticianName // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createPassword: freezed == createPassword
          ? _value.createPassword
          : createPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountForOpticianImpl implements _CreateAccountForOptician {
  _$CreateAccountForOpticianImpl(
      {this.opticianName,
      this.profession,
      this.phoneNumber,
      this.emailAddress,
      this.createPassword,
      this.confirmPassword});

  factory _$CreateAccountForOpticianImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountForOpticianImplFromJson(json);

  @override
  final String? opticianName;
  @override
  final String? profession;
  @override
  final String? phoneNumber;
  @override
  final String? emailAddress;
  @override
  final String? createPassword;
  @override
  final String? confirmPassword;

  @override
  String toString() {
    return 'CreateAccountForOpticianFormData(opticianName: $opticianName, profession: $profession, phoneNumber: $phoneNumber, emailAddress: $emailAddress, createPassword: $createPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountForOpticianImpl &&
            (identical(other.opticianName, opticianName) ||
                other.opticianName == opticianName) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.createPassword, createPassword) ||
                other.createPassword == createPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, opticianName, profession,
      phoneNumber, emailAddress, createPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountForOpticianImplCopyWith<_$CreateAccountForOpticianImpl>
      get copyWith => __$$CreateAccountForOpticianImplCopyWithImpl<
          _$CreateAccountForOpticianImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountForOpticianImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountForOptician
    implements CreateAccountForOpticianFormData {
  factory _CreateAccountForOptician(
      {final String? opticianName,
      final String? profession,
      final String? phoneNumber,
      final String? emailAddress,
      final String? createPassword,
      final String? confirmPassword}) = _$CreateAccountForOpticianImpl;

  factory _CreateAccountForOptician.fromJson(Map<String, dynamic> json) =
      _$CreateAccountForOpticianImpl.fromJson;

  @override
  String? get opticianName;
  @override
  String? get profession;
  @override
  String? get phoneNumber;
  @override
  String? get emailAddress;
  @override
  String? get createPassword;
  @override
  String? get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountForOpticianImplCopyWith<_$CreateAccountForOpticianImpl>
      get copyWith => throw _privateConstructorUsedError;
}
