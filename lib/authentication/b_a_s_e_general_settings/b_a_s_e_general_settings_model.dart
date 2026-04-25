import '/authentication/button8/button8_widget.dart';
import '/authentication/settings_group_header2/settings_group_header2_widget.dart';
import '/authentication/settings_item2/settings_item2_widget.dart';
import '/authentication/switch_component5/switch_component5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'b_a_s_e_general_settings_widget.dart' show BASEGeneralSettingsWidget;
import 'package:flutter/material.dart';

class BASEGeneralSettingsModel
    extends FlutterFlowModel<BASEGeneralSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsGroupHeader.
  late SettingsGroupHeader2Model settingsGroupHeaderModel1;
  // Model for SwitchComponent.
  late SwitchComponent5Model switchComponentModel1;
  // Model for SwitchComponent.
  late SwitchComponent5Model switchComponentModel2;
  // Model for SettingsItem.
  late SettingsItem2Model settingsItemModel1;
  // Model for SettingsGroupHeader.
  late SettingsGroupHeader2Model settingsGroupHeaderModel2;
  // Model for SettingsItem.
  late SettingsItem2Model settingsItemModel2;
  // Model for SettingsItem.
  late SettingsItem2Model settingsItemModel3;
  // Model for SettingsItem.
  late SettingsItem2Model settingsItemModel4;
  // Model for Button.
  late Button8Model buttonModel;

  @override
  void initState(BuildContext context) {
    settingsGroupHeaderModel1 =
        createModel(context, () => SettingsGroupHeader2Model());
    switchComponentModel1 = createModel(context, () => SwitchComponent5Model());
    switchComponentModel2 = createModel(context, () => SwitchComponent5Model());
    settingsItemModel1 = createModel(context, () => SettingsItem2Model());
    settingsGroupHeaderModel2 =
        createModel(context, () => SettingsGroupHeader2Model());
    settingsItemModel2 = createModel(context, () => SettingsItem2Model());
    settingsItemModel3 = createModel(context, () => SettingsItem2Model());
    settingsItemModel4 = createModel(context, () => SettingsItem2Model());
    buttonModel = createModel(context, () => Button8Model());
  }

  @override
  void dispose() {
    settingsGroupHeaderModel1.dispose();
    switchComponentModel1.dispose();
    switchComponentModel2.dispose();
    settingsItemModel1.dispose();
    settingsGroupHeaderModel2.dispose();
    settingsItemModel2.dispose();
    settingsItemModel3.dispose();
    settingsItemModel4.dispose();
    buttonModel.dispose();
  }
}
