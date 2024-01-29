import 'package:alphaweb/utils/responsive.dart';
import 'package:flutter/material.dart';

class FooterStack extends StatelessWidget {
  const FooterStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[200],
      child: Padding(
          padding: const EdgeInsets.all(
            18,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (!ResponsiveLayout.isSmallScreen(context)) {
                return buildfooterscreen();
              } else {
                return buildfooterColumnscreen(screenWidth);
              }
            },
          )),
    );
  }

  Widget buildfooterColumnscreen(screenWidth) {
    return SizedBox(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ROW 1: STACK OVERFLOW
            buildFooterColumn('STACK OVERFLOW', [
              buildFooterItem('Questions'),
              buildFooterItem('Help'),
            ]),

            // ROW 2: PRODUCTS
            buildFooterColumn('PRODUCTS', [
              buildFooterItem('Teams'),
              buildFooterItem('Advertising'),
              buildFooterItem('Collectives'),
              buildFooterItem('Talent'),
            ]),

            // ROW 3: COMPANY
            buildFooterColumn('COMPANY', [
              buildFooterItem('About'),
              buildFooterItem('Press'),
              buildFooterItem('Work Here'),
              buildFooterItem('Legal'),
              buildFooterItem('Privacy Policy'),
              buildFooterItem('Terms of Service'),
              buildFooterItem('Cookie Settings'),
              buildFooterItem('Cookie Policy'),
            ]),

            // ROW 4: STACK EXCHANGE NETWORK
            buildFooterColumn('STACK EXCHANGE NETWORK', [
              buildFooterItem('Technology'),
              buildFooterItem('Culture & recreation'),
              buildFooterItem('Life & arts'),
              buildFooterItem('Science'),
              buildFooterItem('Professional'),
              buildFooterItem('Business'),
            ]),

            // ROW 5: SOCIAL MEDIA NAMES
            buildFooterColumn('SOCIAL MEDIA', [
              buildFooterItem('Facebook'),
              buildFooterItem('Twitter'),
              buildFooterItem('LinkedIn'),
              buildFooterItem('Instagram'),
            ]),
          ],
        ));
  }

  Widget buildfooterscreen() {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ROW 1: STACK OVERFLOW
        buildFooterRow('STACK OVERFLOW', [
          buildFooterItem('Questions'),
          buildFooterItem('Help'),
        ]),

        // ROW 2: PRODUCTS
        buildFooterRow('PRODUCTS', [
          buildFooterItem('Teams'),
          buildFooterItem('Advertising'),
          buildFooterItem('Collectives'),
          buildFooterItem('Talent'),
        ]),

        // ROW 3: COMPANY
        buildFooterRow('COMPANY', [
          buildFooterItem('About'),
          buildFooterItem('Press'),
          buildFooterItem('Work Here'),
          buildFooterItem('Legal'),
          buildFooterItem('Privacy Policy'),
          buildFooterItem('Terms of Service'),
          buildFooterItem('Cookie Settings'),
          buildFooterItem('Cookie Policy'),
        ]),

        // ROW 4: STACK EXCHANGE NETWORK
        buildFooterRow('STACK EXCHANGE NETWORK', [
          buildFooterItem('Technology'),
          buildFooterItem('Culture & recreation'),
          buildFooterItem('Life & arts'),
          buildFooterItem('Science'),
          buildFooterItem('Professional'),
          buildFooterItem('Business'),
        ]),

        // ROW 5: SOCIAL MEDIA NAMES
        buildFooterRow('SOCIAL MEDIA', [
          buildFooterItem('Facebook'),
          buildFooterItem('Twitter'),
          buildFooterItem('LinkedIn'),
          buildFooterItem('Instagram'),
        ]),
      ],
    ));
  }

  Widget buildFooterColumn(String title, List<Widget> items) {
    int maxItemsPerRow = 3; // Set the maximum number of items per row
    int totalItems = items.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title in bold
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        // Line break (SizedBox)
        const SizedBox(height: 3.0), // Adjust the height as needed
        // Footer items
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < totalItems; i += maxItemsPerRow)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items.sublist(
                    i,
                    i + maxItemsPerRow > totalItems
                        ? totalItems
                        : i + maxItemsPerRow),
              ),
          ],
        ),
      ],
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
}
