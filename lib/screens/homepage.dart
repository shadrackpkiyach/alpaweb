import 'package:alphaweb/screens/fade_animationtest.dart';
import 'package:alphaweb/screens/services.dart';
import 'package:alphaweb/utils/responsive.dart';
import 'package:alphaweb/widgets/footer.dart';
import 'package:alphaweb/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 57, 233, 195),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              const Body(),
              const ServicePage(),
              const FooterStack()
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
      mediumScreen: LargeChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildStack("assets/images/image_01.png"),
          const SizedBox(height: 100),
          // featuresMain(),
          // const SizedBox(height: 100),
          //ServicePage()
        ],
      ),
    );
  }

  Widget buildFooterRow(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title in bold
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        // Footer items
        ...items,
      ],
    );
  }

  Widget buildFooterItem(String label) {
    return TextButton(
      onPressed: () {
        // Add functionality for each footer item
      },
      child: Text(
        label,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }

  Widget _buildStack(String imagePath) {
    return SizedBox(
      height: 300,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: 0.6,
            child: Image.asset(imagePath, scale: 0.85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: _buildTextContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const FadeInAnimation(
          delay: 1.3,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Regular",
              color: Color.fromARGB(255, 5, 5, 5),
            ),
          ),
        ),
        FadeInAnimation(
          delay: 2.3,
          child: RichText(
            text: const TextSpan(
                text: "This is The ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 5, 5, 5)),
                children: [
                  TextSpan(
                      text: "Alpha Center",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(221, 9, 9, 9)))
                ]),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0, top: 20),
          child: FadeInAnimation(
            delay: 3.3,
            child: Text("LET’S EXPLORE THE WORLD\n BEYOND CLASSROOM"),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          child: const Padding(
            padding: EdgeInsets.only(left: 12.0, top: 20),
            child: FadeInAnimation(
              delay: 3.3,
              child: Text("We provide best services for you.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 9, 9, 9))),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),

        // ... other text elements
      ],
    );
  }
}

/*
class LargeChild extends StatelessWidget {
  const LargeChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: .6,
              child: Image.asset("assets/images/image_01.png", scale: .85),
            ),
            FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: .6,
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Hello!",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Regular",
                            color: Color.fromARGB(255, 5, 5, 5))),
                    RichText(
                      text: const TextSpan(
                          text: "Wellcome To  ",
                          style: TextStyle(
                              fontSize: 40,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 14, 14, 14)),
                          children: [
                            TextSpan(
                                text: "Alpha \nProgramming",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black87))
                          ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 20),
                      child: Text("LET’S EXPLORE THE WORLD \n BEYOND CLASSROOM"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
*/
class SmallChild extends StatelessWidget {
  const SmallChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 98, 232, 165),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: const TextSpan(
                text: 'WellCome To ',
                style: TextStyle(
                    fontSize: 40, color: Color.fromARGB(255, 118, 233, 185)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Alpha Programming',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET’S EXPLORE THE WORLD \nBEYOND CLASSROOM"),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 32,
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
