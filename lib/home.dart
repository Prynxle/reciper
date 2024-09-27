import 'package:flutter/material.dart';
import 'chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home.png'), fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Align(
           // alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFA643F) // #fa643f
                  ),
                  child: const Text('Open Chat', style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),
                    );
                  },
                ),
                const SizedBox(height: 20), 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFA643F) // #fa643f
                  ),
                  child: const Text('Food Recommendation', style: TextStyle(color: Colors.white),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
