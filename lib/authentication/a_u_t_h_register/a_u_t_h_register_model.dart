import '/authentication/button7/button7_widget.dart';
import '/authentication/text_field7/text_field7_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_u_t_h_register_widget.dart' show AUTHRegisterWidget;
import 'package:flutter/material.dart';

class AUTHRegisterModel extends FlutterFlowModel<AUTHRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField7Model textFieldModel1;
  // Model for TextField.
  late TextField7Model textFieldModel2;
  // Model for TextField.
  late TextField7Model textFieldModel3;
  // Model for TextField.
  late TextField7Model textFieldModel4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Button.
  late Button7Model buttonModel1;
  // Model for Button.
  late Button7Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField7Model());
    textFieldModel2 = createModel(context, () => TextField7Model());
    textFieldModel3 = createModel(context, () => TextField7Model());
    textFieldModel4 = createModel(context, () => TextField7Model());
    buttonModel1 = createModel(context, () => Button7Model());
    buttonModel2 = createModel(context, () => Button7Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
