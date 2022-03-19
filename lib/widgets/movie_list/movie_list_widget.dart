// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../resources/resources.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: 'Человек-паук: Нет пути домой',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '123',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '234',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '345',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '456',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '567',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '678',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '789',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '890',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '234',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
    Movie(
        imageName: AppImages.moviePlaceholder,
        title: '345',
        time: '15 декабря 2021',
        description:
            'Мистерио удаётся выяснить истинную личность Человека-паука.'),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filteredMovies = _movies;

    _searchController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: Offset(1, 2),
                            ),
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Image(
                            image: AssetImage(movie.imageName),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  movie.time,
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          print('11');
                        },
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
