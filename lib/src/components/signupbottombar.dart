import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';

class PageSignUpBottomBar extends StatefulWidget {
  const PageSignUpBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _StateSignUpBottomBar createState() => _StateSignUpBottomBar();
}

class _StateSignUpBottomBar extends AuthState<PageSignUpBottomBar>
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
        'name': "SignUpBottomBar",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 4,
              top: 10,
              bottom: 8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                  ),
                  child: Text(
                    r'''Select Account''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF000000).withOpacity(1),
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
              bottom: 20,
            ),
            child: SizedBox(
              width: 330,
              height: 50,
              child: AppleAuthButton(
                onPressed: () async {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
              bottom: 10,
            ),
            child: SizedBox(
              width: 330,
              height: 50,
              child: FacebookAuthButton(
                onPressed: () async {},
                onLongPress: () async {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
              bottom: 10,
            ),
            child: SizedBox(
              width: 330,
              height: 50,
              child: GoogleAuthButton(
                onPressed: () async {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: SizedBox(
              width: 330,
              height: 50,
              child: TwitterAuthButton(
                onPressed: () async {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
