## 0.0.5

* **Final URL Fix**: Implemented automatic `baseUrl` trailing slash sanitization in `AIDioClient`. This prevents 404 errors when providers or users omit the slash.
* **Enhanced Logging**: The network client now logs the full request URI (including query parameters) for better debugging.

## 0.0.4

* **Bug Fix**: Resolved critical URL resolution issue (404 error) across all providers (OpenAI, Gemini, Claude).
* **Documentation**: Added platform-specific setup instructions for Android and macOS in README.
* **Code Quality**: Optimized internal networking client for better OIDC detection in CI.

## 0.0.3

* **Claude Integration**: Added support for Anthropic Claude models (Claude 3.5 Sonnet, etc.).
* Support for standard and streaming responses for Claude.
* Automatic handling of Anthropic-specific API versioning and headers.

## 0.0.2

* **Gemini Integration**: Added support for Google's Gemini models.
* Support for standard and streaming responses for Gemini.
* Enhanced `AIDioClient` to support API key query parameters.

## 0.0.1

* **Initial Release** of `flutter_ai_chat_kit`.
* **Unified AI Provider API**: Plug-and-play architecture to switch between different AI models.
* **OpenAI Integration**: Full support for standard and streaming responses.
* **AIChatController**: State-management agnostic controller for managing conversation flow.
* **AIChatView Widget**: A ready-to-use Material 3 chat UI with Markdown and streaming support.
* **Conversation Persistence**: Built-in support for message history and local caching interfaces.
* **CI/CD Ready**: Configured GitHub Actions for automated publishing.