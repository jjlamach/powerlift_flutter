import 'package:power_lift/data/repository/power_lift_api_impl.dart';

abstract class UseCase {
  final PowerLiftApiImpl api;
  UseCase(this.api);
}
