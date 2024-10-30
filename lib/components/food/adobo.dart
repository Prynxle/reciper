import 'package:flutter/material.dart';

class AdoboPage extends StatelessWidget {
  const AdoboPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adobo', style: TextStyle(fontSize: 50))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/adobo.jpg', // Add your image path
              height: 300, // Set the image height
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Adobo is a popular Filipino dish made by marinating meat (often chicken or pork) in vinegar, soy sauce, garlic, and various spices. It is then simmered until tender. The dish can be served with rice and is known for its savory and slightly tangy flavor.',
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
                'Ingredients:\n- Meat (chicken, pork, or beef)\n- Vinegar\n- Soy sauce\n- Garlic\n- Black pepper\n- Bay leaves\n- Optional: potatoes, carrots',
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
                'Instructions:\n1. Combine the meat, vinegar, soy sauce, garlic, and spices in a bowl. Marinate for at least 30 minutes.\n2. Heat oil in a pan and sauté the meat until browned.\n3. Add the marinade and bring to a boil. Simmer until the meat is tender.\n4. Serve hot with rice.',
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

