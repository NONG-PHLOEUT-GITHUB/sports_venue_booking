import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {

  final List<Map<String, dynamic>> fields = [
    {
      "image":
          "https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343.jpg&fm=jpg", // Replace with actual image path
      "title": "Water football field",
      "location": "Phnom Penh",
      "time": "07:00 AM - 11:00 PM",
      "rating": 4.9,
      "reviews": 370,
      "price": 20,
      "availability": "2 Field Available"
    },
    {
      "image":
          "https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343.jpg&fm=jpg", // Replace with actual image path
      "title": "Beach volleyball field",
      "location": "Phnom Penh",
      "time": "08:00 AM - 10:00 PM",
      "rating": 4.7,
      "reviews": 280,
      "price": 20,
      "availability": "2 Field Available"
    },
    {
      "image":
          "https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343.jpg&fm=jpg", // Replace with actual image path
      "title": "Beach volleyball field",
      "location": "Phnom Penh",
      "time": "08:00 AM - 10:00 PM",
      "rating": 4.7,
      "reviews": 280,
      "price": 20,
      "availability": "2 Field Available"
    },
    {
      "image":
          "https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?cs=srgb&dl=pexels-pixabay-47343.jpg&fm=jpg", // Replace with actual image path
      "title": "Beach volleyball field",
      "location": "Phnom Penh",
      "time": "08:00 AM - 10:00 PM",
      "rating": 4.7,
      "reviews": 280,
      "price": 20,
      "availability": "2 Field Available"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.29, // Adjust height based on need
      child: ListView.builder(
        itemCount: fields.length,
        itemBuilder: (context, index) {
          var field = fields[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 0,
            // margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      field['image']!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          field["title"],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              field["location"],
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.access_time,
                                size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              field["time"],
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.star, size: 14, color: Colors.amber),
                            SizedBox(width: 4),
                            Text(
                              "${field["rating"]} (${field["reviews"]} reviews)",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${field["price"]}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.stadium,
                                      size: 16, color: Colors.white),
                                  SizedBox(width: 4),
                                  Text(
                                    field["availability"],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
