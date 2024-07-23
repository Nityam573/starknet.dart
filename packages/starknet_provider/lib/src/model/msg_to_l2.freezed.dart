// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'msg_to_l2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MsgToL2 _$MsgToL2FromJson(Map<String, dynamic> json) {
  return _MsgToL2.fromJson(json);
}

/// @nodoc
mixin _$MsgToL2 {
  String? get fromAddress => throw _privateConstructorUsedError;
  List<Felt>? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgToL2CopyWith<MsgToL2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgToL2CopyWith<$Res> {
  factory $MsgToL2CopyWith(MsgToL2 value, $Res Function(MsgToL2) then) =
      _$MsgToL2CopyWithImpl<$Res, MsgToL2>;
  @useResult
  $Res call({String? fromAddress, List<Felt>? payload});
}

/// @nodoc
class _$MsgToL2CopyWithImpl<$Res, $Val extends MsgToL2>
    implements $MsgToL2CopyWith<$Res> {
  _$MsgToL2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAddress = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      fromAddress: freezed == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<Felt>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MsgToL2ImplCopyWith<$Res> implements $MsgToL2CopyWith<$Res> {
  factory _$$MsgToL2ImplCopyWith(
          _$MsgToL2Impl value, $Res Function(_$MsgToL2Impl) then) =
      __$$MsgToL2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fromAddress, List<Felt>? payload});
}

/// @nodoc
class __$$MsgToL2ImplCopyWithImpl<$Res>
    extends _$MsgToL2CopyWithImpl<$Res, _$MsgToL2Impl>
    implements _$$MsgToL2ImplCopyWith<$Res> {
  __$$MsgToL2ImplCopyWithImpl(
      _$MsgToL2Impl _value, $Res Function(_$MsgToL2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAddress = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$MsgToL2Impl(
      fromAddress: freezed == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<Felt>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MsgToL2Impl implements _MsgToL2 {
  const _$MsgToL2Impl(
      {required this.fromAddress, required final List<Felt>? payload})
      : _payload = payload;

  factory _$MsgToL2Impl.fromJson(Map<String, dynamic> json) =>
      _$$MsgToL2ImplFromJson(json);

  @override
  final String? fromAddress;
  final List<Felt>? _payload;
  @override
  List<Felt>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MsgToL2(fromAddress: $fromAddress, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MsgToL2Impl &&
            (identical(other.fromAddress, fromAddress) ||
                other.fromAddress == fromAddress) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fromAddress, const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MsgToL2ImplCopyWith<_$MsgToL2Impl> get copyWith =>
      __$$MsgToL2ImplCopyWithImpl<_$MsgToL2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MsgToL2ImplToJson(
      this,
    );
  }
}

abstract class _MsgToL2 implements MsgToL2 {
  const factory _MsgToL2(
      {required final String? fromAddress,
      required final List<Felt>? payload}) = _$MsgToL2Impl;

  factory _MsgToL2.fromJson(Map<String, dynamic> json) = _$MsgToL2Impl.fromJson;

  @override
  String? get fromAddress;
  @override
  List<Felt>? get payload;
  @override
  @JsonKey(ignore: true)
  _$$MsgToL2ImplCopyWith<_$MsgToL2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
