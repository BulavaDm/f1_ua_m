import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class WrapperControl extends StatefulWidget {
  const WrapperControl({
    Key? key
  }) : super(key: key);

  @override
  State<WrapperControl> createState() => _WrapperControlState();
}

class _WrapperControlState extends State<WrapperControl> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 42.0,
            backgroundColor: const Color(0xFFC1CFEA),
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
              child: Image.asset(
                  'assets/icons/logo.png',
                  fit: BoxFit.contain
              ),
            ),
            leadingWidth: 78.0,
            title: const Text(
              '24.11 19:00 - Гран-прі Саудівської Аравії',
              style: TextStyle(
                  fontFamily: 'LatoBold',
                  fontSize: 14.0,
                  color: Color(0xFF000000)
              )
            ),
            titleSpacing: 0.0
        ),
        body: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFFEFEFF)
            )
        )
    );
  }
}