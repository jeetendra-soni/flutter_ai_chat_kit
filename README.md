# flutter_ai_chat_kit

A production-ready Flutter package for integrating multiple AI providers (OpenAI, Gemini, Claude, etc.) with a unified API.

<p align="center">
  <img src="https://raw.githubusercontent.com/yourusername/flutter_ai_chat_kit/main/assets/screenshots/chat_demo.gif" width="300px" alt="Chat Demo">
</p>

## ✨ Features

- **🚀 Unified API**: Switch between AI providers (OpenAI, Gemini, etc.) without changing your UI code.
- **⚡ Streaming Support**: Real-time responses with incremental updates for that "ChatGPT feel".
- **🏗️ Clean Architecture**: Built with Strategy, Repository, and Controller patterns for maximum extensibility.
- **📝 Markdown Support**: Built-in rich text rendering for AI responses (code blocks, tables, etc.).
- **💾 Persistence**: Built-in support for conversation history and local caching.
- **🎨 Modern UI**: Beautiful Material 3 chat components included out-of-the-box.

## 📸 Screenshots

| Light Mode | Dark Mode | Markdown Support |
| :---: | :---: | :---: |
| <img src="https://raw.githubusercontent.com/yourusername/flutter_ai_chat_kit/main/assets/screenshots/light_mode.png" width="200px"> | <img src="https://raw.githubusercontent.com/yourusername/flutter_ai_chat_kit/main/assets/screenshots/dark_mode.png" width="200px"> | <img src="https://raw.githubusercontent.com/yourusername/flutter_ai_chat_kit/main/assets/screenshots/markdown.png" width="200px"> |

## 🚀 Quick Start

### 1. Platform Setup

#### Android
Add the internet permission to your `android/app/src/main/AndroidManifest.xml`:
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <uses-permission android:name="android.permission.INTERNET" />
    ...
</manifest>
```

#### macOS
If you are developing for macOS, enable network access in `macos/Runner/DebugProfile.entitlements` and `macos/Runner/Release.entitlements`:
```xml
<key>com.apple.security.network.client</key>
<true/>
```

### 2. Initialize the Provider

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
- [x] Anthropic Claude
- [ ] Ollama (Coming Soon)
- [ ] DeepSeek (Coming Soon)

## License

MIT