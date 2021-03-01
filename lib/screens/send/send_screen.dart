import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/shared/app_bar.dart';
import 'package:flutter_paypal_redesign_clone/utils/custom_field.dart';
import 'package:flutter_paypal_redesign_clone/shared/recent.dart';
import 'package:flutter_paypal_redesign_clone/shared/contacts.dart';
import 'package:flutter_paypal_redesign_clone/screens/send/send_to.dart';

class SendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Send Money"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomField(
              autoValidate: false,
              hintText: "Name, Email or Mobile number",
              iconData: Icons.search,
            ),

            Recent(
              navigateTo: SendTo(),
            ),

            Expanded(
              child: Contacts(
                navigateTo: SendTo(),
              ),
            ),

          ],
        ),
      )
    );
  }
}