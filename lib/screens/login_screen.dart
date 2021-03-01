import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/screens/home_page.dart';
import 'package:flutter_paypal_redesign_clone/screens/signup_screen.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/utils/custom_field.dart';
import 'package:flutter_paypal_redesign_clone/utils/button.dart';
import 'package:flutter_paypal_redesign_clone/utils/validators.dart';
import 'package:flutter_paypal_redesign_clone/view/base_view.dart';
import 'package:flutter_paypal_redesign_clone/view_model/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Validators validate = Validators();
  TextEditingController _emailId;
  TextEditingController _password;
  @override
  Widget build(BuildContext context) {
    return BaseView<LogInViewModel>(onModelReady: (model) {
      _emailId = TextEditingController();
      _password = TextEditingController();
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
                    key: model.logInKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(child: Image.asset(
                          "assets/images/paypal_logo.png", scale: 5.5,)),
                        SizedBox(height: 30,),
                        Text(
                          "Log In",
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
                          controller: _emailId,
                          validator: validate.validateEmail,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.emailAddress,
                          hintText: "Email",
                          iconData: Icons.alternate_email,
                        ),

                        CustomField(
                          controller: _password,
                          validator: validate.validatePassword,
                          autoValidate: model.autoValidate,
                          keyboardType: TextInputType.text,
                          hintText: "Password",
                          iconData: Icons.lock_outline,
                        ),

                        SizedBox(
                          height: 32,
                        ),

                        Button(
                          text: "Log In",
                          onPress: () {
                            model.setAutoValidate(true);
                            if (model.logInKey.currentState.validate()) {
                              model.clearData(context);
                              _emailId.clear();
                              _password.clear();
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                  HomePage()), (Route<dynamic> route) => false);
                            }

                          },
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          "Nice to have you back, it's time to start shopping, thousands of stores are waiting for you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "Do you have an account?",
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
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(builder: (context) =>
                                        SignUpScreen()), (
                                    Route<dynamic> route) => false);
                              },
                              child: Text(
                                "Sign Up",
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