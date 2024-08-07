import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/jokes_provider.dart';

ListView favourite(JokesProvider jokesProviderTrue) {
  return ListView.builder(itemBuilder: (context, index) {
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
  },itemCount: jokesProviderTrue.jokes.length,);
}