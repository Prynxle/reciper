import 'package:flutter/material.dart';
import 'package:xd/components/food/adobo.dart';
import 'package:xd/components/food/karekare.dart';
import 'package:xd/components/food/menudo.dart';
import 'package:xd/components/food/sinigang.dart';

class FoodRecommendation extends StatefulWidget {
  const FoodRecommendation({super.key});

  @override
  State<FoodRecommendation> createState() => _HomePageState();
}

class _HomePageState extends State<FoodRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: GridView.count(
        crossAxisCount: 1, // Change this to 2 to fit two containers
        children: [
          _buildClickableContainer(
            Colors.grey.shade600,
            400,
            1000,
            'lib/assets/sinigang.jpg',
            const SinigangPage(),
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            400,
            1000,
            'lib/assets/menudo.jpg',
            const MenudoPage(),
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            400,
            1000,
            'lib/assets/adobo.jpg',
            const AdoboPage(), // Link to the AdoboPage
          ),
          _buildClickableContainer(
            Colors.grey.shade600,
            400,
            1000,
            'lib/assets/kare-kare.jpg',
            const KareKarePage(),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Center(
          child: Text(
            'Food Recommendation',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildClickableContainer(Color color, double height, double width, String imagePath, Widget page) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
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




