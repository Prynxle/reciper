import 'package:flutter/material.dart';

class AdoboPage extends StatelessWidget {
  const AdoboPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(122, 92, 71, 1),
      title: const Text('Adobo', style: TextStyle(fontSize: 50))),backgroundColor: const Color.fromRGBO(255, 157, 133, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/adobo.jpg', // Add your image path
              height: 300, // Set the image height
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Column(
  children: [
    // First Text: Description of Adobo
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:const Color(0xFFfff4f0), // Background color of the container
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
          'Adobo is a popular Filipino dish made by marinating meat (often chicken or pork) in vinegar, soy sauce, garlic, and various spices. It is then simmered until tender. The dish can be served with rice and is known for its savory and slightly tangy flavor.',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ),

    // Second Text: Ingredients for Adobo
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:const Color(0xFFfff4f0),
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
          'Ingredients:\n'
          '- Meat (chicken, pork, or beef)\n'
          '- Vinegar\n'
          '- Soy sauce\n'
          '- Garlic\n'
          '- Black pepper\n'
          '- Bay leaves\n'
          '- Optional: potatoes, carrots',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),

    // Third Text: Instructions for Adobo
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
          'Instructions:\n'
          '1. Combine the meat, vinegar, soy sauce, garlic, and spices in a bowl. Marinate for at least 30 minutes.\n'
          '2. Heat oil in a pan and sauté the meat until browned.\n'
          '3. Add the marinade and bring to a boil. Simmer until the meat is tender.\n'
          '4. Serve hot with rice.',
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

