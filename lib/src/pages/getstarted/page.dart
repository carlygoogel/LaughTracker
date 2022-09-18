import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';

class PageGetStarted extends StatefulWidget {
  const PageGetStarted({
    Key? key,
  }) : super(key: key);

  @override
  _StateGetStarted createState() => _StateGetStarted();
}

class _StateGetStarted extends AuthState<PageGetStarted>
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
        'name': "GetStarted",
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
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: 860,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 210,
                      ),
                      child: Text(
                        r'''Record your''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
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
                        r'''funny memories''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
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
                        top: 10,
                      ),
                      child: Text(
                        r'''Remember the happiest''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
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
                        r'''moments''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 50,
                          ),
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color(0xFFF7E809).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                              bottomRight: Radius.circular(70),
                              bottomLeft: Radius.circular(70),
                            ),
                          ),
                          child: const SizedBox(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 80,
                            top: 90,
                          ),
                          child: TextButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageSignIn(),
                                ),
                              );
                            },
                            child: Text(
                              r'''Get Started''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF000000).withOpacity(1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
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
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFF0FF73).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 220,
                      ),
                      child: Text(
                        r'''Joy''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
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
              Container(
                width: double.maxFinite,
                height: 230,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F946).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 150,
                      ),
                      child: Text(
                        r'''Positive Mind''',
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
              Container(
                width: double.maxFinite,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFF7E809).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 4,
                        ),
                        child: Text(
                          r'''LaughTracker''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFF12D3A).withOpacity(1),
                              fontWeight: FontWeight.w700,
                              fontSize: 35,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        r'''LaughTracker''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF000000).withOpacity(1),
                            fontWeight: FontWeight.w700,
                            fontSize: 35,
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
              Container(
                margin: const EdgeInsets.only(
                  left: 220,
                  top: 700,
                  right: 90,
                  bottom: 20,
                ),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF0FF73).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Icon(
                  MdiIcons.fromString('emoticon-happy-outline'),
                  size: 70,
                  color: Color(0xFF000000).withOpacity(1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 305,
                  top: 690,
                  right: 27,
                ),
                width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F946).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Icon(
                  MdiIcons.fromString('emoticon-happy-outline'),
                  size: 40,
                  color: Color(0xFF000000).withOpacity(1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 300,
                  top: 745,
                  right: 18,
                ),
                width: double.maxFinite,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFFF7E809).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Icon(
                  MdiIcons.fromString('emoticon-happy-outline'),
                  size: 60,
                  color: Color(0xFF000000).withOpacity(1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
