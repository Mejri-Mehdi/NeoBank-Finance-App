import '/flutter_flow/flutter_flow_util.dart';
import '/gestion_group/button4/button4_widget.dart';
import '/gestion_group/text_field4/text_field4_widget.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_create_group_widget.dart'
    show GESTIONGROUPESCreateGroupWidget;
import 'package:flutter/material.dart';

class GESTIONGROUPESCreateGroupModel
    extends FlutterFlowModel<GESTIONGROUPESCreateGroupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField4Model textFieldModel1;
  // Model for TextField.
  late TextField4Model textFieldModel2;
  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField4Model());
    textFieldModel2 = createModel(context, () => TextField4Model());
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel.dispose();
  }
}
