import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:register_and_login/app_router.dart';
import 'package:register_and_login/shared/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const LoginRegister());
}

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Login Example',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
