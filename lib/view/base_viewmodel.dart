import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/view/view_state.dart';


class BaseViewModel with ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  set state(ViewState viewState) {
    print('State:$viewState');
    _state = viewState;
    notifyListeners();
  }
  set stateWithoutUpdate(ViewState viewState) {
    print('State:$viewState');
    _state = viewState;
  }

  void update() {
    notifyListeners();
  }
}
