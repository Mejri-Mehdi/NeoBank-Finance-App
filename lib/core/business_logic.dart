// ============================================================
// NeoBank — Showcase Custom Business Logic
// Built with FlutterFlow + Firebase + Dart
//
// ⚠️ This file is a SHOWCASE ONLY.
//    Full source code is intentionally not included.
// ============================================================

import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';

// ─────────────────────────────────────────────────────────────
// 1. LUHN ALGORITHM — Valid Credit Card Number Generator
//    Generates Visa-prefix (4) card numbers that pass the
//    ISO/IEC 7812 mod-10 (Luhn) mathematical check.
// ─────────────────────────────────────────────────────────────
String generateCardNumber() {
  final random = math.Random();
  String digits = '4'; // Visa prefix

  for (int i = 0; i < 10; i++) {
    digits += random.nextInt(10).toString();
  }

  int sum = 0;
  bool alternate = true;
  for (int i = digits.length - 1; i >= 0; i--) {
    int n = int.parse(digits[i]);
    if (alternate) {
      n *= 2;
      if (n > 9) n = (n % 10) + 1;
    }
    sum += n;
    alternate = !alternate;
  }

  int checkDigit = (10 - (sum % 10)) % 10;
  String fullNumber = digits + checkDigit.toString();

  // Format as "XXXX XXXX XXXX"
  return '${fullNumber.substring(0, 4)} '
      '${fullNumber.substring(4, 8)} '
      '${fullNumber.substring(8, 12)}';
}

// ─────────────────────────────────────────────────────────────
// 2. HEURISTIC FRAUD DETECTION ENGINE
//    Scores transaction risk based on:
//      - Transaction amount (TND)
//      - High-risk merchant keywords
//      - Suspicious execution hour (2 AM – 5 AM)
//    Flags as fraudulent if risk score exceeds 75 points.
// ─────────────────────────────────────────────────────────────
bool isTransactionFraudulent({
  required double amount,
  required String merchantName,
}) {
  int riskScore = 0;

  // Factor 1: Transaction amount risk
  if (amount >= 1000) {
    riskScore += 60;
  } else if (amount >= 500) {
    riskScore += 30;
  } else if (amount >= 200) {
    riskScore += 10;
  }

  // Factor 2: High-risk merchant keyword matching
  final List<String> highRiskKeywords = [
    'crypto',
    'casino',
    'bet',
    'pari',
    'transfert inconnu',
    'western union',
  ];
  final String merchantLower = merchantName.toLowerCase();
  for (final keyword in highRiskKeywords) {
    if (merchantLower.contains(keyword)) {
      riskScore += 45;
      break;
    }
  }

  // Factor 3: Suspicious hour (between 2 AM and 5 AM)
  final int hour = DateTime.now().hour;
  if (hour >= 2 && hour <= 5) {
    riskScore += 25;
  }

  // Fraud threshold: flag if risk score exceeds 75
  return riskScore > 75;
}

// ─────────────────────────────────────────────────────────────
// 3. SPARE CHANGE ROUND-UP SAVINGS
//    Computes the difference between a purchase amount and
//    its ceiling integer. Routes spare change to savings pot.
//    e.g. spending 14.20 TND → saves 0.80 TND
// ─────────────────────────────────────────────────────────────
double getSpareChange(double amount) {
  if (amount <= 0) return 0.0;
  final double ceiling = amount.ceilToDouble();
  final double spare = double.parse(
    (ceiling - amount).toStringAsFixed(2),
  );
  return spare;
}

// ─────────────────────────────────────────────────────────────
// 4. INVESTMENT MONTHLY RECOMMENDATION CALCULATOR
//    Computes the recommended monthly deposit amount needed
//    to reach a savings/investment target on time.
// ─────────────────────────────────────────────────────────────
double calculRecommendationMensuelle({
  required double montantCible,
  required double montantActuel,
  required DateTime dateDebut,
}) {
  final DateTime now = DateTime.now();
  final int monthsElapsed =
      (now.year - dateDebut.year) * 12 + (now.month - dateDebut.month);
  final int totalMonths = 12;
  final int monthsRemaining = totalMonths - monthsElapsed;

  if (monthsRemaining <= 0) return 0.0;

  final double remaining = montantCible - montantActuel;
  if (remaining <= 0) return 0.0;

  return double.parse(
    (remaining / monthsRemaining).toStringAsFixed(2),
  );
}

// ─────────────────────────────────────────────────────────────
// 5. OTP GENERATOR — 4-Digit Secure Verification Code
//    Generates a random 4-digit OTP for Twilio 2FA SMS flow.
// ─────────────────────────────────────────────────────────────
String generateOTP() {
  final random = math.Random.secure();
  final int otp = 1000 + random.nextInt(9000);
  return otp.toString();
}

// ─────────────────────────────────────────────────────────────
// 6. ATOMIC FIRESTORE WALLET BALANCE RECONCILIATION
//    Deletes a transaction and reverts its effect on wallet
//    balances in a single atomic Firestore transaction,
//    preventing race conditions from concurrent updates.
// ─────────────────────────────────────────────────────────────
Future<void> deleteTransactionAndUpdateWallet({
  required DocumentReference transactionRef,
  required DocumentReference walletRef,
}) async {
  await FirebaseFirestore.instance.runTransaction((txn) async {
    final txDoc = await txn.get(transactionRef);
    final walletDoc = await txn.get(walletRef);

    if (!txDoc.exists || !walletDoc.exists) {
      throw Exception('Transaction ou Wallet introuvable');
    }

    final data = txDoc.data() as Map<String, dynamic>;
    final walletData = walletDoc.data() as Map<String, dynamic>;

    final double montant = ((data['montant'] ?? 0) as num).toDouble();
    final String type = (data['type'] ?? '')
        .toString()
        .toLowerCase()
        .trim()
        .replaceAll('é', 'e');

    double solde = ((walletData['soldeCalcule'] ?? 0) as num).toDouble();
    double depenses = ((walletData['depenseTotale'] ?? 0) as num).toDouble();
    double revenus = ((walletData['revenuTotal'] ?? 0) as num).toDouble();

    if (type == 'depense') {
      depenses -= montant;
      solde += montant; // Revert: add back the deducted expense
    } else if (type == 'revenu') {
      revenus -= montant;
      solde -= montant; // Revert: subtract the added income
    }

    txn.update(walletRef, {
      'soldeCalcule': solde,
      'depenseTotale': depenses,
      'revenuTotal': revenus,
    });

    txn.delete(transactionRef); // Atomic: both ops succeed or both fail
  });
}
