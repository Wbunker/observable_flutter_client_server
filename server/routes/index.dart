import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';
import 'package:shared/shared.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  const user = User(id: 'asdf', email: 'thewillbunker@gmail.com');

  const settings = ConnectionSettings(sslMode: SslMode.disable);
  final conn = await Connection.open(
    context.read<Endpoint>(),
    settings: settings,
  );

  final result = await conn.execute('SELECT NOW()');
  print(result[0][0]);
  return Response(body: 'Welcome to Dart Frog: ${user.email}!');
}
