import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_cartes/button/button_widget.dart';
import '/gestion_cartes/card_transaction/card_transaction_widget.dart';
import 'b_a_s_e_digital_cards_wallet_widget.dart'
    show BASEDigitalCardsWalletWidget;
import 'package:flutter/material.dart';

class BASEDigitalCardsWalletModel
    extends FlutterFlowModel<BASEDigitalCardsWalletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel1;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel2;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel3;
  // Model for CardTransaction.
  late CardTransactionModel cardTransactionModel4;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
    cardTransactionModel1 = createModel(context, () => CardTransactionModel());
    cardTransactionModel2 = createModel(context, () => CardTransactionModel());
    cardTransactionModel3 = createModel(context, () => CardTransactionModel());
    cardTransactionModel4 = createModel(context, () => CardTransactionModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    cardTransactionModel1.dispose();
    cardTransactionModel2.dispose();
    cardTransactionModel3.dispose();
    cardTransactionModel4.dispose();
  }
}
