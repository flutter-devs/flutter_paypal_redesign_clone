import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/view/base_viewmodel.dart';

class SignUpViewModel extends BaseViewModel {


  bool _autoValidate = false;


  GlobalKey<FormState> _signUpKey = GlobalKey();


  clearData(BuildContext context) {
    // resetFocus(context);
    setAutoValidate(false);
    setResetKey(GlobalKey());
  }

  setResetKey(GlobalKey<FormState> value) {
    _signUpKey = value;
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

  GlobalKey<FormState> get signUpKey => _signUpKey;


}
