import 'package:flutter/material.dart';
import 'package:sports_venue_booking/screens/edite_account.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';
import 'switch_language_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.onSecondary,
          ),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg', // Replace with actual image URL
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Charlotte King',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Text('@johnkinggraphics'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        AppColors.primary, // Set the button's background color
                    foregroundColor: AppColors.onPrimary, // Set the text color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5), // Set border radius
                    ),
                    textStyle: const TextStyle(
                      fontSize:
                          16, // Optional: Define font size or other text properties
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Edit Profile'),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          SizedBox(height: 0),
          _buildListTile(Icons.tv, 'Tutorial'),
          _buildListTile(Icons.language_outlined, 'Language', onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SwitchLanguagePage(),
              ),
            );
          }),
          _buildListTile(Icons.logout_outlined, 'Log out', onTap: () {
            // Handle logout action
          }),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, {VoidCallback? onTap}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap ?? () {},
      ),
    );
  }
}

