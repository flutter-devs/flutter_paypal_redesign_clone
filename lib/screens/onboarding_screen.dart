import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/model/on_boarding_model.dart';
import 'package:flutter_paypal_redesign_clone/utils/button.dart';
import 'package:flutter_paypal_redesign_clone/screens/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for (var i = 0; i < _totalPages; i++) {
      list.add(_indicator(i == _currentPage));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? kSecondaryColor : Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(5)
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _currentPage = page;
                });
              },
              children: getOnBoardingModel().map((item) => renderPageItem(item)).toList(),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(48),
            child: Container(
              height: 48,
              child: _currentPage != _totalPages - 1
              ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          LoginScreen()), (Route<dynamic> route) => false);

                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),

                  Row(
                    children: _buildPageIndicator(),
                  ),

                  GestureDetector(
                    onTap: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500), 
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  
                ],
              )
              : Button(
                text: "Let's start",
                onPress: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                      LoginScreen()), (Route<dynamic> route) => false);

                }
              )
            ),
          ),

        ],
      ),
    );
  }

  Widget renderPageItem(OnBoardingModel model) {
    return Padding(
      padding: EdgeInsets.all(48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Center(
            child: Image.asset(
              model.imageUrl,
              height: MediaQuery.of(context).size.height*0.3,
              fit: BoxFit.fitHeight,
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Center(
            child: Text(
              model.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),

          SizedBox(
            height: 16,
          ),

          Center(
            child: Container(
              height: 1,
              width: MediaQuery.of(context).size.width*0.3,
              color: Colors.grey[300],
            ),
          ),

          SizedBox(
            height: 16,
          ),

          Center(
            child: Text(
              model.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kGreyColor,
                height: 1.6,
              ),
            ),
          ),

        ],
      ),
    );
  }
}