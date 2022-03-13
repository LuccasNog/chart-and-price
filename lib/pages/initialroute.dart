import 'dart:ui';

import 'package:flutter/material.dart';

import 'graphic.dart';

class InitialRoute extends StatefulWidget {
  const InitialRoute({Key? key}) : super(key: key);

  @override
  State<InitialRoute> createState() => _InitialRouteState();
}

class _InitialRouteState extends State<InitialRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cryptologos.cc/logos/bitsend-bsd-logo.png?v=022',
              height: 190,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GraphicCurrency()),
                );
              },
              child: const Text(
                'Entrar',
                overflow: TextOverflow.fade,
              ),
            )
          ],
        ),
      ),
    );
  }
}
