import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/db_models.dart' as db;

part 'models.freezed.dart';
part 'models.g.dart';

@Freezed()
class User with _$User implements db.UserView {
  const factory User({
    required int id,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  factory User.fromDb(db.UserView dbUser) => User(
        id: dbUser.id,
        email: dbUser.email,
      );
}
