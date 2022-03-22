// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kino/elements/radial_percent_widget.dart';
import 'package:kino/resources/resources.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        _SummeryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        SizedBox(
          height: 30,
        ),
        PeopleWidgets(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Text _DescriptionWidget() {
    return Text(
      'Мистерио удаётся выяснить истинную личность Человека-паука. С этого момента жизнь Питера Паркера становится невыносимой. Если ранее он мог успешно переключаться между своими амплуа, то сейчас это сделать невозможно. Переворачивается с ног на голову не только жизнь Человека-пауку, но и репутация. Понимая, что так жить невозможно, главный герой фильма «Человек-паук: Нет пути домой» принимает решение обратиться за помощью к своему давнему знакомому Стивену Стрэнджу. Питер Паркер надеется, что с помощью магии он сможет восстановить его анонимность. Стрэндж соглашается помочь.',
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text _OverviewWidget() {
    return Text(
      'Обзор',
      style: TextStyle(
        color: Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            AppImages.topHeader,
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(
            image: AssetImage(
              AppImages.topHeaderSubImage,
            ),
          ),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      textAlign: TextAlign.center,
      text: TextSpan(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextSpan(
            text: 'Человек-паук: Нет пути домой ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' (2021)',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 45,
                  height: 45,
                  child: RadialPercentWidget(
                    child: Text('73'),
                    percent: 0.73,
                    fillColor: Color.fromARGB(255, 10, 23, 25),
                    lineColor: Color.fromARGB(255, 37, 203, 103),
                    freeColor: Color.fromARGB(255, 25, 54, 31),
                    lineWidth: 4,
                  ),
                ),
                SizedBox(
                  width: 10,
                  // height: 5,
                ),
                Text('User Score'),
              ],
            )),
        Container(
          height: 15,
          width: 1,
          color: Colors.grey,
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.play_arrow),
                Text('Play Trailer'),
              ],
            )),
      ],
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Text(
          'PG-13 15/12/2021 (RU) боевик, приключения, фантастика 2h 28m',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 3,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class PeopleWidgets extends StatelessWidget {
  const PeopleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
      color: Colors.white,
      fontSize: 21,
      fontWeight: FontWeight.w400,
    );
    final jobTitleStyle = TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    );

    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Steve Ditko',
                  style: nameStyle,
                ),
                Text(
                  'Characters',
                  style: jobTitleStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Steve Ditko',
                  style: nameStyle,
                ),
                Text(
                  'Characters',
                  style: jobTitleStyle,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Steve Ditko',
                  style: nameStyle,
                ),
                Text(
                  'Characters',
                  style: jobTitleStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Steve Ditko',
                  style: nameStyle,
                ),
                Text(
                  'Characters',
                  style: jobTitleStyle,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
