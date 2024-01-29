import 'package:alphaweb/common/common.dart';

import 'package:alphaweb/screens/fade_animationtest.dart';
import 'package:alphaweb/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_svg/svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 236, 244, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInAnimation(
                  delay: 0.6,
                  child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: const Icon(
                        CupertinoIcons.back,
                        size: 35,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInAnimation(
                          delay: 0.9,
                          child: Text(
                            "Hello! Register to get  ",
                            style: Common().titelTheme,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 1.2,
                          child: Text(
                            "started",
                            style: Common().titelTheme,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Form(
                      child: Column(
                        children: [
                          const FadeInAnimation(
                            delay: 1.5,
                            child: CustomTextFormField(
                              hinttext: 'Username',
                              obsecuretext: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeInAnimation(
                            delay: 1.8,
                            child: CustomTextFormField(
                              hinttext: 'Email',
                              obsecuretext: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeInAnimation(
                            delay: 2.1,
                            child: CustomTextFormField(
                              hinttext: 'Password',
                              obsecuretext: true,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeInAnimation(
                            delay: 2.4,
                            child: CustomTextFormField(
                              hinttext: 'Confirm password',
                              obsecuretext: false,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInAnimation(
                            delay: 2.7,
                            child: CustomElevatedButton(
                              message: "Register",
                              function: () {},
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Column(
                      children: [
                        FadeInAnimation(
                          delay: 2.9,
                          child: Text(
                            "Or Register with",
                            style: Common().semiboldblack,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeInAnimation(
                          delay: 3.2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                    "assets/images/facebook_ic (1).svg"),
                                SvgPicture.asset(
                                    "assets/images/google_ic-1.svg"),
                                Image.asset("assets/images/Vector.png")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeInAnimation(
                  delay: 3.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: Common().hinttext,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register Now",
                              style: Common().mediumTheme,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
