import '/flutter_flow/flutter_flow_util.dart';
import 'signin_password_widget.dart' show SigninPasswordWidget;
import 'package:flutter/material.dart';

class SigninPasswordModel extends FlutterFlowModel<SigninPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
