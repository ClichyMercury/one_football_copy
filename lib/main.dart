import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:one_football_copy/constant/palette.dart';
import 'package:one_football_copy/views/before/chooseFavoriteClub.dart';
import 'package:one_football_copy/views/before/chooseNationalTeam.dart';
import 'package:one_football_copy/views/before/weLovePrivacy.dart';
import 'package:one_football_copy/views/before/youMightLike.dart';
import 'package:one_football_copy/views/connection/loginWithEmail/createAccount.dart';
import 'package:one_football_copy/views/connection/login.dart';
import 'package:one_football_copy/views/connection/loginWithEmail/sign_in.dart';
import 'package:one_football_copy/views/connection/loginWithEmail/sign_up.dart';
import 'package:one_football_copy/views/root.dart';
import 'package:one_football_copy/views/root/TV.dart';
import 'package:one_football_copy/views/root/homepage/homepage.dart';
import 'package:one_football_copy/views/root/homepage/views/articleViews.dart';
import 'package:one_football_copy/views/root/homepage/views/commentField.dart';
import 'package:one_football_copy/views/root/homepage/views/commentView.dart';
import 'package:one_football_copy/views/root/homepage/views/searchView.dart';
import 'package:one_football_copy/views/root/homepage/views/transferts.dart';
import 'package:one_football_copy/views/root/matches.dart';
import 'package:one_football_copy/views/root/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Football',
      theme: ThemeData(
        fontFamily: 'Mollen',
        primaryColor: Palette.greenYellowToWhite,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Palette.greenYellowToWhite),
        useMaterial3: true,
      ),
      initialBinding: InitialBinding(), // Si vous utilisez InitialBinding
      initialRoute: '/root',
      getPages: [
        // Selection des équipes
        GetPage(name: '/privacy_policy', page: () => const WeLovePrivacy()),
        GetPage(name: '/favorite_team', page: () => const ChooseFavoriteTeam()),
        GetPage(name: '/national_team', page: () => const ChooseNationalTeam()),
        GetPage(
            name: '/might_like_team', page: () => const ChooseMightLikeTeam()),
        //Connexion
        GetPage(name: '/login', page: () => const Connextion()),
        GetPage(name: '/sign_up', page: () => const SignUp()),
        GetPage(name: '/create_account', page: () => const CreateAccount()),
        GetPage(name: '/sign_in', page: () => const SignIn()),
        // Pages principales
        GetPage(name: '/root', page: () => const Root()),
        GetPage(name: '/homepage', page: () => const Homepage()),
        GetPage(name: "/Matches", page: () => const Matches()),
        GetPage(name: "/TV", page: () => const TV()),
        GetPage(name: "/Profile", page: () => const Profile()),
        // Pages depuis homepage
        GetPage(name: "/search", page: () => const SearchView()),
        GetPage(name: "/transfert", page: () => const TransfertView()),
        GetPage(name: "/article_view", page: () => const ArticleView()),
        GetPage(name: "/comment_view", page: () => const CommentView()),
        GetPage(
          name: '/comment_field',
          page: () => const CommentField(),
          transition: Transition.downToUp, // Transition de bas en haut
          transitionDuration:
              const Duration(milliseconds: 200), // Durée de la transition
        ),
      ],
    );
  }
}

class InitialBinding implements Bindings {
  @override
  void dependencies() {}
}
