import 'dart:io';
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

import '../../Modal/jokes_modal.dart';
import '../../provider/jokes_provider.dart';
import '../../utils/global.dart';

RepaintBoundary MianContainer(
    JokesProvider jokesProviderFalse, JokesModal? joke, BuildContext context) {
  return RepaintBoundary(
    key: imgkey,
    child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    jokesProviderFalse.referesh();
                  },
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Text(
              textAlign: TextAlign.center,
              '${joke!.setup}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Punchline : ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    TextSpan(
                      text: '${joke.punchline}',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      fav = !fav;
                      jokesProviderFalse.addToFavourite(
                          joke.setup, joke.punchline, joke.id.toString());
                      Navigator.of(context).pushNamed('/fav');
                    },
                    icon: (fav == true) ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ) : Icon(Icons.favorite,color: Colors.white,)),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
