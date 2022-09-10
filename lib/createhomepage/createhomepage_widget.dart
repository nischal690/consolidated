import '../audio/audio_widget.dart';
import '../files/files_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../notes/notes_widget.dart';
import '../setting/setting_widget.dart';
import '../sketch/sketch_widget.dart';
import '../video/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreatehomepageWidget extends StatefulWidget {
  const CreatehomepageWidget({Key? key}) : super(key: key);

  @override
  _CreatehomepageWidgetState createState() => _CreatehomepageWidgetState();
}

class _CreatehomepageWidgetState extends State<CreatehomepageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          automaticallyImplyLeading: false,
          flexibleSpace: Align(
            alignment: AlignmentDirectional(-1, 1),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.75, 1),
                  child: GradientText(
                    'Create',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primaryColor,
                      FlutterFlowTheme.of(context).secondaryColor
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.75, -0.8),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AudioWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.421,
                    height: MediaQuery.of(context).size.height * 0.195,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0x33000000),
                          offset: Offset(5, 4),
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Color(0x7F000000),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Image.asset(
                            'assets/images/mic2.png',
                            height: 115,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.75),
                          child: Text(
                            'Audio',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, -0.8),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.421,
                    height: MediaQuery.of(context).size.height * 0.195,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0x33000000),
                          offset: Offset(5, 4),
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Color(0x7F000000),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Image.asset(
                            'assets/images/cam.jpg',
                            width: 100,
                            height: 115,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.75),
                          child: Text(
                            'Video',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, -0.1),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SketchWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.421,
                    height: MediaQuery.of(context).size.height * 0.195,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0x33000000),
                          offset: Offset(5, 4),
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Color(0x7F000000),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Image.asset(
                            'assets/images/paint-brush-front-color.png',
                            height: 115,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.75),
                          child: Text(
                            'sketch',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.75, -0.1),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotesWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.421,
                    height: MediaQuery.of(context).size.height * 0.195,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0x33000000),
                          offset: Offset(5, 4),
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Color(0x7F000000),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Image.asset(
                            'assets/images/pencil-front-color.png',
                            height: 115,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.75),
                          child: Text(
                            'Notes',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.home_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CreatehomepageWidget(),
                                  ),
                                );
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.file_copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: FilesWidget(),
                                  ),
                                );
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.settings,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SettingWidget(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.64, 0.62),
                        child: Text(
                          'Home',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.01, 0.74),
                        child: Text(
                          'Files',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.67, 0.74),
                        child: Text(
                          'Setting',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
