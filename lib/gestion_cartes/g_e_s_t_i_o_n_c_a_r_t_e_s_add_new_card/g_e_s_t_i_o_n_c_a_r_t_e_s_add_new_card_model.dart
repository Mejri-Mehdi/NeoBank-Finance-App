import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gestion_cartes/button5/button5_widget.dart';
import '/gestion_cartes/text_field5t/text_field5t_widget.dart';
import '/index.dart';
import 'g_e_s_t_i_o_n_c_a_r_t_e_s_add_new_card_widget.dart'
    show GESTIONCARTESAddNewCardWidget;
import 'package:flutter/material.dart';

class GESTIONCARTESAddNewCardModel
    extends FlutterFlowModel<GESTIONCARTESAddNewCardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField1.
  late TextField5tModel textField1Model;
  // Model for TextField.
  late TextField5tModel textFieldModel1;
  // Model for TextField.
  late TextField5tModel textFieldModel2;
  // Model for TextField.
  late TextField5tModel textFieldModel3;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // Model for TextField.
  late TextField5tModel textFieldModel4;
  // Model for Button.
  late Button5Model buttonModel;

  @override
  void initState(BuildContext context) {
    textField1Model = createModel(context, () => TextField5tModel());
    textFieldModel1 = createModel(context, () => TextField5tModel());
    textFieldModel2 = createModel(context, () => TextField5tModel());
    textFieldModel3 = createModel(context, () => TextField5tModel());
    textFieldModel4 = createModel(context, () => TextField5tModel());
    buttonModel = createModel(context, () => Button5Model());
  }

  @override
  void dispose() {
    textField1Model.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    buttonModel.dispose();
  }
}
