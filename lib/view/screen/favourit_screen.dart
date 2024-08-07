import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/jokes_provider.dart';
import '../componets/favourite_page.dart';

class FavouritScreen extends StatelessWidget {
  const FavouritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    JokesProvider jokesProviderFalse =
        Provider.of<JokesProvider>(context, listen: false);
    JokesProvider jokesProviderTrue =
        Provider.of<JokesProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: favourite(jokesProviderTrue)
    );
  }


}
