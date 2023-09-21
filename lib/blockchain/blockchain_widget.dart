import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blockchain_model.dart';
export 'blockchain_model.dart';

class BlockchainWidget extends StatefulWidget {
  const BlockchainWidget({Key? key}) : super(key: key);

  @override
  _BlockchainWidgetState createState() => _BlockchainWidgetState();
}

class _BlockchainWidgetState extends State<BlockchainWidget> {
  late BlockchainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlockchainModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'blockchain'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FlutterFlowWebView(
              content:
                  'https://portfolio.metamask.io/networks/56/tokens/undefined/0x09ddc12fa6febade5d524246c3956baeaf821cb7?accountAddress=0x181a728f0d177700ca74c34bb7478189159d3384',
              bypass: false,
              height: 844.0,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ),
        ),
      ),
    );
  }
}
