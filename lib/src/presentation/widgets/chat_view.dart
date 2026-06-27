import 'package:flutter/material.dart';
import 'package:flutter_ai_chat_kit/src/domain/models/ai_models.dart';
import 'package:flutter_ai_chat_kit/src/presentation/controllers/chat_controller.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// A ready-to-use chat view widget.
class AIChatView extends StatelessWidget {

  const AIChatView({
    required this.controller, super.key,
    this.userAvatar,
    this.aiAvatar,
    this.inputDecoration,
    this.messageTextStyle,
  });
  final AIChatController controller;
  final Widget? userAvatar;
  final Widget? aiAvatar;
  final InputDecoration? inputDecoration;
  final TextStyle? messageTextStyle;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: controller.messages.length,
                itemBuilder: (context, index) {
                  final message = controller.messages[index];
                  return AIMessageBubble(
                    message: message,
                    userAvatar: userAvatar,
                    aiAvatar: aiAvatar,
                    textStyle: messageTextStyle,
                  );
                },
              ),
            ),
            if (controller.isLoading &&
                controller.messages.isNotEmpty &&
                controller.messages.last.role == ChatRole.user)
              const Padding(
                padding: EdgeInsets.all(8),
                child: CircularProgressIndicator(),
              ),
            if (controller.error != null)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  controller.error!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            _ChatInputField(
              controller: controller,
              decoration: inputDecoration,
            ),
          ],
        );
      },
    );
  }
}

class AIMessageBubble extends StatelessWidget {

  const AIMessageBubble({
    required this.message, super.key,
    this.userAvatar,
    this.aiAvatar,
    this.textStyle,
  });
  final ChatMessage message;
  final Widget? userAvatar;
  final Widget? aiAvatar;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == ChatRole.user;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isUser)
            aiAvatar ?? const CircleAvatar(child: Icon(Icons.smart_toy)),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isUser ? Colors.blue.shade100 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: MarkdownBody(
                data: message.content,
                selectable: true,
                styleSheet:
                    MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                  p: textStyle ?? Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (isUser)
            userAvatar ?? const CircleAvatar(child: Icon(Icons.person)),
        ],
      ),
    );
  }
}

class _ChatInputField extends StatefulWidget {

  const _ChatInputField({
    required this.controller,
    this.decoration,
  });
  final AIChatController controller;
  final InputDecoration? decoration;

  @override
  State<_ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<_ChatInputField> {
  final TextEditingController _textController = TextEditingController();

  void _onSend() {
    final text = _textController.text;
    if (text.isNotEmpty) {
      widget.controller.streamMessage(text);
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05), // ignore: deprecated_member_use
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: widget.decoration ??
                  const InputDecoration(
                    hintText: 'Type a message...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
              onSubmitted: (_) => _onSend(),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: widget.controller.isLoading ? null : _onSend,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}