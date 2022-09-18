import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomePage createState() => _StateHomePage();
}

class _StateHomePage extends AuthState<PageHomePage>
    with SingleTickerProviderStateMixin {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "HomePage",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withOpacity(1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 90,
                  ),
                  child: Text(
                    r'''Remember the''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF000000).withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    r'''Good Times''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF000000).withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        MdiIcons.fromString('square-rounded'),
                        size: 24,
                        color: Color(0xFF000000).withOpacity(1),
                      ),
                      Icon(
                        MdiIcons.fromString('checkbox-blank-circle'),
                        size: 24,
                        color: Color(0xFF000000).withOpacity(1),
                      ),
                      Icon(
                        MdiIcons.fromString('triangle'),
                        size: 24,
                        color: Color(0xFF000000).withOpacity(1),
                      ),
                      Icon(
                        MdiIcons.fromString('arrow-u-right-bottom-bold'),
                        size: 24,
                        color: Color(0xFF000000).withOpacity(1),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 10,
                    bottom: 50,
                  ),
                  child: Text(
                    r'''Lets focus on the positive''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF000000).withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: SizedBox(
                    width: 350,
                    height: 500,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 2,
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        childAspectRatio: 1,
                      ),
                      shrinkWrap: true,
                      primary: true,
                      children: [
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFBA).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageWriteLaughA2(),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 10,
                                  ),
                                  child: Text(
                                    r'''Write laughs''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    top: 25,
                                  ),
                                  child: Opacity(
                                    opacity: 1,
                                    child: Icon(
                                      MdiIcons.fromString('square-rounded'),
                                      size: 100,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFBAFFC9).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageTrackLaugh(),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 10,
                                  ),
                                  child: Text(
                                    r'''Track laughs''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    top: 25,
                                  ),
                                  child: Opacity(
                                    opacity: 1,
                                    child: Icon(
                                      MdiIcons.fromString(
                                          'checkbox-blank-circle'),
                                      size: 100,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFB3BA).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageMakeLaughs(),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 10,
                                  ),
                                  child: Text(
                                    r'''Make laughs''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    top: 25,
                                  ),
                                  child: Opacity(
                                    opacity: 1,
                                    child: Icon(
                                      MdiIcons.fromString('triangle'),
                                      size: 100,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFBAE1FF).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 10,
                                  ),
                                  child: Text(
                                    r'''Share laughs''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                    top: 25,
                                  ),
                                  child: Opacity(
                                    opacity: 1,
                                    child: Icon(
                                      MdiIcons.fromString(
                                          'arrow-u-right-bottom-bold'),
                                      size: 100,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
