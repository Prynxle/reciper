import 'package:flutter/material.dart';

class MenudoPage extends StatelessWidget {
  const MenudoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menudo',
          style: TextStyle(fontSize: 50),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/menudo.jpg',
              height: 300,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Menudo (from Spanish: "small [bits]"), also known as ginamay or ginagmay (Cebuano: "[chopped into] smaller pieces"), is a traditional stew from the Philippines made with pork and sliced liver in tomato sauce with carrots and potatoes.',
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
                'Ingredients:\n'
                '- Pork, beef, or shrimp\n'
                '- Tamarind\n'
                '- Water\n'
                '- Tomatoes\n'
                '- Radish\n'
                '- Eggplant\n'
                '- Green beans\n'
                '- Chili peppers\n'
                '- Onion\n'
                '- Optional: spinach or kangkong\n',
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
                'For the Broth:\n'
                '- 2 lbs beef tripe (cleaned and cut into bite-sized pieces)\n'
                '- 1 lb beef shank (optional, for more flavor)\n'
                '- 10 cups water\n'
                '- 1 onion, quartered\n'
                '- 4 cloves garlic, minced\n'
                '- 2-3 bay leaves\n'
                '- Salt and pepper to taste\n\n'
                'For the Seasoning:\n'
                '- 4-5 dried guajillo chiles (stemmed and seeded)\n'
                '- 1-2 dried ancho chiles (optional for sweetness)\n'
                '- 1 tsp cumin\n'
                '- 1 tsp oregano\n'
                '- 1 tsp paprika\n'
                '- 1/2 tsp black pepper\n\n'
                'For Serving:\n'
                '- Chopped onions\n'
                '- Chopped cilantro\n'
                '- Lime wedges\n'
                '- Tortillas (optional)\n',
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
