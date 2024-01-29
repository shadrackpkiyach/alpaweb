import 'package:alphaweb/router/router.dart';
import 'package:alphaweb/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Features", "Services", "MarketPlace"];

  NavBar({super.key});

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child:
            Text(text, style: const TextStyle(fontFamily: "Montserrat-Bold")),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(colors: [
                      Color(0xFFC86DD7),
                      Color(0xFF3023AE),
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: const Center(
                  child: Text("A",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Text("Alpha", style: TextStyle(fontSize: 26))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ...navItem(),
                InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed(Routers.services.name);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF6078ea).withOpacity(.3),
                                offset: const Offset(0, 8),
                                blurRadius: 8)
                          ]),
                      child: const Material(
                        color: Colors.transparent,
                        child: Center(
                          child: Text("Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  fontFamily: "Montserrat-Bold")),
                        ),
                      ),
                    ))
              ],
            )
          else
            SizedBox(
                child: Image.asset("assets/images/menu.png",
                    width: 26, height: 26))
        ],
      ),
    );
  }
}
