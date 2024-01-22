import 'package:amazone/constant/global_variables.dart';
import 'package:amazone/features/auth/service/auth_service.dart';
import 'package:amazone/features/home/screen_manager.dart';

import 'package:amazone/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/user_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    // authService.getUserData(context: context);
  }

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'AmaZone',
    //     theme: ThemeData(
    //       scaffoldBackgroundColor: GlobalVariables.backgroundColor,
    //       colorScheme:
    //           const ColorScheme.light(primary: GlobalVariables.secondaryColor),
    //       appBarTheme: const AppBarTheme(
    //         elevation: 0,
    //         iconTheme: IconThemeData(color: Colors.black),
    //       ),
    //     ),
    //     onGenerateRoute: (settings) => generateRoute(settings),
    //     home: Provider.of<UserProvider>(context).user.token.isNotEmpty
    //         ? const BottomBar()
    //         : const AuthScreen(),
    //   );
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AmaZone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const ScreenManager(),
    );
  }
}
