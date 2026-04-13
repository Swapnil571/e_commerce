import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get geminiApiKey => dotenv.env['GEMINI_API_KEY'] ?? '';

  Future<void> init() async {
    await dotenv.load(fileName: ".env");
    log('ENV INITIALISED: ${dotenv.isInitialized}');
  }

  // AppUrls.environment == 'LIVE' ?
}
