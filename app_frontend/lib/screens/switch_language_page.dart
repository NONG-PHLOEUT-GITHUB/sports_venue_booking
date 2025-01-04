import 'package:flutter/material.dart';

class SwitchLanguagePage extends StatefulWidget {
  @override
  _SwitchLanguagePageState createState() => _SwitchLanguagePageState();
}

class _SwitchLanguagePageState extends State<SwitchLanguagePage> {
  String _selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'label': 'English', 'flag': '🇬🇧'}, // English flag
    {'label': 'Khmer', 'flag': '🇰🇭'},   // Cambodian flag
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check_circle),
            onPressed: () {
              // Handle language selection confirmation
            },
          ),
        ],
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
                  color: isSelected ? Colors.orange : Colors.grey.shade300,
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
