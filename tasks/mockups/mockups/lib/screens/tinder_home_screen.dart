import 'package:flutter/material.dart';

class TinderHomeScreen extends StatelessWidget {
  const TinderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appbarSize = AppBar().preferredSize.height;
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: appbarSize, left: 8.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.red.withOpacity(0.82),
              Colors.pink.withOpacity(0.9)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 30,
            ),
            const Center(
              child: Image(
                image: AssetImage(
                  'assets/images/tinder-logo.png',
                ),
                width: 260,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      text: TextSpan(
                          text:
                              'By tapping Create Account or Sign in, you agree to our ',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0),
                          children: const [
                            TextSpan(
                              text: 'Terms',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '. Lear how we process you data in our ',
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: ' and ',
                            ),
                            TextSpan(
                              text: 'Cookies Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '.',
                            ),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const CustomButton(
                    customText: 'SIGN IN WITH APPLE',
                    image: Image(
                      image: AssetImage('assets/images/apple-logo.png',),
                      fit: BoxFit.cover,
                    ),
                    apple: true,
                  ),
                  const CustomButton(
                    customText: 'SIGN IN WITH FACEBOOK',
                    image: Image(
                      image: AssetImage('assets/images/facebook-logo.png'),
                    ),
                  ),
                  const CustomButton(
                    customText: 'SIGN IN WITH PHONE NUMBER',
                    image: Image(
                      image: AssetImage('assets/images/chat-icon.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Trouble Signing in?',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 6.0),
                    child: Container(
                      height: 6.0,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String customText;
  final Image image;
  final bool apple;
  const CustomButton({
    super.key,
    required this.customText,
    required this.image,
    this.apple = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 6.0),
                height: apple? 40 : 20,
                width: 30,
                child: image,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                customText,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
