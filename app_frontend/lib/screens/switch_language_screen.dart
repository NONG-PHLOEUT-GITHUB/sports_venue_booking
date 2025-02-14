import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';

class SwitchLanguagePage extends StatefulWidget {
  const SwitchLanguagePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SwitchLanguagePageState createState() => _SwitchLanguagePageState();
}

class _SwitchLanguagePageState extends State<SwitchLanguagePage> {
  String _selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'label': 'English', 'flag': '🇬🇧'}, // English flag
    {'label': 'Khmer', 'flag': '🇰🇭'}, // Cambodian flag
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Color for the back button icon
        ),
        backgroundColor: AppColors.primary,
        title: const Text(
          'Change Language',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.onSecondary,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: languages.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16.0),
        itemBuilder: (context, index) {
          final language = languages[index];
          final isSelected = _selectedLanguage == language['label'];

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedLanguage = language['label']!;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? AppColors.primary : Colors.grey.shade300,
                  width: isSelected ? 1.0 : 1.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    language['flag']!,
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      language['label']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
