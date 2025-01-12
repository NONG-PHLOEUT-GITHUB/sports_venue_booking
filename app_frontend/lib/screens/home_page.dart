import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Example data for the cards
  final List<Map<String, String>> cardData = [
    {"title": "Card 1", "subtitle": "This is the first card."},
    {"title": "Card 2", "subtitle": "This is the second card."},
    {"title": "Card 3", "subtitle": "This is the third card."},
    {"title": "Card 4", "subtitle": "This is the fourth card."},
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
                        Icon(Icons.location_on_outlined, color: AppColors.onSecondary, size: 16),
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
                            child: const Icon(Icons.notifications_none, color: AppColors.onSecondary),
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
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.blue),
              title: Text(
                cardData[index]['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(cardData[index]['subtitle']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle card tap
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('${cardData[index]['title']} tapped!')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
