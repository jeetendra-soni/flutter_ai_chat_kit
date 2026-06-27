import 'package:flutter/material.dart';
import 'package:flutter_ai_chat_kit/flutter_ai_chat_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AI Chat Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final AIChatController _controller;

  @override
  void initState() {
    super.initState();
    
    // 1. Initialize the provider
    final provider = OpenAIProvider(
      apiKey: 'YOUR_OPENAI_API_KEY', // Replace with your key
    );

    // 2. Initialize the repository
    final repository = ChatRepository(provider: provider);

    // 3. Initialize the controller
    _controller = AIChatController(repository: repository);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter AI Chat'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _controller.clearHistory(),
          ),
        ],
      ),
      body: AIChatView(
        controller: _controller,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}