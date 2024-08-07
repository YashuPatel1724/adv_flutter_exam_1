import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/jokes_provider.dart';

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
      body: ListView.builder(itemBuilder: (context, index) {
        final jok = jokesProviderTrue.jokes[index].split('-').sublist(0,1).join('-');
        final pun = jokesProviderTrue.jokes[index].split('-').sublist(0,1).join('-');
        final id = jokesProviderTrue.jokes[index].split('-').sublist(0,1).join('-');
        return Card(
          color: Colors.teal,
          child: ListTile(
            leading: Text('${index+1}',style: TextStyle(color: Colors.white),),
            title: Text('${jok}',style: TextStyle(color: Colors.white),),
            subtitle: Text('${pun}',style: TextStyle(color: Colors.white70),),
          ),
        );
      },itemCount: jokesProviderTrue.jokes.length,)
    );
  }
}
