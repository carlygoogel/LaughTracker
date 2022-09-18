import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageWriteLaughA2 extends StatefulWidget {
  const PageWriteLaughA2({
    Key? key,
  }) : super(key: key);

  @override
  _StateWriteLaughA2 createState() => _StateWriteLaughA2();
}

class _StateWriteLaughA2 extends AuthState<PageWriteLaughA2>
    with SingleTickerProviderStateMixin {
  String taskName = '0';
  String taskDate = '0';

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
        'name': "WriteLaughA2",
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
          padding: const EdgeInsets.only(
            left: 24,
          ),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF).withOpacity(1),
          ),
          child: SafeArea(
            left: false,
            top: true,
            right: false,
            bottom: false,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context, rootNavigator: true).pop(null);
                  },
                  child: Icon(
                    MdiIcons.fromString('arrow-left'),
                    size: 32,
                    color: Color(0xFF000000).withOpacity(1),
                  ),
                ),
              ],
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
              color: Color(0xFFFFFFFF).withOpacity(1),
            ),
            child: TetaFutureBuilder<TetaUser>(future: Future.sync(() async {
              final user = await TetaCMS.instance.auth.user.get;

              return user;
            }), builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final user = snapshot.data as TetaUser?;
              final data = <String, dynamic>{
                'isLogged': user?.isLogged,
                'uid': user?.uid,
                'name': user?.name,
                'email': user?.email,
                'provider': user?.provider,
                'created_at': user?.createdAt,
              };
              datasets['Teta Auth User'] = [
                if (data != null) data,
              ];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    r'''Enter your funny memory''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: context.watch<ThemeCubit>().state
                            ? TetaThemes.lightTheme['Text / Secondary'] as Color
                            : TetaThemes.darkTheme['Text / Secondary'] as Color,
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      bottom: 8,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 24,
                        top: 8,
                        right: 24,
                        bottom: 8,
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F2).withOpacity(1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        border: null,
                      ),
                      child: TextField(
                        onChanged: (String value) async {
                          setState(() {
                            taskName = value;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF2F2F2).withOpacity(1),
                          counterStyle: TextStyle(
                            color: Color(0xFFF2F2F2).withOpacity(1),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          hintText: r'''enter funny memory''',
                          hintStyle: TextStyle(
                            color: Color(0xFF9A9A9A).withOpacity(1),
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
                        maxLines: 10,
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
                      bottom: 5,
                    ),
                    child: Text(
                      r'''Select date''',
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: TextButton(
                      onPressed: () async {
                        final datePicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2015, 8),
                          lastDate: DateTime(2101),
                        );
                        const initialTime = TimeOfDay(hour: 0, minute: 0);
                        final hourPicked = await showTimePicker(
                          context: context,
                          initialTime: initialTime,
                        );
                        if (datePicked != null && hourPicked != null) {
                          final dateToPass = DateTime(
                            datePicked.year,
                            datePicked.month,
                            datePicked.day,
                            hourPicked.hour,
                            hourPicked.minute,
                          );
                          taskDate = dateToPass.toIso8601String();
                        } else if (datePicked != null && hourPicked == null) {
                          taskDate = datePicked.toIso8601String();
                        } else {
                          taskDate = '';
                        }
                      },
                      child: Icon(
                        MdiIcons.fromString('calendar'),
                        size: 30,
                        color: Color(0xFF000000).withOpacity(1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await TetaCMS.instance.client.insertDocument(
                            '62ed7db6dde10ca5392b7606', <String, dynamic>{
                          'name': '''${taskName}''',
                          'created_at':
                              '${DateFormat('yyyy-MM-dd').format(DateTime.tryParse('''${taskDate}''') ?? DateTime.now())}',
                        });
                        Navigator.of(context, rootNavigator: true).pop(null);
                      },
                      child: Container(
                          width: double.maxFinite,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xFF3285FF).withOpacity(1),
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
                              '''Click here''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w400,
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
              );
            }),
          ),
        ],
      ),
    );
  }
}
