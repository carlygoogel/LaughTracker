import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

class PageSignIn extends StatefulWidget {
  const PageSignIn({
    Key? key,
  }) : super(key: key);

  @override
  _StateSignIn createState() => _StateSignIn();
}

class _StateSignIn extends AuthState<PageSignIn>
    with SingleTickerProviderStateMixin {
  String email = '0';
  String password = '0';
  String status = '0';

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
        'name': "SignIn",
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
                height: 850,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 180,
                      ),
                      child: Text(
                        r'''Email''',
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
                    Opacity(
                      opacity: 1,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          top: 8,
                          right: 25,
                          bottom: 30,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          border: null,
                        ),
                        child: TextField(
                          onChanged: (String value) async {
                            setState(() {
                              email = value;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF).withOpacity(1),
                            counterStyle: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            hintText: r'''Enter email''',
                            hintStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                            ),
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Text(
                        r'''Password''',
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
                    Opacity(
                      opacity: 1,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          top: 8,
                          right: 25,
                          bottom: 40,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          border: null,
                        ),
                        child: TextField(
                          onChanged: (String value) async {
                            setState(() {
                              password = value;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF).withOpacity(1),
                            counterStyle: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            hintText: r'''Enter password''',
                            hintStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                            ),
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: true,
                          showCursor: true,
                          autocorrect: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () async {
                            if (email != null && password != null) {
                              setState(() {
                                status = 'Loading';
                              });
                              final response = await Supabase
                                  .instance.client.auth
                                  .signIn(email: email, password: password);
                              if (response.error != null ||
                                  response.user == null) {
                                setState(() {
                                  status = 'Failed';
                                });
                              } else {
                                setState(() {
                                  status = 'Success';
                                });
                                await Navigator.push<void>(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageHomePage(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                              width: 250,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFFF7E809).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: null,
                              ),
                              child: Center(
                                child: Text(
                                  '''Sign In''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFF000000).withOpacity(1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 18,
                          ),
                          child: Builder(builder: (context) {
                            var val = false;
                            return StatefulBuilder(
                              builder: (final context, final localSetState) {
                                return Checkbox(
                                  value: val,
                                  onChanged: (final bool? b) {
                                    localSetState(() {
                                      val = b!;
                                    });
                                  },
                                );
                              },
                            );
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            right: 53,
                          ),
                          child: Text(
                            r'''Remember me''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFBBBBBB).withOpacity(1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
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
                            top: 3,
                          ),
                          child: TextButton(
                            onPressed: () async {},
                            child: Text(
                              r'''Forgot Password?''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFBBBBBB).withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageSignUp(),
                            ),
                          );
                        },
                        child: Container(
                            width: 70,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              border: null,
                            ),
                            child: Center(
                              child: Text(
                                '''Sign Up''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF62FFFF).withOpacity(1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 300,
                  top: 750,
                ),
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0FF73).withOpacity(1),
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
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: double.maxFinite,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F946).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 295,
                    top: 680,
                    right: 20,
                  ),
                  width: double.maxFinite,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F946).withOpacity(1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: const SizedBox(),
                ),
              ),
              const SizedBox(),
              Container(
                margin: const EdgeInsets.only(
                  left: 208,
                  top: 700,
                  right: 90,
                ),
                width: double.maxFinite,
                height: 75,
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
                  size: 80,
                  color: Color(0xFF000000).withOpacity(1),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 295,
                  top: 680,
                  right: 20,
                ),
                width: double.maxFinite,
                height: 60,
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
                  size: 60,
                  color: Color(0xFF000000).withOpacity(1),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF0FF73).withOpacity(1),
                ),
                child: const SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
