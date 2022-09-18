import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart' hide TextDirection;

class PageTrackLaugh extends StatefulWidget {
  const PageTrackLaugh({
    Key? key,
  }) : super(key: key);

  @override
  _StateTrackLaugh createState() => _StateTrackLaugh();
}

class _StateTrackLaugh extends AuthState<PageTrackLaugh>
    with SingleTickerProviderStateMixin {
  String state1 = '0';

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
        'name': "TrackLaugh",
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
              color: Color(0xFFFFFFFF).withOpacity(1),
            ),
            child: Stack(
              children: [
                SafeArea(
                  left: false,
                  top: true,
                  right: false,
                  bottom: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TetaFutureBuilder<TetaUser>(future: Future.sync(() async {
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
                        return TetaStreamBuilder(
                            stream: TetaCMS.instance.realtime.streamCollection(
                              '''62ed7db6dde10ca5392b7606''',
                              filters: [
                                Filter('''''',
                                    '''${this.datasets['Teta Auth User']?[0]?['uid']?.toString() ?? ''}''')
                              ],
                            ),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              final list = snapshot.data as List<dynamic>?;
                              datasets['Cms stream'] =
                                  list ?? const <dynamic>[];

                              return Padding(
                                padding: const EdgeInsets.only(
                                  top: 300,
                                ),
                                child: SizedBox(
                                  width: double.maxFinite,
                                  height: 380,
                                  child: NotificationListener<
                                      ScrollEndNotification>(
                                    onNotification: (final scrollEnd) {
                                      final metrics = scrollEnd.metrics;
                                      if (metrics.atEdge) {
                                        final isTop = metrics.pixels == 0;
                                        if (isTop) {
                                        } else {}
                                      }
                                      return true;
                                    },
                                    child: ListView.builder(
                                      reverse: false,
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount:
                                          this.datasets['Cms stream'].length > 0
                                              ? this
                                                  .datasets['Cms stream']
                                                  .length
                                              : 0,
                                      itemBuilder: (context, index) {
                                        return PageTask(
                                          name: datasets['Cms stream']?[index]
                                                  ?['name'] ??
                                              '',
                                          id: datasets['Cms stream']?[index]
                                                  ?['_name'] ??
                                              '',
                                          date: datasets['Cms stream']?[index]
                                                  ?['created_at'] ??
                                              '',
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            });
                      }),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 50,
                        right: 10,
                      ),
                      child: SizedBox(
                        height: 300,
                        child: TetaFutureBuilder(
                            future: TetaCMS.instance.client.getCollection(
                              '''62ed7db6dde10ca5392b7606''',
                              filters: [
                                Filter(
                                    '${DateFormat('yyyy-MM-dd').format(DateTime.tryParse('''''') ?? DateTime.now())}',
                                    '${DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.tryParse('''''') ?? DateTime.now())}')
                              ],
                              page:
                                  '${DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.tryParse() ?? DateTime.now())}',
                            ),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              final list = snapshot.data as List<dynamic>?;
                              datasets['Cms fetch'] = list ?? const <dynamic>[];

                              return Builder(
                                builder: (context) {
                                  return PagedVerticalCalendar(
                                    addAutomaticKeepAlives: true,
                                    onDayPressed: (date) async {
                                      index = (datasets['Cms stream']
                                              as List<dynamic>)
                                          .indexOf(datasets['Cms stream']
                                              .firstWhere((element) =>
                                                  element['created_at']
                                                      .toString()
                                                      .substring(0, 10) ==
                                                  date
                                                      .toString()
                                                      .substring(0, 10)));
                                    },
                                    dayBuilder: (context, date) {
                                      final dataset = datasets['Cms stream'];
                                      final element = (dataset as List<dynamic>)
                                          .firstWhereOrNull(
                                        (e) {
                                          final d = DateTime.tryParse(
                                              e['created_at']);
                                          return d?.year == date.year &&
                                              d?.month == date.month &&
                                              d?.day == date.day;
                                        },
                                      );
                                      return Container(
                                        margin: EdgeInsets.zero,
                                        padding: EdgeInsets.zero,
                                        decoration: element != null
                                            ? BoxDecoration(
                                                color: Color(0xFFF6E6AB)
                                                    .withOpacity(1),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(50),
                                                  topRight: Radius.circular(50),
                                                  bottomRight:
                                                      Radius.circular(50),
                                                  bottomLeft:
                                                      Radius.circular(50),
                                                ),
                                                border: null,
                                              )
                                            : BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(50),
                                                  topRight: Radius.circular(50),
                                                  bottomRight:
                                                      Radius.circular(50),
                                                  bottomLeft:
                                                      Radius.circular(50),
                                                ),
                                                border: null,
                                              ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${date.day}',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    monthBuilder: (context, month, year) {
                                      final monthValue = DateFormat.MMMM()
                                          .format(DateTime(0, month));
                                      return SizedBox(
                                        width: double.maxFinite,
                                        child: Text(
                                          '$monthValue',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFF000000)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontStyle: FontStyle.normal,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          textAlign: TextAlign.left,
                                          textDirection: TextDirection.ltr,
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            }),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageWriteLaughA2(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 32,
                              bottom: 56,
                            ),
                            padding: const EdgeInsets.only(
                              left: 23,
                              top: 23,
                              right: 23,
                              bottom: 23,
                            ),
                            decoration: BoxDecoration(
                              color: context.watch<ThemeCubit>().state
                                  ? TetaThemes.lightTheme['Success'] as Color
                                  : TetaThemes.darkTheme['Success'] as Color,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: Icon(
                              MdiIcons.fromString('plus'),
                              size: 32,
                              color: Color(0xFFFFFFFF).withOpacity(1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
