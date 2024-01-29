import 'package:alphaweb/screens/fade_animationtest.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 147, 231, 198),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FadeInAnimation(
            delay: 1.3,
            child: Text(
              'Ways we Can Help You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          LayoutBuilder(builder: (context, constraints) {
            double thresholdWidth = 960.0;
            int crossAxisCount = constraints.maxWidth > thresholdWidth ? 4 : 2;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: serviceData.length,
              itemBuilder: (BuildContext context, int index) {
                List<Color> colors = [
                  Colors.blueAccent,
                  Colors.greenAccent,
                  Colors.orangeAccent,
                  Colors.purpleAccent,
                  Colors.redAccent,
                  Colors.tealAccent,
                ];
                Color cardColor = colors[index % colors.length];
                return ServiceCard(
                  title: serviceData[index]['title']!,
                  description: serviceData[index]['description']!,
                  cardColor: cardColor,
                  // Uncomment the line below and replace 'URL_TO_YOUR_IMAGE' with the actual URL
                  // image: Image.network('URL_TO_YOUR_IMAGE'),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}

List<Map<String, String>> serviceData = [
  {
    'title': 'Website Design',
    'description':
        'Objectively productivate\n interoperable process\n improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Responsive Website',
    'description':
        'Objectively productivate\n interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'WordPress Website',
    'description':
        'Objectively productivate\n interoperable process\n improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'SEO Optimised',
    'description':
        'Objectively productivate \ninteroperable process\n improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Web Hosting',
    'description':
        'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Plugin Development',
    'description':
        'Objectively productivate\n interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
];

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final Color cardColor;
  // final Image image;

  const ServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.cardColor,
    // required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  image,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







/*import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Ways we Can Help You',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      const SizedBox(height: 8.0),
      GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of columns you want in the grid
          crossAxisSpacing: 16.0, // Set the spacing between columns
          mainAxisSpacing: 16.0, // Set the spacing between rows
        ),
        itemCount: 6, // Set the total number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          // Use the index to get the corresponding ServiceCard data
          
          return ServiceCard(
            title: serviceData[index]['title'],
            description: serviceData[index]['description'],
            // Uncomment the line below and replace 'URL_TO_YOUR_IMAGE' with the actual URL
            // image: Image.network('URL_TO_YOUR_IMAGE'),
          );
        },
      )
      
    ])
    
    );
    
  }
}
List<Map<String, String>> serviceData = [
  {
    'title': 'Website Design',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Responsive Website',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'WordPress Website',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'SEO Optimised',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Web Hosting',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
  {
    'title': 'Plugin Development',
    'description': 'Objectively productivate interoperable process improvements after team building testing procedures. Distinctively architect resource-leveling portals.',
  },
];

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  //final Image image;

  const ServiceCard({
    super.key,
    required this.title,
    required this.description,
    //required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  image,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Software Provision Services'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/company_logo.png', // Replace with your company logo
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Our Software Provision Services',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'We provide cutting-edge software solutions tailored to meet your business needs.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Add functionality to the button
              },
              child: const Text('Explore Our Services'),
            ),
          ],
        ),
      ),
    );
  }
}
*/