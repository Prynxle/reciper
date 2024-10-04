import 'package:flutter/material.dart';
import 'chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFA643F),
          iconColor: Color.fromARGB(0, 255, 155, 130),//ff9d85
          title: const Text('Help us better understand you better!'),
          content: const Text(
            'Kindly click whichever applies to you:\n'
            'Are you a...\n'),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Student'),
              onPressed: () {   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Working Adult'),
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Parent'),
              onPressed: () {
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dormEATory'), backgroundColor: Color(0xFFFA643F),),
      body:
      Container(
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
                    _dialogBuilder(context);
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
