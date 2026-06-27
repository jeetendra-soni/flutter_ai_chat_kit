# flutter_ai_chat

A production-ready Flutter package for integrating multiple AI providers (OpenAI, Gemini, Claude, etc.) with a unified API.

## Features

- **Unified API**: Switch between AI providers (OpenAI, Gemini, etc.) without changing your UI code.
- **Streaming Support**: Real-time responses with incremental updates.
- **Clean Architecture**: Decoupled business logic, repository pattern, and strategy pattern for providers.
- **Markdown Support**: Built-in markdown rendering for AI responses.
- **Conversation Persistence**: Easily save and load conversation history.
- **State Management Agnostic**: Works with Bloc, Riverpod, Provider, or simple ValueNotifiers.

## Quick Start

### 1. Initialize the Provider

```dart
final provider = OpenAIProvider(
  apiKey: 'your-api-key',
  model: 'gpt-4',
);
```

### 2. Setup the Repository

```dart
final repository = ChatRepository(provider: provider);
```

### 3. Use the Controller

```dart
final controller = AIChatController(repository: repository);

// Send a message
await controller.sendMessage("Hello!");

// Or stream a message
await controller.streamMessage("Write a story...");
```

### 4. Plug into UI

```dart
AIChatView(
  controller: controller,
)
```

## Supported Providers

- [x] OpenAI
- [x] Gemini
- [ ] Claude (Coming Soon)
- [ ] Ollama (Coming Soon)
- [ ] DeepSeek (Coming Soon)

## License

MIT