import '/dashboard/side_nav_1/side_nav1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'web_flow031_widget.dart' show WebFlow031Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebFlow031Model extends FlutterFlowModel<WebFlow031Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_1 component.
  late SideNav1Model sideNav1Model;

  @override
  void initState(BuildContext context) {
    sideNav1Model = createModel(context, () => SideNav1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNav1Model.dispose();
  }
}
