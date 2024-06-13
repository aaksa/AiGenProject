import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'mainquery_widget.dart' show MainqueryWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainqueryModel extends FlutterFlowModel<MainqueryWidget> {
  ///  Local state fields for this page.

  bool succeeded = false;

  String? body = 'None';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PostBody widget.
  FocusNode? postBodyFocusNode;
  TextEditingController? postBodyTextController;
  String? Function(BuildContext, String?)? postBodyTextControllerValidator;
  // Stores action output result for [Backend Call - API (postLinkedin)] action in Button widget.
  ApiCallResponse? urn;
  // State field(s) for Status widget.
  FocusNode? statusFocusNode;
  TextEditingController? statusTextController;
  String? Function(BuildContext, String?)? statusTextControllerValidator;
  // State field(s) for Error widget.
  FocusNode? errorFocusNode;
  TextEditingController? errorTextController;
  String? Function(BuildContext, String?)? errorTextControllerValidator;
  // State field(s) for InputErrors widget.
  FocusNode? inputErrorsFocusNode;
  TextEditingController? inputErrorsTextController;
  String? Function(BuildContext, String?)? inputErrorsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    postBodyFocusNode?.dispose();
    postBodyTextController?.dispose();

    statusFocusNode?.dispose();
    statusTextController?.dispose();

    errorFocusNode?.dispose();
    errorTextController?.dispose();

    inputErrorsFocusNode?.dispose();
    inputErrorsTextController?.dispose();
  }
}
