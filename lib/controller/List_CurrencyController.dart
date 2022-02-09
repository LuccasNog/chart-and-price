//classe que vai se conectar no futuro com uma API ou BD

import 'package:btc_exchange/model/Currencyclass.dart';

class CurrencyController {
  static List<Currency> table = [
    Currency(
        label: 'Bitcoin',
        icon: 'images/bitcoin.png',
        price: 231.858,
        sigla: 'BTC'),
    Currency(
        label: 'Ethereum',
        icon: 'images/ethereum.png',
        price: 16.407,
        sigla: 'ETH'),
    Currency(
        label: 'Litecoin',
        icon: 'images/litecoin_icon.png',
        price: 707.00,
        sigla: 'LTC'),
    Currency(
        label: 'Dogecoin',
        icon: 'images/doge.png',
        price: 707.00,
        sigla: 'DOGE'),
    Currency(
        label: 'Monero',
        icon: 'images/monero.png',
        price: 940.00,
        sigla: 'XRM'),
    Currency(
        label: 'Vertcoin',
        icon: 'images/vertcoin.png',
        price: 2,
        sigla: 'VERT'),
    Currency(
        label: 'Z-cash',
        icon: 'images/z-cash.png',
        price: 698.00,
        sigla: 'ZCASH'),
    Currency(
        label: 'Cardano',
        icon: 'images/ada_cardano.png',
        price: 6.21,
        sigla: 'ADA'),
    Currency(
        label: 'Neo',
        icon: 'images/neo-cripto.png',
        price: 121.00,
        sigla: 'NEO'),
  ];
}
