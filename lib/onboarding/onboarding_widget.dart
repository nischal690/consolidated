import '../createaccount/createaccount_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 1.12),
                child: Image.asset(
                  'assets/images/Background.png',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, -0.9),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'con',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Inter',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'solidated',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Inter',
                            color: Color(0xFF6B4EFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.25),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Image.asset(
                                    'assets/images/text.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.38,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.75),
                                  child: Text(
                                    'Create Text Notes',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1, -1),
                                  child: Image.asset(
                                    'assets/images/sketch.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.38,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.75),
                                  child: Text(
                                    'Draw Your Imagination in',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.9),
                                  child: Text(
                                    'Sketch',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Image.asset(
                                    'assets/images/video.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.38,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.75),
                                  child: Text(
                                    'Create Video Recording',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Image.asset(
                                    'assets/images/mic.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.38,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.75),
                                  child: Text(
                                    'Create Audio Recording',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 4,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.7),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateaccountWidget(),
                      ),
                    );
                  },
                  text: 'Create Account',
                  options: FFButtonOptions(
                    width: 182,
                    height: 48,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(48),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.85),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Inter',
                              color: Color(0xFF6B4EFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
