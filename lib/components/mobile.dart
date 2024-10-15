import 'package:flutter/material.dart';
import 'package:xd/pages/home.dart';

class Mobile extends StatefulWidget {
  final List<String> messages;
  final TextEditingController controller;
  final Function sendMessage;
  final Function dialogBuilder;

  const Mobile({
    super.key,
    required this.messages,
    required this.controller,
    required this.sendMessage,
    required this.dialogBuilder,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
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
      appBar: AppBar(
        title: const Text('DormEATory Student Chat', style: TextStyle(color: Color(0xFFFF9D85))),
        backgroundColor: const Color(0xFF331D0E),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: const Icon(Icons.home, color: Color(0xFFFF9D85)),
        ),
      ),
      body: _buildChatContent(context),
    );
  }

  Widget _buildChatContent(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: widget.messages.length,
            itemBuilder: (context, index) {
              final isEven = index % 2 == 0;
              return _buildMessageTile(widget.messages[widget.messages.length - 1 - index], isEven);
            },
          ),
        ),
        _buildInputArea(context),
      ],
    );
  }

  Widget _buildMessageTile(String message, bool isUser) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: isUser ? const Color(0xFF7A5C47) : const Color(0xFF331D0E),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) _buildAvatar(isUser),
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
          if (isUser) _buildAvatar(isUser),
        ],
      ),
    );
  }

  Widget _buildAvatar(bool isUser) {
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

  Widget _buildInputArea(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF331D0E),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: widget.controller,
                focusNode: _focusNode, 
                decoration: InputDecoration(
                  hintText: 'Ask about your meal...',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  filled: true,
                  fillColor: const Color(0xFF7A5C47),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
                style: const TextStyle(color: Colors.white),
                onSubmitted: (_) => _onSendMessage(), // Call function to send message
              ),
            ),
            const SizedBox(width: 8),
            _buildSendButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSendButton() {
    return GestureDetector(
      onTap: () => _onSendMessage(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFFA643F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(Icons.send, color: Colors.white),
      ),
    );
  }

  // Function to send the message and request focus on TextField
  void _onSendMessage() {
    widget.sendMessage();
    _focusNode.requestFocus(); 
  }
}
