import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:adv_flutter_exam_1/Modal/jokes_modal.dart';
import 'package:adv_flutter_exam_1/provider/jokes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_extend/share_extend.dart';

import '../../utils/global.dart';
import '../componets/bgImage.dart';
import '../componets/mainContaine.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    JokesProvider jokesProviderFalse =
        Provider.of<JokesProvider>(context, listen: false);
    JokesProvider jokesProviderTrue =
        Provider.of<JokesProvider>(context, listen: true);
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<JokesProvider>(context, listen: false).fromMap(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            JokesModal? joke = snapshot.data;
            return Stack(
              children: [
                backgroungImage(),
                MianContainer(jokesProviderFalse, joke, context),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

}
