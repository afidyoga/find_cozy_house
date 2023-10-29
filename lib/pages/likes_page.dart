import 'package:find_cozy_house/theme.dart';
import 'package:flutter/material.dart';

class LikesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Ini Halaman Likes',
            style: blackTextStyle.copyWith(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
