import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallets.color,
      body: Container(
        color: Pallets.color,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 85),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                title: NavBar(),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              SizedBox(height: 25),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
