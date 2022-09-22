// routes name
import 'package:flutter/material.dart';
import 'package:udemy_clone/presentation/pages/learning_page.dart';
import 'package:udemy_clone/presentation/pages/login_page.dart';
import 'package:udemy_clone/presentation/pages/search_page.dart';
import 'package:udemy_clone/presentation/pages/splash_page.dart';
import 'package:udemy_clone/presentation/pages/wishlist_page.dart';

import '../../presentation/pages/account_page.dart';
import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/signin_page.dart';

const String splashPage = "splash";
const String loginPage = "login";
const String signinPage = "signin";
const String homePage = "home";
const String searchPage = "search";
const String learningPage = "learning";
const String wishlistPage = "wishlist";
const String accountPage = "account";

// controll our page flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    case loginPage:
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    case signinPage:
      return MaterialPageRoute(
        builder: (context) => const SigninPage(),
      );
    case homePage:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case searchPage:
      return MaterialPageRoute(
        builder: (context) => const SearchPage(),
      );
    case learningPage:
      return MaterialPageRoute(
        builder: (context) => const LearningPage(),
      );
    case wishlistPage:
      return MaterialPageRoute(
        builder: (context) => const WishListPage(),
      );
    case accountPage:
      return MaterialPageRoute(
        builder: (context) => const AccountPage(),
      );
    default:
      throw ("This route name doesn't exist");
  }
}
