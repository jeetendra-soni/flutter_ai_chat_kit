import 'package:flutter_ai_chat_kit/flutter_ai_chat_kit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChatRole', () {
    test('enum values are correct', () {
      expect(ChatRole.user.name, 'user');
      expect(ChatRole.assistant.name, 'assistant');
      expect(ChatRole.system.name, 'system');
      expect(ChatRole.tool.name, 'tool');
    });
  });

  group('ChatMessage', () {
    test('creation works', () {
      const message = ChatMessage(
        role: ChatRole.user,
        content: 'Hello',
      );
      expect(message.content, 'Hello');
      expect(message.role, ChatRole.user);
    });
  });
}