import 'dart:async';
import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';
import 'package:shared/shared_db_model.dart' as db;
import 'package:stormberry/stormberry.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  final db = context.read<Database>();

  final user = await db.users.queryUser(1);
  if (user == null) {
    return Response(body: 'User not found!', statusCode: 404);
  }

  final sharedUser = User.fromDb(user);
  return Response.json(
    body: sharedUser.toJson(),
  );
}
