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
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Safeway Crypto'),
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 60,
                    color: Colors.transparent,
                  ),
                  Image.network(
                    'https://cryptologos.cc/logos/bitsend-bsd-logo.png?v=022',
                    width: 190,
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.abc),
                    label: const Text('Entrar',
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 20,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListCurrency()),
                      );
                    },
                  )
                ],
              ),
            )));
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