// ============================================================
// NeoBank — Showcase API Integration Definitions
// Built with FlutterFlow + Firebase + Dart
//
// ⚠️ This file is a SHOWCASE ONLY.
//    API keys and full implementation are intentionally excluded.
// ============================================================

import 'dart:convert';
import 'package:http/http.dart' as http;

// ─────────────────────────────────────────────────────────────
// API ENDPOINTS REGISTRY
// ─────────────────────────────────────────────────────────────
class NeoApiEndpoints {
  // Groq — Llama 3.3 70B (AI Budget Advisory)
  static const String groqBaseUrl = 'https://api.groq.com/openai/v1';
  static const String groqChatCompletions = '$groqBaseUrl/chat/completions';

  // Google Gemini 2.5 Flash (Merchant Categorization)
  static const String geminiBaseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';
  static const String geminiFlash =
      '$geminiBaseUrl/gemini-2.5-flash:generateContent';

  // OCR.space (French Receipt Text Extraction)
  static const String ocrSpaceUrl = 'https://api.ocr.space/parse/image';

  // Konnect Payment Gateway (TND Card Recharge)
  static const String konnectUrl =
      'https://api.preprod.konnect.network/api/v2/payments/init-payment';

  // Geoapify (Address Geocoding for Groups)
  static const String geoapifyUrl =
      'https://api.geoapify.com/v1/geocode/search';

  // Cloudinary (Group Image Hosting)
  static const String cloudinaryUrl =
      'https://api.cloudinary.com/v1_1/dm8c2fi9i/image/upload';

  // CoinGecko (Live Bitcoin Price)
  static const String coinGeckoUrl =
      'https://api.coingecko.com/api/v3/simple/price';

  // ExchangeRate API (TND Currency Conversion)
  static const String exchangeRateUrl =
      'https://api.exchangerate-api.com/v4/latest/TND';

  // Twilio (2FA OTP SMS)
  static const String twilioBaseUrl = 'https://api.twilio.com/2010-04-01';

  // EmailJS (Welcome Emails)
  static const String emailJsUrl =
      'https://api.emailjs.com/api/v1.0/email/send';
}

// ─────────────────────────────────────────────────────────────
// GROQ LLAMA 3.3 — AI Budget Advisory Request
// Sends budget data and returns French-language savings advice
// ─────────────────────────────────────────────────────────────
Future<String> requestBudgetAdvisory({
  required String apiKey,
  required String categorie,
  required double montantDepense,
  required double montantMax,
  required int joursRestants,
}) async {
  final prompt = '''
Tu es un conseiller financier expert pour le marché tunisien.
Analyse ce budget en Dinar Tunisien (TND) et donne des conseils précis:

Catégorie: $categorie
Montant dépensé: $montantDepense TND
Plafond: $montantMax TND  
Jours restants: $joursRestants jours
Pourcentage consommé: ${((montantDepense / montantMax) * 100).toStringAsFixed(1)}%

Réponds en JSON avec les clés: alerte, conseil, action_recommandee
''';

  final response = await http.post(
    Uri.parse(NeoApiEndpoints.groqChatCompletions),
    headers: {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'model': 'llama-3.3-70b-versatile',
      'messages': [
        {'role': 'user', 'content': prompt}
      ],
      'temperature': 0.7,
      'max_tokens': 500,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['choices'][0]['message']['content'] as String;
  }

  throw Exception('Budget advisory request failed: ${response.statusCode}');
}

// ─────────────────────────────────────────────────────────────
// COINGECKO — Live Bitcoin Price Fetcher
// Returns current BTC/USD price and 24h change percentage
// ─────────────────────────────────────────────────────────────
Future<Map<String, dynamic>> getBitcoinPrice() async {
  final uri = Uri.parse(NeoApiEndpoints.coinGeckoUrl).replace(
    queryParameters: {
      'ids': 'bitcoin',
      'vs_currencies': 'usd',
      'include_24hr_change': 'true',
    },
  );

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final bitcoin = data['bitcoin'] as Map<String, dynamic>;
    return {
      'price_usd': bitcoin['usd'],
      'change_24h': bitcoin['usd_24h_change'],
    };
  }

  throw Exception('Failed to fetch Bitcoin price: ${response.statusCode}');
}

// ─────────────────────────────────────────────────────────────
// KONNECT GATEWAY — Card Top-Up Payment Init
// Returns a payUrl redirect for TND e-DINAR recharges
// ─────────────────────────────────────────────────────────────
Future<String> initKonnectPayment({
  required String apiKey,
  required double montant,
  required String walletId,
  required String successUrl,
  required String failUrl,
}) async {
  final response = await http.post(
    Uri.parse(NeoApiEndpoints.konnectUrl),
    headers: {
      'x-api-key': apiKey,
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'receiverWalletId': walletId,
      'token': 'TND',
      'amount': (montant * 1000).toInt(), // Konnect uses millimes
      'type': 'immediate',
      'successUrl': successUrl,
      'failUrl': failUrl,
      'theme': 'dark',
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return data['payUrl'] as String;
  }

  throw Exception('Konnect payment init failed: ${response.statusCode}');
}
