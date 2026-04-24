import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gestioninvestissement/button5/button5_widget.dart';
import '/gestioninvestissement/switch_component2/switch_component2_widget.dart';
import '/gestioninvestissement/text_field5/text_field5_widget.dart';
import 'dart:ui';
import 'g_e_s_t_i_o_n_i_n_v_e_s_t_set_new_goal_widget.dart'
    show GESTIONINVESTSetNewGoalWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class GESTIONINVESTSetNewGoalModel
    extends FlutterFlowModel<GESTIONINVESTSetNewGoalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField5Model textFieldModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for TextField.
  late TextField5Model textFieldModel2;
  // Model for TextField.
  late TextField5Model textFieldModel3;
  // Model for SwitchComponent.
  late SwitchComponent2Model switchComponentModel;
  // Model for Button.
  late Button5Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField5Model());
    textFieldModel2 = createModel(context, () => TextField5Model());
    textFieldModel3 = createModel(context, () => TextField5Model());
    switchComponentModel = createModel(context, () => SwitchComponent2Model());
    buttonModel = createModel(context, () => Button5Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    switchComponentModel.dispose();
    buttonModel.dispose();
  }
}
