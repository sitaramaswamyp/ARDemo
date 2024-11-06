import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'a_r_demo_page_model.dart';
export 'a_r_demo_page_model.dart';

class ARDemoPageWidget extends StatefulWidget {
  const ARDemoPageWidget({super.key});

  @override
  State<ARDemoPageWidget> createState() => _ARDemoPageWidgetState();
}

class _ARDemoPageWidgetState extends State<ARDemoPageWidget> {
  late ARDemoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ARDemoPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).primary),
          automaticallyImplyLeading: true,
          title: Text(
            'View Products in AR',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
                height: 500.0,
                child: custom_widgets.ArView(
                  width: double.infinity,
                  height: 500.0,
                  image:
                      'https://www.freepnglogos.com/uploads/furniture-png/furniture-png-transparent-furniture-images-pluspng-15.png',
                  buyButtonOnClick: () async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Item selected successfully',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
