

import 'package:flutter_paypal_redesign_clone/view_model/login_view_model.dart';
import 'package:flutter_paypal_redesign_clone/view_model/sign_up_view_model.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LogInViewModel());
  locator.registerLazySingleton(() => SignUpViewModel());

}
