// ignore_for_file: prefer_const_constructors

import 'package:agenda_crud_flutter/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});
  final lista = [
    {
      'nome': 'Herbert',
      'telefone': '(81)9999-8787',
      'avatar':
          'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561__340.png'
    },
    {
      'nome': 'Romoaldo',
      'telefone': '(81)9999-6767',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819__340.png'
    },
    {
      'nome': 'Juliana',
      'telefone': '(81)9999-5566',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366__340.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
              }),
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          var contato = lista[i];
          // ignore: unused_local_variable
          var avatar =
              CircleAvatar(backgroundImage: NetworkImage(contato['avatar']!));
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
