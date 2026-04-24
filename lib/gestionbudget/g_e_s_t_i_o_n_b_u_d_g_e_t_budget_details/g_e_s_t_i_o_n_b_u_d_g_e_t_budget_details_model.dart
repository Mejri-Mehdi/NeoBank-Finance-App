import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/gestionbudget/button3/button3_widget.dart';
import '/gestionbudget/transaction_item2/transaction_item2_widget.dart';
import 'dart:ui';
import 'g_e_s_t_i_o_n_b_u_d_g_e_t_budget_details_widget.dart'
    show GESTIONBUDGETBudgetDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GESTIONBUDGETBudgetDetailsModel
    extends FlutterFlowModel<GESTIONBUDGETBudgetDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItem2Model transactionItemModel4;
  // Model for Button.
  late Button3Model buttonModel;

  @override
  void initState(BuildContext context) {
    transactionItemModel1 = createModel(context, () => TransactionItem2Model());
    transactionItemModel2 = createModel(context, () => TransactionItem2Model());
    transactionItemModel3 = createModel(context, () => TransactionItem2Model());
    transactionItemModel4 = createModel(context, () => TransactionItem2Model());
    buttonModel = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
    buttonModel.dispose();
  }
}
