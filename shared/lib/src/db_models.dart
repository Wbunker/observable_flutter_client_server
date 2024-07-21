import 'package:stormberry/stormberry.dart';

part 'db_models.schema.dart';

@Model()
abstract class User {
  @PrimaryKey()
  @AutoIncrement()
  int get id;

  String get email;
}
