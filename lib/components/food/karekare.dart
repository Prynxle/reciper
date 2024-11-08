import 'package:flutter/material.dart';

class KareKarePage extends StatelessWidget {
  const KareKarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(122, 92, 71, 1),
      title: const Text('Kare-Kare', style: TextStyle(fontSize: 50))),backgroundColor: const Color.fromRGBO(255, 157, 133, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'lib/assets/kare-kare.jpg',
              child: Image.asset(
                'lib/assets/kare-kare.jpg', // Update with your image path
                height: 300,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Column(
  children: [
    // First Text: Description of Kare-Kare
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
          'Kare-Kare is a Filipino stew made with oxtail, vegetables, and a thick peanut sauce.',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ),

    // Second Text: Ingredients for Kare-Kare
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
          'Ingredients:\n'
          '- 1 kg oxtail or beef stew meat\n'
          '- 1/2 cup peanut butter\n'
          '- 1/4 cup ground peanuts (optional)\n'
          '- 1 large onion, chopped\n'
          '- 4 cups water\n'
          '- 1 banana heart, sliced\n'
          '- 1 eggplant, sliced\n'
          '- 1 cup green beans\n'
          '- 1 cup bok choy or cabbage\n'
          '- Salt and pepper to taste\n'
          '- Annatto oil (for color, optional)',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'YourFontFamilyName',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),

    // Third Text: Instructions for Kare-Kare
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
          '1. In a pot, boil the oxtail until tender. Remove and set aside, reserving the broth.\n'
          '2. In a separate pot, sauté onions until translucent. Add the reserved broth and bring to a simmer.\n'
          '3. Stir in the peanut butter and ground peanuts, mixing well.\n'
          '4. Add the oxtail back to the pot, along with the banana heart, eggplant, and green beans. Cook until vegetables are tender.\n'
          '5. Season with salt and pepper to taste. Stir in bok choy just before serving.\n'
          '6. Serve hot with rice and bagoong (fermented shrimp paste) on the side.',
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
