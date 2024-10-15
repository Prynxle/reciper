import 'package:flutter/material.dart';
import 'package:xd/pages/home.dart'; 


class Desktop extends StatelessWidget {
  final List<String> messages;
  final TextEditingController controller;
  final Function sendMessage;
  final Function dialogBuilder;

  const Desktop({
    super.key,
    required this.messages,
    required this.controller,
    required this.sendMessage,
    required this.dialogBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A5C47),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: const Color(0xFF7A5C47),
            extended: true,
            selectedIndex: 0,
            onDestinationSelected: (int index) {
              if (index == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              }
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home, color: Colors.white),
                label: Text('Home', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Expanded(child: _buildChatContent(context)),
        ],
      ),
    );
  }

  Widget _buildChatContent(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFFF9D85),
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(66, 206, 192, 192),
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFA643F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        messages[messages.length - 1 - index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
            SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: 'Say Hello, We will take care of everything',
                        hintStyle: TextStyle(color: Colors.black54, backgroundColor: Color(0xFFFF9D85)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () => sendMessage(),
                    color: Colors.black,
                  ),
                  IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: () => dialogBuilder(context),
                    color: Colors.black,
                  ),
                  IconButton(
                    icon: const Icon(Icons.photo),
                    onPressed: () => dialogBuilder(context),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
