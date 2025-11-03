import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; 
import 'firebase_options.dart'; 
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ecommerce_app/screens/auth_wrapper.dart';
void main() async {
  
  // 1. Preserve the splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // 2. Initialize Firebase (from Module 1)
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );
  
  // 3. Run the app (from Module 1)
  runApp(const MyApp());

  // 4. Remove the splash screen after app is ready
  FlutterNativeSplash.remove(); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 2. This removes the "Debug" banner
      debugShowCheckedModeBanner: false, 
      title: 'eCommerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // 3. A simple placeholder for our home screen
      home: const AuthWrapper(),
    );
  }
}