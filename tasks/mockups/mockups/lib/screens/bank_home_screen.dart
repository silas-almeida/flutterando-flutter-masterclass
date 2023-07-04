import 'package:flutter/material.dart';

import '../main.dart';

class BankHomeScreen extends StatelessWidget {
  const BankHomeScreen({
    super.key,
  });

  final primaryStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26);

  final secondaryStyle = const TextStyle(
      color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.black,
          height: mediaQuery.size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColors.purple,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: CustomColors.purple,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(100))),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 6.0),
                            height: 84,
                            width: 40,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(100),
                                  topRight: Radius.circular(100)),
                              shape: BoxShape.rectangle,
                              color: CustomColors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Get Your Money',
                      style: primaryStyle,
                    ),
                    Text('Under Control', style: primaryStyle),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Manage your expenses.', style: secondaryStyle),
                    Text('Seamlessly.', style: secondaryStyle),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: CustomColors.purple,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            margin: const EdgeInsets.only(
                                left: 12.0, right: 12, bottom: 4.0),
                            height: 40,
                            width: double.infinity,
                            child: const Center(
                                child: Text(
                              'Sign up with email ID',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0)),
                            margin: const EdgeInsets.only(
                                left: 12.0, right: 12, top: 4.0, bottom: 20.0),
                            height: 40,
                            width: double.infinity,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/google-logo.png',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    'Sign up with Google',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: RichText(
                        text: const TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
