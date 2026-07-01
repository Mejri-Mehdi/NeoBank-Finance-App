// ============================================================
// NeoBank — Firestore Data Models (Schema Showcase)
// Built with FlutterFlow + Firebase + Dart
//
// ⚠️ This file is a SHOWCASE ONLY.
//    Full FlutterFlow-generated models are not included.
// ============================================================

import 'package:cloud_firestore/cloud_firestore.dart';

// ─────────────────────────────────────────────────────────────
// WALLET MODEL
// Represents a user's financial account with balances,
// budget limits, and OCR receipt storage fields.
// ─────────────────────────────────────────────────────────────
class WalletModel {
  final String? nomWallet;
  final double soldeActuel;
  final double soldeCalcule;
  final double budgetLimite;
  final double depenseTotale;
  final double revenuTotal;
  final double objectifEpargne;
  final String? texteRecu;     // OCR-parsed receipt text buffer
  final String? reculmage;     // Base64-encoded receipt image
  final bool notif50Shown;
  final bool notif70Shown;
  final bool notif90Shown;
  final bool notif100Shown;
  final List<DocumentReference> transactions;

  WalletModel({
    this.nomWallet,
    this.soldeActuel = 0.0,
    this.soldeCalcule = 0.0,
    this.budgetLimite = 0.0,
    this.depenseTotale = 0.0,
    this.revenuTotal = 0.0,
    this.objectifEpargne = 0.0,
    this.texteRecu,
    this.reculmage,
    this.notif50Shown = false,
    this.notif70Shown = false,
    this.notif90Shown = false,
    this.notif100Shown = false,
    this.transactions = const [],
  });

  factory WalletModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return WalletModel(
      nomWallet: data['nomWallet'] as String?,
      soldeActuel: ((data['soldeActuel'] ?? 0) as num).toDouble(),
      soldeCalcule: ((data['soldeCalcule'] ?? 0) as num).toDouble(),
      budgetLimite: ((data['budgetLimite'] ?? 0) as num).toDouble(),
      depenseTotale: ((data['depenseTotale'] ?? 0) as num).toDouble(),
      revenuTotal: ((data['revenuTotal'] ?? 0) as num).toDouble(),
      objectifEpargne: ((data['objectifEpargne'] ?? 0) as num).toDouble(),
      texteRecu: data['texteRecu'] as String?,
      reculmage: data['reculmage'] as String?,
      notif50Shown: (data['notif50Shown'] as bool?) ?? false,
      notif70Shown: (data['notif70Shown'] as bool?) ?? false,
      notif90Shown: (data['notif90Shown'] as bool?) ?? false,
      notif100Shown: (data['notif100Shown'] as bool?) ?? false,
      transactions: (data['Transactions'] as List<dynamic>?)
              ?.cast<DocumentReference>() ??
          [],
    );
  }
}

// ─────────────────────────────────────────────────────────────
// TRANSACTION MODEL
// Wallet income/expense entries with recurrence support.
// ─────────────────────────────────────────────────────────────
class TransactionModel {
  final DocumentReference? walletReff;
  final String type;          // 'revenu' or 'depense'
  final String categorie;     // Alimentation, Transport, Santé, etc.
  final double montant;
  final String? description;
  final DateTime? dateTransaction;
  final String? methodePaiement;
  final String? localisation;
  final bool isRecurrent;
  final String? frequence;    // 'Chaque jour' | 'Chaque semaine' | 'Chaque mois'
  final DateTime? nextDate;

  TransactionModel({
    this.walletReff,
    required this.type,
    required this.categorie,
    required this.montant,
    this.description,
    this.dateTransaction,
    this.methodePaiement,
    this.localisation,
    this.isRecurrent = false,
    this.frequence,
    this.nextDate,
  });

