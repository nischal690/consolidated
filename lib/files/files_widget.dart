import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FilesWidget extends StatefulWidget {
  const FilesWidget({Key? key}) : super(key: key);

  @override
  _FilesWidgetState createState() => _FilesWidgetState();
}

class _FilesWidgetState extends State<FilesWidget> {
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
                  alignment: AlignmentDirectional(0, 1),
                  child: GradientText(
                    'Files Manager',
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
                Align(
                  alignment: AlignmentDirectional(-0.9, 0.75),
                  child: InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 24,
                    ),
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF6B4EFF),
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).gray600,
                      labelStyle: FlutterFlowTheme.of(context).subtitle1,
                      indicatorColor: FlutterFlowTheme.of(context).black600,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(
                          text: 'Audios',
                        ),
                        Tab(
                          text: 'Videos',
                        ),
                        Tab(
                          text: 'Sketch',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                FlutterFlowAudioPlayer(
                                  audio: Audio.network(
                                    'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                                    metas: Metas(
                                      id: 'sample3.mp3-p9rqmgxj',
                                    ),
                                  ),
                                  titleTextStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                  playbackDurationTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF9D9D9D),
                                            fontSize: 12,
                                          ),
                                  fillColor: Color(0xFFEEEEEE),
                                  playbackButtonColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF57636C),
                                  elevation: 4,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                FlutterFlowVideoPlayer(
                                  path:
                                      'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                                  videoType: VideoType.network,
                                  autoPlay: false,
                                  looping: true,
                                  showControls: true,
                                  allowFullScreen: true,
                                  allowPlaybackSpeedMenu: false,
                                ),
                              ],
                            ),
                          ),
                          GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.network(
                                                'https://picsum.photos/seed/337/600',
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag',
                                        transitionOnUserGestures: true,
                                        child: Image.network(
                                          'https://picsum.photos/seed/337/600',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
