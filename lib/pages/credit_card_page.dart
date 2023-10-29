import 'package:find_cozy_house/theme.dart';
import 'package:flutter/material.dart';

class CreditCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Ini Halaman Card',
            style: blackTextStyle.copyWith(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
