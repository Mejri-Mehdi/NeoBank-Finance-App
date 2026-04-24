import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/gestionwallet/transaction_item/transaction_item_widget.dart';
import 'dart:ui';
import 'swipeable_transaction_widget.dart' show SwipeableTransactionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SwipeableTransactionModel
    extends FlutterFlowModel<SwipeableTransactionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel;

  @override
  void initState(BuildContext context) {
    transactionItemModel = createModel(context, () => TransactionItemModel());
  }

  @override
  void dispose() {
    transactionItemModel.dispose();
  }
}
