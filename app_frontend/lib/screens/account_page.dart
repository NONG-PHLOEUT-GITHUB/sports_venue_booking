import 'package:flutter/material.dart';
import 'switch_language_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            onPressed: () {
              // Handle settings action
            },
            icon: const Icon(Icons.settings),
          ),
        ],
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
                    'https://via.placeholder.com/150', // Replace with actual image URL
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
                      MaterialPageRoute(builder: (context) => EditProfilePage()),
                    );
                  },
                  child: const Text('Edit Profile'),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const Divider(),
          _buildListTile(Icons.notifications_outlined, 'Notifications'),
          _buildListTile(Icons.favorite_outline, 'Favourites'),
          _buildListTile(Icons.download_outlined, 'Downloads'),
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
      elevation: 1,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap ?? () {},
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle save action
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Replace with actual image URL
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField('Name', 'Charlotte King'),
            _buildTextField('Email address', '@johnkinggraphics.gmail.com'),
            _buildTextField('Username', '@johnkinggraphics'),
            _buildTextField('Password', '**********', isPassword: true),
            _buildTextField('Phone number', '+91 6895312'),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: const OutlineInputBorder(),
          suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
        ),
      ),
    );
  }
}
