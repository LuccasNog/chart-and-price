import 'dart:ui';

import 'package:btc_exchange/pages/listcurrency.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://cryptologos.cc/logos/bitsend-bsd-logo.png?v=022',
                  height: 120,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListCurrency()),
                      );
                    },
                    child: Text(
                      'Entrar',
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 5,
                          color: Colors.black),
                    ))
              ],
            ),
          ),
        ));
  }
}


/*
Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://cryptologos.cc/logos/bitsend-bsd-logo.png?v=022',
              height: 20,
            ),
            /*
            const Divider(
              color: Colors.transparent,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            */
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListCurrency()),
                );
              },
              child: const Text(
                'Entrar',
                overflow: TextOverflow.fade,
                style: TextStyle(fontWeight: FontWeight.bold, height: 45),
              ),
            )
          ],
        ),
      ),
*/