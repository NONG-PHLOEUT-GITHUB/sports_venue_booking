import 'package:flutter/material.dart';
import 'home_page.dart';
import 'account_page.dart';
import 'booking_page.dart';
import 'ticket_page.dart';
import '../theme/app_colors.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  // Pages for each tab
  final List<Widget> _pages = [
    HomePage(),
    BookingPage(),
    TicketPage(),
    const ProfilePage(),
  ];

  // Handle bottom navigation taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number_outlined),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
      ),
    );
  }
}
