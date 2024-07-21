import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

Response onRequest(RequestContext context) {
  const user = User(id: 'asdf', email: 'thewillbunker@gmail.com');
  return Response(body: 'Welcome to Dart Frog: ${user.email}!');
}
