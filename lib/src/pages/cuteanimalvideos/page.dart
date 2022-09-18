import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageCuteAnimalVideos extends StatefulWidget {
  const PageCuteAnimalVideos({
    Key? key,
  }) : super(key: key);

  @override
  _StateCuteAnimalVideos createState() => _StateCuteAnimalVideos();
}

class _StateCuteAnimalVideos extends AuthState<PageCuteAnimalVideos>
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
        'name': "CuteAnimalVideos",
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
              color: Color(0xFF000000).withOpacity(1),
            ),
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                YoutubePlayerIFrame(
                  controller: YoutubePlayerController(
                    initialVideoId: r'''z1auge3rihc''',
                    params: YoutubePlayerParams(
                      startAt: Duration(seconds: 0),
                      showControls: false,
                      showFullscreenButton: true,
                      loop: false,
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
