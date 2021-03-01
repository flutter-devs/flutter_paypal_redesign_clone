import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/shared/app_bar.dart';
import 'package:flutter_paypal_redesign_clone/screens/settings/setting_item.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Settings"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: 16,
              ),

              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/model.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Center(
                child: Text(
                  "Amenda Lewis",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              SettingItem(
                title: "Contact Information", 
                iconData: Icons.person_pin,
              ),

              SettingItem(
                title: "Change Password", 
                iconData: Icons.lock_open,
              ),

              SettingItem(
                title: "Security", 
                iconData: Icons.security,
              ),

              SettingItem(
                title: "Payment Privacy", 
                iconData: Icons.payment,
              ),

              SettingItem(
                title: "Fees", 
                iconData: Icons.attach_money,
              ),

              SettingItem(
                title: "Notifications", 
                iconData: Icons.notifications_none,
              ),

              SettingItem(
                title: "Technical Support", 
                iconData: Icons.headset,
              ),

            ],
          ),
        ),
      )
    );
  }
}