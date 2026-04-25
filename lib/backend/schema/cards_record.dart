import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsRecord extends FirestoreRecord {
  CardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "card_name" field.
  String? _cardName;
  String get cardName => _cardName ?? '';
  bool hasCardName() => _cardName != null;

  // "network_type" field.
  String? _networkType;
  String get networkType => _networkType ?? '';
  bool hasNetworkType() => _networkType != null;

  // "spending_limit" field.
  double? _spendingLimit;
  double get spendingLimit => _spendingLimit ?? 0.0;
  bool hasSpendingLimit() => _spendingLimit != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  bool hasPeriod() => _period != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "card_number" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "expiry_date" field.
  String? _expiryDate;
  String get expiryDate => _expiryDate ?? '';
  bool hasExpiryDate() => _expiryDate != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "limit_period" field.
  String? _limitPeriod;
  String get limitPeriod => _limitPeriod ?? '';
  bool hasLimitPeriod() => _limitPeriod != null;

  // "last_four_digits" field.
  String? _lastFourDigits;
  String get lastFourDigits => _lastFourDigits ?? '';
  bool hasLastFourDigits() => _lastFourDigits != null;

  // "is_frozen" field.
  bool? _isFrozen;
  bool get isFrozen => _isFrozen ?? false;
  bool hasIsFrozen() => _isFrozen != null;

  void _initializeFields() {
    _cardName = snapshotData['card_name'] as String?;
    _networkType = snapshotData['network_type'] as String?;
    _spendingLimit = castToType<double>(snapshotData['spending_limit']);
    _period = snapshotData['period'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _cardNumber = snapshotData['card_number'] as String?;
    _expiryDate = snapshotData['expiry_date'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _limitPeriod = snapshotData['limit_period'] as String?;
    _lastFourDigits = snapshotData['last_four_digits'] as String?;
    _isFrozen = snapshotData['is_frozen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cards');

  static Stream<CardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardsRecord.fromSnapshot(s));

  static Future<CardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardsRecord.fromSnapshot(s));

  static CardsRecord fromSnapshot(DocumentSnapshot snapshot) => CardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardsRecordData({
  String? cardName,
  String? networkType,
  double? spendingLimit,
  String? period,
  DateTime? createdAt,
  String? cardNumber,
  String? expiryDate,
  DocumentReference? userRef,
  String? limitPeriod,
  String? lastFourDigits,
  bool? isFrozen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'card_name': cardName,
      'network_type': networkType,
      'spending_limit': spendingLimit,
      'period': period,
      'created_at': createdAt,
      'card_number': cardNumber,
      'expiry_date': expiryDate,
      'user_ref': userRef,
      'limit_period': limitPeriod,
      'last_four_digits': lastFourDigits,
      'is_frozen': isFrozen,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardsRecordDocumentEquality implements Equality<CardsRecord> {
  const CardsRecordDocumentEquality();

  @override
  bool equals(CardsRecord? e1, CardsRecord? e2) {
    return e1?.cardName == e2?.cardName &&
        e1?.networkType == e2?.networkType &&
        e1?.spendingLimit == e2?.spendingLimit &&
        e1?.period == e2?.period &&
        e1?.createdAt == e2?.createdAt &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.userRef == e2?.userRef &&
        e1?.limitPeriod == e2?.limitPeriod &&
        e1?.lastFourDigits == e2?.lastFourDigits &&
        e1?.isFrozen == e2?.isFrozen;
  }

  @override
  int hash(CardsRecord? e) => const ListEquality().hash([
        e?.cardName,
        e?.networkType,
        e?.spendingLimit,
        e?.period,
        e?.createdAt,
        e?.cardNumber,
        e?.expiryDate,
        e?.userRef,
        e?.limitPeriod,
        e?.lastFourDigits,
        e?.isFrozen
      ]);

  @override
  bool isValidKey(Object? o) => o is CardsRecord;
}
