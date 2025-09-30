// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_delivery_status_update_request_delivery_agent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotifyDeliveryStatusUpdateRequestDeliveryAgent
    extends NotifyDeliveryStatusUpdateRequestDeliveryAgent {
  @override
  final int? id;
  @override
  final String? name;

  factory _$NotifyDeliveryStatusUpdateRequestDeliveryAgent([
    void Function(NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder)?
    updates,
  ]) =>
      (NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder()..update(updates))
          ._build();

  _$NotifyDeliveryStatusUpdateRequestDeliveryAgent._({this.id, this.name})
    : super._();
  @override
  NotifyDeliveryStatusUpdateRequestDeliveryAgent rebuild(
    void Function(NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder toBuilder() =>
      NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotifyDeliveryStatusUpdateRequestDeliveryAgent &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'NotifyDeliveryStatusUpdateRequestDeliveryAgent',
          )
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder
    implements
        Builder<
          NotifyDeliveryStatusUpdateRequestDeliveryAgent,
          NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder
        > {
  _$NotifyDeliveryStatusUpdateRequestDeliveryAgent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder() {
    NotifyDeliveryStatusUpdateRequestDeliveryAgent._defaults(this);
  }

  NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotifyDeliveryStatusUpdateRequestDeliveryAgent other) {
    _$v = other as _$NotifyDeliveryStatusUpdateRequestDeliveryAgent;
  }

  @override
  void update(
    void Function(NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NotifyDeliveryStatusUpdateRequestDeliveryAgent build() => _build();

  _$NotifyDeliveryStatusUpdateRequestDeliveryAgent _build() {
    final _$result =
        _$v ??
        _$NotifyDeliveryStatusUpdateRequestDeliveryAgent._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
