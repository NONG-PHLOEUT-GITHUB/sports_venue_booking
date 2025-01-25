import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> provinces = [
    'Phnom Penh',
    'Battambang',
    'Siem Reap',
    'Banteay Meanchey',
  ];

  String selectedProvince = 'Phnom Penh';
  // Example data for the cards
  final List<Map<String, String>> cardData = [
    {
      "title": "Phnom Penh Champain",
      "price": "15",
      "fieldsAvailable": '3',
      "subtitle": "This is the first card.",
      'location': 'Phnom Pench',
      'status': 'open',
      'imageUrl':
          'https://en.reformsports.com/oxegrebi/2023/07/why-do-they-sprinkle-football-pitches.jpg'
    },
    {
      "title": "Phnom Penh Champain",
      "price": "15",
      "fieldsAvailable": '3',
      "subtitle": "This is the first card.",
      'location': 'Phnom Pench',
      'status': 'open',
      'imageUrl':
          'https://en.reformsports.com/oxegrebi/2023/07/why-do-they-sprinkle-football-pitches.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: AppColors.primary,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Welcome......',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.onSecondary,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: AppColors.onSecondary, size: 16),
                        SizedBox(width: 4),
                        Text(
                          'Phnom Penh',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.onSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        const SizedBox(height: 20),
                        IconButton(
                          icon: Badge.count(
                            count: 99,
                            child: const Icon(Icons.notifications_none,
                                color: AppColors.onSecondary),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Add the TopScrollableIcons widget
          TopScrollableIcons(),
          const SizedBox(height: 8), // Add some spacing
          // Expanded ListView to ensure proper layout
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(8)),
                        child: Image.network(
                          cardData[index]['imageUrl']!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardData[index]['status']!,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              cardData[index]['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  cardData[index]['location']!,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.sports_soccer,
                                    size: 16, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  '${cardData[index]['fieldsAvailable']} Field Available',
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                    (ratingIndex) => Icon(
                                      Icons.star,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  cardData[index]['rating'].toString(),
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '\$${cardData[index]['price']} ',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: '/ hour',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.bookmark_border,
                                      color: Colors.grey),
                                  onPressed: () {
                                    // Handle bookmark
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TopScrollableIcons extends StatefulWidget {
  @override
  _TopScrollableIconsState createState() => _TopScrollableIconsState();
}

class _TopScrollableIconsState extends State<TopScrollableIcons> {
  final List<Map<String, String>> sports = [
    {'name': 'Soccer', 'icon': '⚽'},
    {'name': 'Futsal', 'icon': '🏐'},
    {'name': 'Basket', 'icon': '🏀'},
    {'name': 'Badminton', 'icon': '🏸'},
  ];

  int? selectedIndex; // Tracks the currently active button

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Adjust height as needed
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sports.length,
        itemBuilder: (context, index) {
          final isActive =
              selectedIndex == index; // Check if the button is active

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Set the clicked button as active
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                color: isActive
                    ? Colors.blue.shade100
                    : Colors.white, // Active state color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        sports[index]['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        sports[index]['icon']!,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
