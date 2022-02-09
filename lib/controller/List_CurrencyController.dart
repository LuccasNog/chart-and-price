//classe que vai se conectar no futuro com uma API ou BD

import 'package:btc_exchange/model/Currencyclass.dart';

class CurrencyController {
  static List<Currency> table = [
    Currency(
        label: 'Bitcoin',
        icon: 'images/bitcoin.png',
        price: 250.00,
        sigla: 'BTC'),
    Currency(
        label: 'Ethereum',
        icon: 'images/ethereum.png',
        price: 250.00,
        sigla: 'ETH'),
    Currency(
        label: 'Litecoin',
        icon: 'images/litecoin_icon.png',
        price: 250.00,
        sigla: 'LTC'),
    Currency(
        label: 'Dogecoin',
        icon: 'images/doge.png',
        price: 250.00,
        sigla: 'DOGE'),
    Currency(
        label: 'Monero',
        icon: 'images/monero.png',
        price: 250.00,
        sigla: 'XRM'),
    Currency(
        label: 'Vertcoin',
        icon: 'images/vertcoin.png',
        price: 250.00,
        sigla: 'VERT'),
    Currency(
        label: 'Z-cash',
        icon: 'images/z-cash.png',
        price: 250.00,
        sigla: 'ZCASH'),
    Currency(
        label: 'Cardano',
        icon: 'images/ada_cardano.png',
        price: 250.00,
        sigla: 'ADA'),
    Currency(
        label: 'Neo',
        icon: 'images/neo-cripto.png',
        price: 250.00,
        sigla: 'NEO'),
  ];
}
