import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/screens/login_screen.dart';
import 'package:flutter_paypal_redesign_clone/shared/bottom_navigation_item.dart';
import 'package:flutter_paypal_redesign_clone/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_paypal_redesign_clone/screens/send/send_screen.dart';
import 'package:flutter_paypal_redesign_clone/screens/request/request_screen.dart';
import 'package:flutter_paypal_redesign_clone/screens/settings/settings_screen.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<bool> bottomNavigationItemStatus = [true, false, false, false];

  Widget currentWidgetView;
  Future <AlertDialog> _showSureToExitDialog(BuildContext context, String title, String content,) {
    showDialog<AlertDialog>(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            FlatButton(
                child: Text(
                  "No",
                  style: TextStyle(fontSize: 18,color: kSecondaryColor),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            FlatButton(
                child: Text(
                  "Yes",

                  style: TextStyle(fontSize: 18,color: kSecondaryColor),
                ),
                onPressed: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => LoginScreen()));
                }),
          ],
        );
      },
    );
  }


  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = DashboardScreen();
    });
  }

  setCurrentWidgetView(int index){
    setState(() {
      switch (index){
        case 0: currentWidgetView = DashboardScreen(); 
        break;
        case 1: currentWidgetView = SendScreen();
        break;
        case 2: currentWidgetView = RequestScreen();
        break;
        case 3: currentWidgetView = Settings(); 
        break;
      }
      bottomNavigationItemStatus = [index == 0, index == 1, index == 2, index == 3];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 250),
          child: currentWidgetView,
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            height: 80,
            color: Colors.white,
            child: Column(
              children: [

                Container(
                  height: 2,
                  color: Colors.grey[300],
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      BottomNavigationItem(
                        imageUrl: "assets/icons/wallet.png",
                        text: "Dashboard",
                        selected: bottomNavigationItemStatus[0],
                        onPress: () {
                          setCurrentWidgetView(0);
                        },
                      ),

                      BottomNavigationItem(
                        imageUrl: "assets/icons/send_money.png",
                        text: "Send",
                        selected: bottomNavigationItemStatus[1],
                        onPress: () {
                          setCurrentWidgetView(1);
                        },
                      ),

                      BottomNavigationItem(
                        imageUrl: "assets/icons/request_money.png",
                        text: "Request",
                        selected: bottomNavigationItemStatus[2],
                        onPress: () {
                          setCurrentWidgetView(2);
                        },
                      ),

                      BottomNavigationItem(
                        imageUrl: "assets/icons/settings.png",
                        text: "Settings",
                        selected: bottomNavigationItemStatus[3],
                        onPress: () {
                          setCurrentWidgetView(3);
                        },
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        _showSureToExitDialog(context,'Exit',
          'Are you sure want to exit?',);
        return false;
      },
    );
  }
}