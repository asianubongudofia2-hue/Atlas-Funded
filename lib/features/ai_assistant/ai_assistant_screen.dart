import 'package:flutter/material.dart';

class AiAssistantScreen extends StatelessWidget {
  const AiAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Atlas AI Assistant',
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // Chat Messages List (Placeholder UI)
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildChatBubble(
                  'Hello! I am your Atlas AI trading assistant. How can I help you analyze your portfolio today?',
                  false,
                ),
                const SizedBox(height: 12),
                _buildChatBubble(
                  'What is my current drawdown limit for this challenge?',
                  true,
                ),
                const SizedBox(height: 12),
                _buildChatBubble(
                  'Your maximum daily drawdown limit is currently \$1,200, and you have \$3,800 remaining buffer before hitting the threshold.',
                  false,
                ),
              ],
            ),
          ),
          // Input Area
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.grey.shade900,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Ask Atlas AI anything...',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.amber),
                  onPressed: () {
                    // TODO: Implement message sending logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String message, bool isUser) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first).size.width * 0.75),
        decoration: BoxDecoration(
          color: isUser ? Colors.amber.shade700 : Colors.grey.shade800,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isUser ? Colors.black : Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

