import 'package:flutter/material.dart';
import 'package:xd/API/api.dart';
import 'package:xd/components/mobile.dart';
import 'package:xd/components/tablet.dart';
import 'package:xd/components/desktop.dart';
import 'package:xd/components/size.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, String>> messages = []; // Change this line
  final TextEditingController _controller = TextEditingController();
  final ChatService _chatService = ChatService();

  Future<void> _sendMessage() async {
    if (_controller.text.isNotEmpty) {
      final userMessage = _controller.text;
      setState(() {
        messages.add({'role': 'user', 'content': userMessage});
        _controller.clear();
      });

      final response = await _chatService.sendMessage(userMessage);
      setState(() {
        messages.add({'role': 'bot', 'content': response});
      });
    }
  }

  void _dialogBuilder(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFFA643F),
          iconColor: const Color.fromARGB(0, 255, 155, 130),
          title: const Text('Pro Version Access!'),
          content: const Text(
              'As much as we would love to serve you, you are currently accessing a feature that isn\'t part of your current plan.\n'
              'To change your plan, kindly refer to our Pricing Plans for more information.\n'),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Pricing Plans'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatPage()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Back to chat'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= mobileView) {
          return Mobile(
            messages: messages,
            controller: _controller,
            sendMessage: _sendMessage,
            dialogBuilder: _dialogBuilder,
          );
        } else if (constraints.maxWidth < desktopView) {
          return Tablet(
            messages: messages,
            controller: _controller,
            sendMessage: _sendMessage,
            dialogBuilder: _dialogBuilder,
          );
        } else {
          return Desktop(
            messages: messages,
            controller: _controller,
            sendMessage: _sendMessage,
            dialogBuilder: _dialogBuilder,
          );
        }
      },
    );
  }
}
