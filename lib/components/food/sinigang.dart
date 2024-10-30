import 'package:flutter/material.dart';

class SinigangPage extends StatelessWidget {
  const SinigangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sinigang', style: TextStyle(fontSize: 50))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/sinigang.jpg', // Add your image path
              height: 300, // Set the image height
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sinigang is a Filipino soup or stew characterized by its sour and savory taste. The dish is often made with tamarind, which gives it its distinctive flavor, along with various vegetables and a choice of meat, such as pork, beef, or shrimp.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'YourFontFamilyName',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ingredients:\n- Pork, beef, or shrimp\n- Tamarind\n- Water\n- Tomatoes\n- Radish\n- Eggplant\n- Green beans\n- Chili peppers\n- Onion\n- Optional: spinach or kangkong',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'YourFontFamilyName',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Instructions:\n1. Boil water in a pot and add the meat. Cook until tender.\n2. Add the tomatoes, onion, and tamarind. Simmer for about 30 minutes.\n3. Add the vegetables and cook until tender.\n4. Serve hot with rice.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'YourFontFamilyName',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
