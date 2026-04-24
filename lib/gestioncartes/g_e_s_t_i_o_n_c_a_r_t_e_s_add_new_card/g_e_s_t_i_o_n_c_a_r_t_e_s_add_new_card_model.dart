import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gestioncartes/button4/button4_widget.dart';
import '/gestioncartes/text_field4/text_field4_widget.dart';
import 'dart:ui';
import 'g_e_s_t_i_o_n_c_a_r_t_e_s_add_new_card_widget.dart'
    show GESTIONCARTESAddNewCardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class GESTIONCARTESAddNewCardModel
    extends FlutterFlowModel<GESTIONCARTESAddNewCardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField4Model textFieldModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // Model for TextField.
  late TextField4Model textFieldModel2;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
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
