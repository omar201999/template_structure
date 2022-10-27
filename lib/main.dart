import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_structure/business_logic/bloc_observer.dart';
import 'package:template_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:template_structure/data/local/cache_helper.dart';
import 'package:template_structure/presentation/styles/themes.dart';


import 'presentation/router/app_router.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  bool? isDark = CacheHelper.getDataFromSharedPreference(key: 'isDark')??false;
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    appRouter: AppRouter(),
    isDark: isDark,

  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final bool? isDark;


  const MyApp({required this.appRouter, Key? key,required this.isDark,}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return MultiBlocProvider(
          providers:
          [
            BlocProvider(create: (context) =>GlobalCubit()..changeAppMode(fromCache: isDark)),
          ],
          child: BlocConsumer<GlobalCubit, GlobalState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              return MaterialApp(
                onGenerateRoute: appRouter.onGenerateRoute,
                debugShowCheckedModeBanner: false,
                theme: lightTheme,
                themeMode: appMode,
                darkTheme: darkTheme,
              );
            },
          ),
        );
      },
    );
  }
}

