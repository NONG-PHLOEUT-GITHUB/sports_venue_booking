import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';
import '../components/carousel_slider.dart';
import 'booking_page.dart';
import '../components/card_section.dart';

//   final List<String> provinces = [
//     'Phnom Penh',
//     'Battambang',
//     'Siem Reap',
//     'Banteay Meanchey',
//   ];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: AppColors.primary,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50,bottom: 10),
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
                    SizedBox(height: 5),
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
                        
                        // Container(
                        //   padding: EdgeInsets.all(8),
                        //   decoration: BoxDecoration(
                        //       color: const Color.fromARGB(255, 234, 232, 226),
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: Icon(Icons.notifications_none,
                        //       color: AppColors.secondary),
                              
                        // ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
          itemCount: 1,
          padding: EdgeInsets.only(top: 8, bottom: 8),
          itemBuilder: (context, index) {
            return BookingView();
          }),
    );
  }
}

class BookingView extends StatefulWidget {
  @override
  _BookingViewState createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  String selectedSport = "Football";

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

  final List<Map<String, dynamic>> sports = [
    {"name": "Football", "icon": Icons.sports_soccer, "color": Colors.green},
    {
      "name": "Basketball",
      "icon": Icons.sports_basketball,
      "color": Colors.orange
    },
    {"name": "Tennis", "icon": Icons.sports_tennis, "color": Colors.yellow},
    {"name": "Cricket", "icon": Icons.sports_cricket, "color": Colors.blue},
    {"name": "Hockey", "icon": Icons.sports_hockey, "color": Colors.red},
  ];

  DateTime selectedDate = DateTime.now(); // Store selected date

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // image slider widget
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  "Specail Promotion",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              ImageSlider(),
              SizedBox(height: 10),
            ],
          ),

          // Filtered wdget
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () => _selectDate(context),
                          backgroundColor: AppColors.primary,
                          child: const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                            width:
                                12), // Adjust the space between the icon and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${selectedDate.day}/${_getMonthName(selectedDate.month)}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "${selectedDate.year}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              _getWeekdayName(selectedDate.weekday),
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedSport,
                          onChanged: (newValue) {
                            setState(() {
                              selectedSport = newValue!;
                            });
                          },
                          items: sports.map((sport) {
                            return DropdownMenuItem<String>(
                              value: sport["name"],
                              child: Row(
                                children: [
                                  Icon(sport["icon"], color: sport["color"]),
                                  SizedBox(width: 6),
                                  Text(
                                    sport["name"],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                // Text("Thursday", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 12),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.grey.shade200),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 10).floor(),
                              (index) => SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade400),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Colors.grey.shade200),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                ),
                child: Text(
                  "Let's Make a Book",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),

          // list card wdget
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  "Recommendation Field",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // ✅ Add CardSection Properly
              CardSection(),
            ],
          ),
        ],
      ),
    );
  }

  // Convert month number to name
  String _getMonthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    return months[month - 1];
  }

  // Convert weekday number to name
  String _getWeekdayName(int weekday) {
    const weekdays = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];
    return weekdays[weekday - 1];
  }
}
