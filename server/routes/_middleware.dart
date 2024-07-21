import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  // Open a PostgreSQL connection
  final endpoint = Endpoint(
    host: 'localhost',
    database: 'observable',
    username: 'postgres',
    password: 'postgres',
  );

  return handler.use(provider<Endpoint>((context) => endpoint));
}
