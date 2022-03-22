// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kino/Theme/app_colors.dart';
import 'package:kino/widgets/auth/auth_model.dart';
import 'package:kino/widgets/auth/auth_widget.dart';
import 'package:kino/widgets/main_screen/main_screen_widget.dart';
import 'package:kino/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) =>
            AuthProvider(model: AuthModel(), child: const AuthWidget()),
        '/main_screen': (context) => const MianScreenWidget(),
        '/main_screen/movie_details': (context) {
          final arguments = ModalRoute.of(context)!.settings.arguments;
          if (arguments is int) {
            return MovieDetailsWidget(movieId: arguments);
          } else {
            return MovieDetailsWidget(movieId: 0);
          }
        },
      },
      initialRoute: '/auth',
    );
  }
}

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  _MianScreenWidgetState createState() => _MianScreenWidgetState();
}

class _MianScreenWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Жми'),
        ),
      ),
    );
  }
}
