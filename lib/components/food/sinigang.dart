import 'package:flutter/material.dart';

class SinigangPage extends StatelessWidget {
  const SinigangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color.fromARGB(122, 92, 71, 1), // Increased alpha to 255
        title: const Text(
          'Sinigang',
          style: TextStyle(fontSize: 50),
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 157, 133, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'lib/assets/sinigang.jpg',
              child: Image.asset(
                'lib/assets/sinigang.jpg', // Add your image path
                height: 300, // Set the image height
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Column(
  children: [
    // First Text: Description
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFfff4f0), // Background color of the container
          borderRadius: BorderRadius.circular(20), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
              spreadRadius: 12,
              blurRadius: 15,
              offset: const Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: const Text(
          'Sinigang is a Filipino soup or stew characterized by its sour and savory taste. The dish is often made with tamarind, which gives it its distinctive flavor, along with various vegetables and a choice of meat, such as pork, beef, or shrimp.',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ),

    // Second Text: Ingredients
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFfff4f0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
              spreadRadius: 12,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Text(
          'Ingredients:\n- Pork, beef, or shrimp\n- Tamarind\n- Water\n- Tomatoes\n- Radish\n- Eggplant\n- Green beans\n- Chili peppers\n- Onion\n- Optional: spinach or kangkong',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),

    // Third Text: Instructions
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFfff4f0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
              spreadRadius: 12,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Text(
          'Instructions:\n1. Boil water in a pot and add the meat. Cook until tender.\n2. Add the tomatoes, onion, and tamarind. Simmer for about 30 minutes.\n3. Add the vegetables and cook until tender.\n4. Serve hot with rice.',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'YourFontFamilyName',
          ),
        ),
      ),
    ),
  ],
)

          ],
        ),
      ),
    );
  }
}
