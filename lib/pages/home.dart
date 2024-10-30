// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:xd/pages/chat.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xd/pages/recommendations.dart'; // Add the url_launcher package

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Function to launch a URL (for social media)
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Convert string to Uri
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri); // Launch the URL
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _showUserTypeDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Tell us about yourself',
              style: TextStyle(
                  color: Color(0xFFFA643F), fontWeight: FontWeight.bold)),
          content: const Text(
            'To personalize your experience, please select your user type:',
            style: TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            _buildUserTypeButton(context, 'Student'),
            _buildUserTypeButton(context, 'Working Adult'),
            _buildUserTypeButton(context, 'Parent'),
          ],
        );
      },
    );
  }

  Widget _buildUserTypeButton(BuildContext context, String userType) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFA643F),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
        child: Text(userType),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatPage()),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.restaurant_menu, color: Colors.white),
          onPressed: () {
            print("You Pressed Restaurant Icon");
          },
        ),
        title: const Text(
          'DormEatory',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/home.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromRGBO(0, 0, 0, 0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Welcome to DormEatory',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Your one-stop solution for dorm meals and food recommendations',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              _buildButton(
                'Start Chatting',
                Icons.chat_bubble_outline,
                () => _showUserTypeDialog(context),
              ),
              const SizedBox(height: 20),
              _buildButton(
                'Food Recommendations',
                Icons.restaurant,
                () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodRecommendation()),
                );
                },
              ),
              const SizedBox(height: 40),
              // Social Media Buttons (All linked to YouTube for now)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook,
                        color: Colors.blue, size: 30),
                    onPressed: () => _launchURL('https://www.facebook.com/'),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon:
                        const Icon(Icons.tiktok, color: Colors.white, size: 30),
                    onPressed: () => _launchURL('https://www.tiktok.com/'),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.telegram,
                        color: Colors.blue, size: 30),
                    onPressed: () => _launchURL(
                        'https://www.youtube.com/watch?v=hPr-Yc92qaY'),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFA643F),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          minimumSize: const Size(double.infinity, 60),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
