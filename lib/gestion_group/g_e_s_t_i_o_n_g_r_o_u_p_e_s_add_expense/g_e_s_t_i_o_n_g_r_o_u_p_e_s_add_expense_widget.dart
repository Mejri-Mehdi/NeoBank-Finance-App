import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_add_expense_model.dart';
export 'g_e_s_t_i_o_n_g_r_o_u_p_e_s_add_expense_model.dart';

class GESTIONGROUPESAddExpenseWidget extends StatefulWidget {
  const GESTIONGROUPESAddExpenseWidget({super.key});

  static String routeName = 'GESTIONGROUPESAddExpense';
  static String routePath = '/gESTIONGROUPESAddExpense';

  @override
  State<GESTIONGROUPESAddExpenseWidget> createState() =>
      _GESTIONGROUPESAddExpenseWidgetState();
}

class _GESTIONGROUPESAddExpenseWidgetState
    extends State<GESTIONGROUPESAddExpenseWidget> {
  late GESTIONGROUPESAddExpenseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GESTIONGROUPESAddExpenseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Container(
                  width: 0.0,
                  height: 0.0,
                ),
              ),
              Container(
                width: 0.0,
                height: 0.0,
              ),
              Spacer(),
              Container(
                width: 0.0,
                height: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
