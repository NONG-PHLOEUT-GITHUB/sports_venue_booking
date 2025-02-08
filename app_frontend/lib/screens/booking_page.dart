import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatelessWidget {
  BookingPage({super.key});

  // Example data for the bookings
  final List<Map<String, String>> bookingData = [
    {
      "imageUrl":
          'https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343.jpg&fm=jpg',
      "title": "Water football field",
      "location": "Phnom Penh",
      "time": "07:00 AM - 11:00 PM",
      "rating": "4.9",
      "reviews": "(370 reviews)",
      "price": "20",
      // "distance": "1.4 km",
      "slots": "2 Field Available",
    },
    // You can add more entries here to simulate more bookings
    {
      "imageUrl":
          'https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343-2.jpg&fm=jpg',
      "title": "Beach volleyball field",
      "location": "Phnom Penh",
      "time": "08:00 AM - 10:00 PM",
      "rating": "4.7",
      "reviews": "(280 reviews)",
      "price": "20",
      // "distance": "2.0 km",
      "slots": "2 Field Available",
    },
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Color for the back button icon
        ),
        backgroundColor: AppColors.primary,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 0),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Location icon and text
            Row(
              children: [
                Icon(
                  Icons.location_on, // location icon
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  'Phnom Penh', // Location text
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onSecondary, // Adjust to your app color
                  ),
                ),
              ],
            ),

            // Current date display
            Text(
              DateFormat('dd-MMMM-yyyy')
                  .format(DateTime.now()), // Display current date
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: bookingData.length,
          itemBuilder: (context, index) {
            final booking = bookingData[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            booking['imageUrl']!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    booking['title']!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Container(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 8, vertical: 4),
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.black,
                                  //     borderRadius: BorderRadius.circular(8),
                                  //   ),
                                  //   child: Text(
                                  //     booking['price']!,
                                  //     style: const TextStyle(
                                  //       color: Colors.white,
                                  //       fontSize: 12,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(Icons.location_on,
                                      size: 14, color: Colors.grey),
                                  const SizedBox(width: 4),
                                  Text(
                                    booking['location']!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(Icons.access_time,
                                      size: 14, color: Colors.grey),
                                  const SizedBox(width: 4),
                                  Text(
                                    booking['time']!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(Icons.star,
                                      size: 14, color: Colors.amber),
                                  const SizedBox(width: 4),
                                  Text(
                                    booking['rating']!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    booking['reviews']!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${booking['price']}',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Keeps the container compact
                                children: [
                                  const Icon(
                                    Icons.stadium, // Example icon (clock)
                                    color: Colors.white,
                                    size: 16, // Adjust the icon size as needed
                                  ),
                                  const SizedBox(
                                      width:
                                          4), // Spacing between icon and text
                                  Text(
                                    booking['slots']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

