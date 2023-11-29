import 'package:firebase_auth/firebase_auth.dart';
import 'package:git/pages/login_page.dart';
import 'package:git/pages/register_form.dart';
import 'package:git/pages/home_page.dart';

var routes = {
  '/login': (context) => (FirebaseAuth.instance.currentUser != null)? const HomePage(): const LoginPage(),
  '/register': (context) => const RegisterPage(),
  '/home': (context) => const HomePage(),
};