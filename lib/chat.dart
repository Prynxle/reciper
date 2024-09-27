import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> messages = []; // Store chat messages
  final TextEditingController _controller = TextEditingController(); 

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text); // Add message to list
        _controller.clear(); // Clear input after sending
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A5C47), // Background color
      appBar: AppBar(
        backgroundColor:const Color(0xFF7A5C47),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.home)),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color:const Color(0xFFFF9D85), // Container background color
            borderRadius: BorderRadius.circular(24), // Rounded corners
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(66, 206, 192, 192),
                blurRadius: 8.0,
                offset: Offset(0, 4), // Shadow position
              ),
            ],
          ),
          child: Column(
            children: [
              // Chat messages display
              Expanded(
                child: ListView.builder(
                  reverse: true, // Newest messages at the bottom
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
                          messages[messages.length - 1 - index], // Display message
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Input field and send button inside a container
              SafeArea(
                child: Row(
                  children: [
                    // Text input field
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Say Hello, We will take care of everything',
                          hintStyle: TextStyle(color: Colors.black54, backgroundColor: Color(0xFFFF9D85)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black) //??
                          ), // Outlines the border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black), // Focused border color
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Send button
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: _sendMessage,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
