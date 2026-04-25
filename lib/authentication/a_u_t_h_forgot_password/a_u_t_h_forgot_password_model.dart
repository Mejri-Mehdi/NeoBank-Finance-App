import '/authentication/button7/button7_widget.dart';
import '/authentication/text_field7/text_field7_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_u_t_h_forgot_password_widget.dart' show AUTHForgotPasswordWidget;
import 'package:flutter/material.dart';

class AUTHForgotPasswordModel
    extends FlutterFlowModel<AUTHForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField7Model textFieldModel;
  // Model for Button.
  late Button7Model buttonModel1;
  // Model for Button.
  late Button7Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField7Model());
    buttonModel1 = createModel(context, () => Button7Model());
    buttonModel2 = createModel(context, () => Button7Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
