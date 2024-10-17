// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:xd/pages/home.dart';

class Desktop extends StatefulWidget {
  final List<Map<String, String>> messages;
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
  _DesktopLayoutState createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<Desktop> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A5C47),
      body: Row(
        children: [
          SideBar(context),
          Expanded(
            flex: 3,
            child: ChatLayout(context),
          ),
          SuggestedQuestions(),
        ],
      ),
    );
  }

  Widget SideBar(BuildContext context) {
    return Container(
      width: 250,
      color: const Color(0xFF331D0E),
      child: Column(
        children: [
          const SizedBox(height: 40),
          const CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xFFFA643F),
            child: Icon(Icons.restaurant_menu, size: 40, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'DormEATory',
            style: TextStyle(
                color: Color(0xFFFF9D85),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          LeftSidebarButton('Home', Icons.home, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          }),
          LeftSidebarButton('Chat', Icons.chat, () {}),
          LeftSidebarButton('Settings', Icons.settings, () {}),
        ],
      ),
    );
  }

  Widget LeftSidebarButton(
      String label, IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF7A5C47),
          minimumSize: const Size(200, 50),
        ),
      ),
    );
  }

  Widget ChatLayout(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text('Chat', style: TextStyle(color: Color(0xFFFF9D85))),
          backgroundColor: const Color(0xFF331D0E),
          elevation: 0,
        ),
        Expanded(
          child: ChatMessages(),
        ),
        UserInput(context),
      ],
    );
  }

  Widget ChatMessages() {
    return ListView.builder(
      reverse: true,
      itemCount: widget.messages.length,
      itemBuilder: (context, index) {
        final message = widget.messages[widget.messages.length - 1 - index];
        final isUser = message['role'] == 'user';
        return MessageTile(message['content']!, isUser);
      },
    );
  }

  Widget MessageTile(String message, bool isUser) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: isUser ? const Color(0xFF7A5C47) : const Color(0xFF331D0E),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) UserIcon(isUser),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isUser ? 'You' : 'DormEATory',
                  style: const TextStyle(
                    color: Color(0xFFFF9D85),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          if (isUser) UserIcon(isUser),
        ],
      ),
    );
  }

  Widget UserIcon(bool isUser) {
    return CircleAvatar(
      backgroundColor: const Color(0xFFFA643F),
      radius: 16,
      child: Icon(
        isUser ? Icons.person : Icons.restaurant_menu,
        size: 20,
        color: Colors.white,
      ),
    );
  }

  Widget UserInput(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF331D0E),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.mic, color: Color(0xFFFF9D85)),
              onPressed: () {
                // Implement open mic functionality
              },
            ),
            IconButton(
              icon: const Icon(Icons.attach_file, color: Color(0xFFFF9D85)),
              onPressed: () {
                // Implement file upload functionality
              },
            ),
            Expanded(
              child: TextField(
                controller: widget.controller,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: 'Message DormEatory',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  filled: true,
                  fillColor: const Color(0xFF7A5C47),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
                style: const TextStyle(color: Colors.white),
                onSubmitted: (_) => SendMessage(),
              ),
            ),
            const SizedBox(width: 8),
            SendButton(),
          ],
        ),
      ),
    );
  }

  Widget SendButton() {
    return SizedBox(
      width: 50, // Specify the desired width
      height: 50, // Specify the desired height
      child: FloatingActionButton(
        hoverColor: const Color.fromARGB(255, 248, 71, 26),
        onPressed: SendMessage,
        backgroundColor: const Color(0xFFFA643F),
        child: const Icon(Icons.send, color: Colors.white),
      ),
    );
  }

  void SendMessage() {
    widget.sendMessage();
    _focusNode.requestFocus();
  }

  Widget SuggestedQuestions() {
    final questions = [
      "What's on the menu today?",
      "Are there any vegetarian options?",
      "What are the dining hall hours?",
      "Is there a meal plan available?",
      "How can I report a food allergy?",
    ];

    return Container(
      width: 300,
      color: const Color(0xFF331D0E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Suggested Questions',
              style: TextStyle(
                  color: Color(0xFFFF9D85),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    questions[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    widget.controller.text = questions[index];
                    SendMessage();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
