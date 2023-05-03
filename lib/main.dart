import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone_ui/src/ui/routes/app_pages.dart';
import 'package:whatsapp_clone_ui/src/ui/routes/app_routes.dart';
import 'package:whatsapp_clone_ui/src/utils/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppState());
} 

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Injector.dependencies,
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
      ),
      darkTheme: ThemeData(
        // useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppPages.routes,
    );
  }
}
