  import 'package:myapp/src/teta_files/imports.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImNhcmx5Z29vZ2VsQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwcm9qZWN0cyI6WzE1MzMyNiwxMDM5MDAsMTUwMTkwLDEwNTc0N10sImltYWdlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUl0YnZtbldqUFNrbFBocGZIMXpzVUgzLVA3U2EtWmxfbDk4ZjNVMFpzazQ9czk2LWMiLCJuYW1lIjoiQ2FybHkgR29vZ2VsIiwiZW1pdHRlciI6IlRldGEtQXV0aCIsImlhdCI6MTY2MzUxNzE5OSwiZXhwIjo0ODE5Mjc3MTk5fQ.DHW2WwA1SitjD5atkZDDpxO0HTvAtJi8v-rDHM5ClHI',
      prjId: 105747,
    );
    
      Supabase.initialize(
    url: 'https://anhqhgxiycoxztdyvyqg.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFuaHFoZ3hpeWNveHp0ZHl2eXFnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjAwNzYwMDMsImV4cCI6MTk3NTY1MjAwM30.NG3KKrsEpx_RfZJMcT6k8zQBaBo5c11qGDVCRyZMaEI',
  );
  
    
    
    
    runApp(
      MyApp()
    );
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    void initState() {
      TranslatorGenerator.instance.init(
        mapLocales: [
          MapLocale('en', AppLocale.en),
        ],
        initLanguageCode: 'en',
      );
      TranslatorGenerator.instance.onTranslatedLanguage = _onTranslatedLanguage;
      super.initState();
    }

    void _onTranslatedLanguage(final Locale? locale) {
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => ThemeCubit(),
          ),
        ],
        child: Sizer(
          builder: (
            final context,
            final orientation,
            final deviceType,
          ) => MaterialApp(
            title: 'LaughTracker',
            supportedLocales: TranslatorGenerator.instance.supportedLocales,
            localizationsDelegates: TranslatorGenerator.instance.localizationsDelegates,
            home: SplashScreenView(
              navigateRoute: PageSignIn(
                key: ValueKey('PageSignIn English'),
              ),
              duration: 2200,
              imageSize: 80,
              imageSrc: 'assets/teta-app.png',
              text: '',
              textType: TextType.NormalText,
              textStyle: TextStyle(
                fontSize: 30.0,
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ), 
      );
    }
  }

  
  