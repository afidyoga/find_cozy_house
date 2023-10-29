import 'package:find_cozy_house/theme.dart';
import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Ini Halaman E-mail',
            style: blackTextStyle.copyWith(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
