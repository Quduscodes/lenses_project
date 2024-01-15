// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_location_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileSetupFormData _$ProfileSetupFormDataFromJson(Map<String, dynamic> json) {
  return _ProfileSetup.fromJson(json);
}

/// @nodoc
mixin _$ProfileSetupFormData {
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get homeAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileSetupFormDataCopyWith<ProfileSetupFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSetupFormDataCopyWith<$Res> {
  factory $ProfileSetupFormDataCopyWith(ProfileSetupFormData value,
          $Res Function(ProfileSetupFormData) then) =
      _$ProfileSetupFormDataCopyWithImpl<$Res, ProfileSetupFormData>;
  @useResult
  $Res call({String? city, String? state, String? homeAddress});
}

/// @nodoc
class _$ProfileSetupFormDataCopyWithImpl<$Res,
        $Val extends ProfileSetupFormData>
    implements $ProfileSetupFormDataCopyWith<$Res> {
  _$ProfileSetupFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? homeAddress = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSetupImplCopyWith<$Res>
    implements $ProfileSetupFormDataCopyWith<$Res> {
  factory _$$ProfileSetupImplCopyWith(
          _$ProfileSetupImpl value, $Res Function(_$ProfileSetupImpl) then) =
      __$$ProfileSetupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? city, String? state, String? homeAddress});
}

/// @nodoc
class __$$ProfileSetupImplCopyWithImpl<$Res>
    extends _$ProfileSetupFormDataCopyWithImpl<$Res, _$ProfileSetupImpl>
    implements _$$ProfileSetupImplCopyWith<$Res> {
  __$$ProfileSetupImplCopyWithImpl(
      _$ProfileSetupImpl _value, $Res Function(_$ProfileSetupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? homeAddress = freezed,
  }) {
    return _then(_$ProfileSetupImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSetupImpl implements _ProfileSetup {
  _$ProfileSetupImpl({this.city, this.state, this.homeAddress});

  factory _$ProfileSetupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileSetupImplFromJson(json);

  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? homeAddress;

  @override
  String toString() {
    return 'ProfileSetupFormData(city: $city, state: $state, homeAddress: $homeAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSetupImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.homeAddress, homeAddress) ||
                other.homeAddress == homeAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, state, homeAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSetupImplCopyWith<_$ProfileSetupImpl> get copyWith =>
      __$$ProfileSetupImplCopyWithImpl<_$ProfileSetupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSetupImplToJson(
      this,
    );
  }
}

abstract class _ProfileSetup implements ProfileSetupFormData {
  factory _ProfileSetup(
      {final String? city,
      final String? state,
      final String? homeAddress}) = _$ProfileSetupImpl;

  factory _ProfileSetup.fromJson(Map<String, dynamic> json) =
      _$ProfileSetupImpl.fromJson;

  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get homeAddress;
  @override
  @JsonKey(ignore: true)
  _$$ProfileSetupImplCopyWith<_$ProfileSetupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
