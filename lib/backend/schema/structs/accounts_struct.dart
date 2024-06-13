// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsStruct extends BaseStruct {
  AccountsStruct({
    int? id,
    String? email,
  })  : _id = id,
        _email = email;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static AccountsStruct fromMap(Map<String, dynamic> data) => AccountsStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
      );

  static AccountsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountsStruct && id == other.id && email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([id, email]);
}

AccountsStruct createAccountsStruct({
  int? id,
  String? email,
}) =>
    AccountsStruct(
      id: id,
      email: email,
    );
