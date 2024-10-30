import 'package:flutter/material.dart';

class KareKarePage extends StatelessWidget {
  const KareKarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kare-Kare', style: TextStyle(fontSize: 50))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/kare-kare.jpg', // Update with your image path
              height: 300,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Kare-Kare is a Filipino stew made with oxtail, vegetables, and a thick peanut sauce.',
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
                'Ingredients:\n- 1 kg oxtail or beef stew meat\n- 1/2 cup peanut butter\n- 1/4 cup ground peanuts (optional)\n- 1 large onion, chopped\n- 4 cups water\n- 1 banana heart, sliced\n- 1 eggplant, sliced\n- 1 cup green beans\n- 1 cup bok choy or cabbage\n- Salt and pepper to taste\n- Annatto oil (for color, optional)',
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
                'Instructions:\n1. In a pot, boil the oxtail until tender. Remove and set aside, reserving the broth.\n2. In a separate pot, sauté onions until translucent. Add the reserved broth and bring to a simmer.\n3. Stir in the peanut butter and ground peanuts, mixing well.\n4. Add the oxtail back to the pot, along with the banana heart, eggplant, and green beans. Cook until vegetables are tender.\n5. Season with salt and pepper to taste. Stir in bok choy just before serving.\n6. Serve hot with rice and bagoong (fermented shrimp paste) on the side.',
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
