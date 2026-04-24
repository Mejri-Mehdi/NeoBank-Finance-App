import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/gestionwallet/button2/button2_widget.dart';
import '/gestionwallet/text_field2/text_field2_widget.dart';
import '/gestionwallet/transaction_toggle/transaction_toggle_widget.dart';
import 'dart:ui';
import 'g_e_s_t_i_o_n_w_a_l_l_e_t_add_transaction_widget.dart'
    show GESTIONWALLETAddTransactionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GESTIONWALLETAddTransactionModel
    extends FlutterFlowModel<GESTIONWALLETAddTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TransactionToggle.
  late TransactionToggleModel transactionToggleModel;
  // Model for TextField.
  late TextField2Model textFieldModel;
  // Model for Button.
  late Button2Model buttonModel;

  @override
  void initState(BuildContext context) {
    transactionToggleModel =
        createModel(context, () => TransactionToggleModel());
    textFieldModel = createModel(context, () => TextField2Model());
    buttonModel = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    transactionToggleModel.dispose();
    textFieldModel.dispose();
    buttonModel.dispose();
  }
}
