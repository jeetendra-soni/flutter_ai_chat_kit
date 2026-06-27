/// A production-ready Flutter package for integrating multiple AI providers
/// with a unified API.
library flutter_ai_chat_kit;

// Exporting Domain Models
export 'src/domain/models/ai_models.dart';

// Exporting Provider Interfaces
export 'src/domain/providers/ai_provider.dart';

// Exporting Infrastructure Providers
export 'src/infrastructure/providers/openai/openai_provider.dart';
export 'src/infrastructure/providers/gemini/gemini_provider.dart';
export 'src/infrastructure/providers/claude/claude_provider.dart';

// Exporting Repository
export 'src/domain/repository/chat_repository_interface.dart';
export 'src/infrastructure/repository/chat_repository.dart';

// Exporting Presentation
export 'src/presentation/controllers/chat_controller.dart';
export 'src/presentation/widgets/chat_view.dart';

// Exporting Core Exceptions
export 'src/core/exceptions/ai_exception.dart';