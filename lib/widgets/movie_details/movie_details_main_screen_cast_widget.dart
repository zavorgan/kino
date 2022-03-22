// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kino/resources/resources.dart';

class MovieDetailsMainScreenCastWidget extends StatelessWidget {
  const MovieDetailsMainScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'В главных ролях',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 300,
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 20,
                itemExtent: 120,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DecoratedBox(
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
                        ],
                      ),
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Image(
                              image: AssetImage(
                                AppImages.actor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: pref
                                // er_const_literals_to_create_immutables
                                children: [
                                  Text('Tom Holland',
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Peter Parker / Spider-Man',
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '8 episodes',
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextButton(
              onPressed: () {},
              child: Text('Полный актёрский и съёмочный состав',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            ),
          )
        ],
      ),
    );
  }
}
