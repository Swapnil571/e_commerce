import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:test/utils/config.dart';

// ... app stuff here


class AIChatBot extends StatelessWidget {
  const AIChatBot({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Gemini")),
        body: LlmChatView(
          provider: GeminiProvider(
            model: GenerativeModel(
              model: 'gemini-1.5-flash',
              apiKey: Config.geminiApiKey,
            ),
          ),
        ),
      );
}