  factory TransactionModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TransactionModel(
      walletReff: data['walletReff'] as DocumentReference?,
      type: (data['type'] ?? 'depense') as String,
      categorie: (data['categorie'] ?? '') as String,
      montant: ((data['montant'] ?? 0) as num).toDouble(),
      description: data['description'] as String?,
      dateTransaction: (data['dateTransaction'] as Timestamp?)?.toDate(),
      methodePaiement: data['methodePaiement'] as String?,
      localisation: data['localisation'] as String?,
      isRecurrent: (data['isRecurrent'] as bool?) ?? false,
      frequence: data['frequence'] as String?,
      nextDate: (data['nextDate'] as Timestamp?)?.toDate(),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// CARD MODEL
// Payment card with security controls, limits, and savings pot.
// ─────────────────────────────────────────────────────────────
class CardModel {
  final DocumentReference? userRef;
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;
  final String cvv;
  final String cardNetwork;   // 'Visa' | 'Mastercard' | 'Poste Tunisie'
  final double balance;
  final String currency;      // 'TND' | 'USD' | 'EUR'
  final String status;        // 'Active' | 'Blocked'
  final double dailyLimit;    // Max: 2000 TND
  final double currentSpend;
  final double savingsBalance; // Spare-change round-up pot
  final DateTime? createdAt;

  CardModel({
    this.userRef,
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
    required this.cvv,
    required this.cardNetwork,
    this.balance = 0.0,
    this.currency = 'TND',
    this.status = 'Active',
    this.dailyLimit = 500.0,
    this.currentSpend = 0.0,
    this.savingsBalance = 0.0,
    this.createdAt,
  });

  bool get isActive => status == 'Active';
  bool get isOverDailyLimit => currentSpend >= dailyLimit;
  double get remainingDailyBudget => dailyLimit - currentSpend;

  factory CardModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return CardModel(
      userRef: data['user_ref'] as DocumentReference?,
      cardNumber: (data['card_number'] ?? '') as String,
      cardHolderName: (data['card_holder_name'] ?? '') as String,
      expiryDate: (data['expiry_date'] ?? '') as String,
      cvv: (data['cvv'] ?? '') as String,
      cardNetwork: (data['card_network'] ?? 'Visa') as String,
      balance: ((data['balance'] ?? 0) as num).toDouble(),
      currency: (data['currency'] ?? 'TND') as String,
      status: (data['status'] ?? 'Active') as String,
      dailyLimit: ((data['daily_limit'] ?? 500) as num).toDouble(),
      currentSpend: ((data['current_spend'] ?? 0) as num).toDouble(),
      savingsBalance: ((data['savings_balance'] ?? 0) as num).toDouble(),
      createdAt: (data['created_at'] as Timestamp?)?.toDate(),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// BUDGET MODEL
// Category-based spending limit with progress tracking.
// ─────────────────────────────────────────────────────────────
class BudgetModel {
  final String nom;
  final String categorie;
  final double montantMax;
  final double montantDepense;
  final double montantRestant;
  final DateTime? dateDebut;
  final DateTime? dateFin;

  BudgetModel({
    required this.nom,
    required this.categorie,
    required this.montantMax,
    this.montantDepense = 0.0,
    this.montantRestant = 0.0,
    this.dateDebut,
    this.dateFin,
  });

  double get percentageConsumed =>
      montantMax > 0 ? (montantDepense / montantMax) * 100 : 0.0;

  bool get isOverBudget => montantDepense >= montantMax;
  bool get isWarning => percentageConsumed >= 70;
  bool get isCritical => percentageConsumed >= 90;

  factory BudgetModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return BudgetModel(
      nom: (data['nom'] ?? '') as String,
      categorie: (data['categorie'] ?? '') as String,
      montantMax: ((data['montantMax'] ?? 0) as num).toDouble(),
      montantDepense: ((data['montantDepense'] ?? 0) as num).toDouble(),
      montantRestant: ((data['montantRestant'] ?? 0) as num).toDouble(),
      dateDebut: (data['dateDebut'] as Timestamp?)?.toDate(),
      dateFin: (data['dateFin'] as Timestamp?)?.toDate(),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// INVESTMENT MODEL
// Portfolio entry with target tracking and value history.
// ─────────────────────────────────────────────────────────────
class InvestmentModel {
  final String idUser;
  final String nom;
  final double montantInitial;
  final double montantActuel;
  final double montantCible;
  final DateTime? dateDebut;

  InvestmentModel({
    required this.idUser,
    required this.nom,
    required this.montantInitial,
    required this.montantActuel,
    required this.montantCible,
    this.dateDebut,
  });

  double get gainTotal => montantActuel - montantInitial;
  double get gainPercent =>
      montantInitial > 0 ? (gainTotal / montantInitial) * 100 : 0.0;
  double get progressPercent =>
      montantCible > 0 ? (montantActuel / montantCible) * 100 : 0.0;
  bool get isPositive => gainTotal >= 0;

  factory InvestmentModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return InvestmentModel(
      idUser: (data['idUser'] ?? '') as String,
      nom: (data['nom'] ?? '') as String,
      montantInitial: ((data['montantInitial'] ?? 0) as num).toDouble(),
      montantActuel: ((data['montantActuel'] ?? 0) as num).toDouble(),
      montantCible: ((data['montantCible'] ?? 0) as num).toDouble(),
      dateDebut: (data['dateDebut'] as Timestamp?)?.toDate(),
    );
  }
}
