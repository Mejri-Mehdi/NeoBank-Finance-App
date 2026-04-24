import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/gestioncartes/button4/button4_widget.dart';
import '/gestioncartes/card_transaction/card_transaction_widget.dart';
import 'dart:ui';
import 'b_a_s_e_digital_cards_wallet_widget.dart'
    show BASEDigitalCardsWalletWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class BASEDigitalCardsWalletModel
    extends FlutterFlowModel<BASEDigitalCardsWalletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button4Model buttonModel;
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
    buttonModel = createModel(context, () => Button4Model());
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
