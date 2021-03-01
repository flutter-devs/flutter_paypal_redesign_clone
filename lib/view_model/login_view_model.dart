import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/view/base_viewmodel.dart';

class LogInViewModel extends BaseViewModel {


  bool _autoValidate = false;


  GlobalKey<FormState> _logInKey = GlobalKey();
  

  clearData(BuildContext context) {
    // resetFocus(context);
    setAutoValidate(false);
    setLogInKey(GlobalKey());
  }

  setLogInKey(GlobalKey<FormState> value) {
    _logInKey = value;
    notifyListeners();
  }

  void resetFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  bool get autoValidate => _autoValidate;

  setAutoValidate(bool value) {
    _autoValidate = value;
    notifyListeners();
  }

  GlobalKey<FormState> get logInKey => _logInKey;


}
