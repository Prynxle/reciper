import 'package:flutter/material.dart';
import 'package:xd/components/food/adobo.dart';
import 'package:xd/components/food/karekare.dart';
import 'package:xd/components/food/menudo.dart';
import 'package:xd/components/food/sinigang.dart';
import 'package:xd/pages/home.dart';

class FoodRecommendation extends StatefulWidget {
  const FoodRecommendation({super.key});

  @override
  State<FoodRecommendation> createState() => _HomePageState();
}

class _HomePageState extends State<FoodRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 157, 133, 1),
      body: GridView.count(
        crossAxisCount: 3, // Set to 3 columns
        crossAxisSpacing: 10, // Space between columns
        mainAxisSpacing: 10, // Space between rows
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildClickableContainer(
            Colors.grey.shade600,
            200, // Adjusted height for better fit
            200, // Adjusted width for better fit
            'lib/assets/sinigang.jpg',
            const SinigangPage(),
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            200,
            200,
            'lib/assets/menudo.jpg',
            const MenudoPage(),
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            200,
            200,
            'lib/assets/adobo.jpg',
            const AdoboPage(),
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            200,
            200,
            'lib/assets/kare-kare.jpg',
            const KareKarePage(),
          ),
          Center(
            child: Text(
              "More soon to come",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(122, 92, 71, 1),
        iconTheme: const IconThemeData(color: Colors.black),  // Set icon color for all icons in AppBar
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: const Center(
          child: Text(
            'Food Recommendation',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700, // Use FontWeight.w700 for bold text
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClickableContainer(Color color, double height, double width, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Hero(
        tag: imagePath,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          height: height,
          width: width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
