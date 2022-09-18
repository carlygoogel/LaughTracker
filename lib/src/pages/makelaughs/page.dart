import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PageMakeLaughs extends StatefulWidget {
  const PageMakeLaughs({
    Key? key,
  }) : super(key: key);

  @override
  _StateMakeLaughs createState() => _StateMakeLaughs();
}

class _StateMakeLaughs extends AuthState<PageMakeLaughs>
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
        'name': "MakeLaughs",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          width: double.maxFinite,
          height: 75,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF).withOpacity(1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 300,
            ),
            child: Icon(
              MdiIcons.fromString('chevron-left'),
              size: 40,
              color: Color(0xFF000000).withOpacity(1),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF000000).withOpacity(1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 70,
                  ),
                  child: SizedBox(
                    width: 360,
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                color: Color(0xFFFBFF00).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(26),
                                  topRight: Radius.circular(26),
                                  bottomRight: Radius.circular(26),
                                  bottomLeft: Radius.circular(26),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.youtube.com/results?search_query=try+not+to+laugh''')) {
                                    await launchUrlString(
                                      '''https://www.youtube.com/results?search_query=try+not+to+laugh''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
                                },
                                child: Text(
                                  r'''Youtube Try 
Not To Laugh''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Color(0xFF00FF37).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.youtube.com/c/standup''')) {
                                    await launchUrlString(
                                      '''https://www.youtube.com/c/standup''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
                                },
                                child: Text(
                                  r'''Stand Up 
Comedy''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF0000).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.rd.com/list/bad-jokes-cant-help-laugh-at/''')) {
                                    await launchUrlString(
                                      '''https://www.rd.com/list/bad-jokes-cant-help-laugh-at/''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
                                },
                                child: Text(
                                  r'''Jokes''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 50,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Color(0xFF00C0FF).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.google.com/search?sxsrf=ALiCzsY7bvU5rjOvUQ4Mn6nHXOCmulai8Q:1661456261173&q=cute+animal+videos+youtube&tbm=vid&sa=X&ved=2ahUKEwio14by3uL5AhUCM1kFHWqUBIcQ0pQJegQIDBAB&biw=1156&bih=726&dpr=2''')) {
                                    await launchUrlString(
                                      '''https://www.google.com/search?sxsrf=ALiCzsY7bvU5rjOvUQ4Mn6nHXOCmulai8Q:1661456261173&q=cute+animal+videos+youtube&tbm=vid&sa=X&ved=2ahUKEwio14by3uL5AhUCM1kFHWqUBIcQ0pQJegQIDBAB&biw=1156&bih=726&dpr=2''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
                                },
                                child: Text(
                                  r'''Cute Animal
Videos''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          width: double.maxFinite,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFFB19F6).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              if (await canLaunchUrlString(
                                  '''https://www.google.com/search?q=funny+stories&biw=1156&bih=726&tbm=vid&sxsrf=ALiCzsZ4lp5h8W-bb5x6oNs4BJCWJr3cwQ%3A1661456266325&ei=is8HY9mYE8qh5NoPzLyZ6AQ&ved=0ahUKEwjZhcH03uL5AhXKEFkFHUxeBk0Q4dUDCA0&uact=5&oq=funny+stories&gs_lcp=Cg1nd3Mtd2l6LXZpZGVvEAMyCAgAEIAEELEDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgQIIxAnOgYIABAeEBY6CggAELEDEIMBEEM6BAgAEEM6CwgAEIAEELEDEIMBOggIABCxAxCDAToFCAAQkQI6BwgAELEDEEM6CAgAELEDEJECUNEGWMckYKcnaAJwAHgAgAFLiAH2BpIBAjE0mAEAoAEBwAEB&sclient=gws-wiz-video''')) {
                                await launchUrlString(
                                  '''https://www.google.com/search?q=funny+stories&biw=1156&bih=726&tbm=vid&sxsrf=ALiCzsZ4lp5h8W-bb5x6oNs4BJCWJr3cwQ%3A1661456266325&ei=is8HY9mYE8qh5NoPzLyZ6AQ&ved=0ahUKEwjZhcH03uL5AhXKEFkFHUxeBk0Q4dUDCA0&uact=5&oq=funny+stories&gs_lcp=Cg1nd3Mtd2l6LXZpZGVvEAMyCAgAEIAEELEDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgQIIxAnOgYIABAeEBY6CggAELEDEIMBEEM6BAgAEEM6CwgAEIAEELEDEIMBOggIABCxAxCDAToFCAAQkQI6BwgAELEDEEM6CAgAELEDEJECUNEGWMckYKcnaAJwAHgAgAFLiAH2BpIBAjE0mAEAoAEBwAEB&sclient=gws-wiz-video''',
                                  mode: LaunchMode.inAppWebView,
                                );
                              }
                            },
                            child: Text(
                              r'''Funny Stories''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 50,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
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
