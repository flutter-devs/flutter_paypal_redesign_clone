
import 'package:flutter_paypal_redesign_clone/utils/strings.dart';

class Validators {
  String numberValidator(String value, String error) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) || value.isEmpty) {
      return error;
    } else {
      return null;
    }
  }

  String pinValidator(String value) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.pinRequired;
    } else if (value.isEmpty || value.length < 4) {
      return Strings.invalidPin;
    } else {
      return null;
    }
  }

  String phoneNumberValidator(String value) {
    value = value.replaceAll("-", "");
    String pattern = r'^([0|\+[0-9]{1,5})?([0-9]{10})$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) || value.length == 0 || value.length < 10)
      return Strings.invalidCellNumber;
    else
      return null;
  }

  String countryCodeValidator(String value) {
    if (value.length == 0 || value.length < 2)
      return Strings.invalidCountryCode;
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.emailRequired;
    } else if (!regex.hasMatch(value))
      return Strings.invalidEmail;
    else
      return null;
  }

  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    //String pattern = r'(/^[A-Za-z\s.\(\)0-9]{3,}$/)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.nameRequired;
    } else if (!regExp.hasMatch(value.trim())) {
      return Strings.invalidName;
    }
    return null;
  }

  String validateSurname(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    //String pattern = r'(/^[A-Za-z\s.\(\)0-9]{3,}$/)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.surnameRequired;
    } else if (!regExp.hasMatch(value.trim())) {
      return Strings.invalidSurname;
    }
    return null;
  }

  String validateDob(String value) {
    if (value.length == 0) {
      return Strings.dobRequired;
    } else {
      return null;
    }
  }

  String validateDate(String value) {
    if (value.length == 0) {
      return Strings.dateRequired;
    } else {
      return null;
    }
  }

  String validateAmount(String value) {
    if (value.length == 0) {
      return Strings.amountRequired;
    } else {
      return null;
    }
  }

  String validateAmountWithdrawn(String value) {
    if (value.length == 0) {
      return Strings.amountWithdrawnRequired;
    } else {
      return null;
    }
  }

  String validateWithdrawalReason(String value) {
    if (value.length == 0) {
      return Strings.reasonRequired;
    } else {
      return null;
    }
  }

  String validateGroupCode(String value) {
    if (value.length == 0) {
      return Strings.groupCodeRequired;
    } else {
      return null;
    }
  }

  String validatePaymentTarget(String value) {
    if (value.length == 0) {
      return Strings.targetRequired;
    } else {
      return null;
    }
  }

  String validateLastBalance(String value) {
    if (value.length == 0) {
      return Strings.lastBalanceRequired;
    } else {
      return null;
    }
  }

  String validateGroupDiscussion(String value) {
    if (value.length == 0) {
      return Strings.groupDiscussionRequired;
    } else {
      return null;
    }
  }

  String validateLogo(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    //String pattern = r'(/^[A-Za-z\s.\(\)0-9]{3,}$/)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.logoRequired;
    } else if (!regExp.hasMatch(value.trim())) {
      return Strings.invalidLogo;
    }
    return null;
  }

  String validateTown(String value) {
    if (value.length == 0) {
      return Strings.townRequired;
    } else {
      return null;
    }
  }

  String validateAddress(String value) {
    if (value.length == 0) {
      return Strings.addressRequired;
    } else {
      return null;
    }
  }

  String validateEventDiscussion(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    //String pattern = r'(/^[A-Za-z\s.\(\)0-9]{3,}$/)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.eventDiscussionRequired;
    } else if (!regExp.hasMatch(value.trim())) {
      return Strings.invalidEventDiscussion;
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return Strings.passwordValidate;
    } else {
      return null;
    }
  }

  String validateConfirmPassword(String first, String second) {
    print("First is: $first and Second is $second");
    if (second == null || second.length == 0) {
      return Strings.passwordRequired;
    } else if (first != second) {
      return Strings.passwordMismatch;
    } else {
      return null;
    }
  }

  String validateOTP(
    String value,
  ) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.otpRequired;
    } else if (value.isEmpty || value.length < 4) {
      return Strings.invalidOtp;
    } else {
      return null;
    }
  }

  String validateCode(
    String value,
  ) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.codeRequired;
    } else if (value.isEmpty || value.length < 4) {
      return Strings.invalidCode;
    } else {
      return null;
    }
  }
}
