import 'package:dart_frog/dart_frog.dart';
import 'package:stormberry/stormberry.dart';

final db = Database(
  host: 'localhost',
  port: 5432,
  database: 'Observable',
  username: 'postgres',
  password: 'postgres',
  useSSL: false,
);

Handler middleware(Handler handler) {
  return handler.use(provider<Database>((context) => db));
}
