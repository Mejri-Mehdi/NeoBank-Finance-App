import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/others/switch_component3/switch_component3_widget.dart';
import 'dart:ui';
import 'security_toggle_widget.dart' show SecurityToggleWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SecurityToggleModel extends FlutterFlowModel<SecurityToggleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SwitchComponent.
  late SwitchComponent3Model switchComponentModel;

  @override
  void initState(BuildContext context) {
    switchComponentModel = createModel(context, () => SwitchComponent3Model());
  }

  @override
  void dispose() {
    switchComponentModel.dispose();
  }
}
