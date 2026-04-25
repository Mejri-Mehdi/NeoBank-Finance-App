import '/authentication/button8/button8_widget.dart';
import '/authentication/date_header2/date_header2_widget.dart';
import '/authentication/notification_tile/notification_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b_a_s_e_notifications_center_widget.dart'
    show BASENotificationsCenterWidget;
import 'package:flutter/material.dart';

class BASENotificationsCenterModel
    extends FlutterFlowModel<BASENotificationsCenterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DateHeader.
  late DateHeader2Model dateHeaderModel1;
  // Model for NotificationTile.
  late NotificationTileModel notificationTileModel1;
  // Model for NotificationTile.
  late NotificationTileModel notificationTileModel2;
  // Model for NotificationTile.
  late NotificationTileModel notificationTileModel3;
  // Model for DateHeader.
  late DateHeader2Model dateHeaderModel2;
  // Model for NotificationTile.
  late NotificationTileModel notificationTileModel4;
  // Model for NotificationTile.
  late NotificationTileModel notificationTileModel5;
  // Model for Button.
  late Button8Model buttonModel;

  @override
  void initState(BuildContext context) {
    dateHeaderModel1 = createModel(context, () => DateHeader2Model());
    notificationTileModel1 =
        createModel(context, () => NotificationTileModel());
    notificationTileModel2 =
        createModel(context, () => NotificationTileModel());
    notificationTileModel3 =
        createModel(context, () => NotificationTileModel());
    dateHeaderModel2 = createModel(context, () => DateHeader2Model());
    notificationTileModel4 =
        createModel(context, () => NotificationTileModel());
    notificationTileModel5 =
        createModel(context, () => NotificationTileModel());
    buttonModel = createModel(context, () => Button8Model());
  }

  @override
  void dispose() {
    dateHeaderModel1.dispose();
    notificationTileModel1.dispose();
    notificationTileModel2.dispose();
    notificationTileModel3.dispose();
    dateHeaderModel2.dispose();
    notificationTileModel4.dispose();
    notificationTileModel5.dispose();
    buttonModel.dispose();
  }
}
