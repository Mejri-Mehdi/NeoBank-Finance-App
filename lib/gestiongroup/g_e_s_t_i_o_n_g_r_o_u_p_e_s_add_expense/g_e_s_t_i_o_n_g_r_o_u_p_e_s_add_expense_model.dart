import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/gestiongroup/button/button_widget.dart';
import 'dart:ui';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_add_expense_widget.dart'
    show GESTIONGROUPESAddExpenseWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GESTIONGROUPESAddExpenseModel
    extends FlutterFlowModel<GESTIONGROUPESAddExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
