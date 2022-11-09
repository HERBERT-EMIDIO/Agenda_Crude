import 'package:agenda_crud_flutter/app/view/contact_form.dart';
import 'package:flutter/material.dart';
import 'view/contact_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        HOME: (context) => ContactList(),
        CONTACT_FORM: (context) => ContactForm()
      },
    );
  }
}
