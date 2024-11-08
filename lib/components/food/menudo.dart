import 'package:flutter/material.dart';

class MenudoPage extends StatelessWidget {
  const MenudoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(122, 92, 71, 1),
        title: const Text(
          'Menudo',
          style: TextStyle(fontSize: 50),
        ),
      ),backgroundColor: const Color.fromRGBO(255, 157, 133, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'lib/assets/menudo.jpg',
              child: Image.asset(
                'lib/assets/menudo.jpg',
                height: 300,
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
          'Menudo (from Spanish: "small [bits]"), also known as ginamay or ginagmay (Cebuano: "[chopped into] smaller pieces"), is a traditional stew from the Philippines made with pork and sliced liver in tomato sauce with carrots and potatoes.',
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
    ),

    // Third Text: Instructions (Broth, Seasoning, and Serving)
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
    ),
  ],
)

          ],
        ),
      ),
    );
  }
}
