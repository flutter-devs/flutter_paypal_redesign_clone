import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/screens/login_screen.dart';
import 'package:flutter_paypal_redesign_clone/screens/home_page.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/utils/custom_field.dart';
import 'package:flutter_paypal_redesign_clone/utils/button.dart';
import 'package:flutter_paypal_redesign_clone/utils/validators.dart';
import 'package:flutter_paypal_redesign_clone/view/base_view.dart';
import 'package:flutter_paypal_redesign_clone/view_model/sign_up_view_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Validators validate = Validators();
  TextEditingController _emailId;
  TextEditingController _password;
  TextEditingController _confirmPassword;
  TextEditingController _mobile;
  TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(onModelReady: (model) {
      _emailId = TextEditingController();
      _password = TextEditingController();
      _confirmPassword = TextEditingController();
      _name = TextEditingController();
      _mobile = TextEditingController();
    }, builder: (_, model, __) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: model.signUpKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(child: Image.asset(
                            "assets/images/paypal_logo.png", scale: 7)),

                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 32,
                        ),

                        CustomField(
                          controller: _name,
                          validator: validate.validateName,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.name,
                          hintText: "Fullname",
                          iconData: Icons.person_outline,
                        ),

                        CustomField(
                          controller: _emailId,
                          validator: validate.validateEmail,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.emailAddress,
                          hintText: "Email",
                          iconData: Icons.alternate_email,
                        ),

                        CustomField(
                          controller: _mobile,
                          validator: validate.phoneNumberValidator,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.phone,
                          hintText: "Mobile number",
                          iconData: Icons.phone,
                        ),

                        CustomField(
                          controller: _password,
                          validator: validate.validatePassword,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.text,
                          hintText: "Create your password",
                          iconData: Icons.lock_outline,
                        ),

                        CustomField(
                          controller: _confirmPassword,
                          validator: (value) => validate.validateConfirmPassword(
                              _password?.text, _confirmPassword?.text),
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.text,
                          hintText: "Confirm your password",
                          iconData: Icons.lock_outline,
                        ),

                        SizedBox(
                          height: 32,
                        ),

                        Button(
                          text: "Sign Up",
                          onPress: () {
                            model.setAutoValidate(true);
                            if (model.signUpKey.currentState.validate()) {
                              model.clearData(context);
                              _confirmPassword.clear();
                              _password.clear();
                              _name.clear();
                              _mobile.clear();
                              _emailId.clear();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(builder: (context) =>
                                        LoginScreen()), (
                                    Route<dynamic> route) => false);
                            }
                          }
                        ),

                        SizedBox(
                          height: 16,
                        ),

                        Text(
                          "By signing up, you agreed with our term of Services and Privacy Policy.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 50,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "Already have an account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                              ),
                            ),

                            SizedBox(
                              width: 8,
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                    LoginScreen()), (Route<dynamic> route) => false);
                              },
                              child: Text(
                                "Log In",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    );
  }
}