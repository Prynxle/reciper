import 'package:flutter/material.dart';
import 'package:xd/components/mobile.dart';
import 'package:xd/components/tablet.dart';
import 'package:xd/components/desktop.dart';  
import 'package:xd/components/size.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text);
        _controller.clear();
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
          // Mobile Layout
          return Mobile(
            messages: messages,
            controller: _controller,
            sendMessage: _sendMessage,
            dialogBuilder: _dialogBuilder,
          );
        } else if (constraints.maxWidth < desktopView) {
          // Tablet Layout
          return Tablet(
            messages: messages,
            controller: _controller,
            sendMessage: _sendMessage,
            dialogBuilder: _dialogBuilder,
          );
        } else {
          // Desktop Layout
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
