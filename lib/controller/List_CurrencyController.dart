//classe que vai se conectar no futuro com uma API ou BD

import 'package:btc_exchange/model/Currencyclass.dart';

class CurrencyController {
  static List<Currency> table = [
    Currency(
        label: 'Bitcoin',
        icon: 'images/bitcoin-btc-logo.png',
        price: 231.858,
        sigla: 'BTC'),
    Currency(
        label: 'Ethereum',
        icon: 'images/ethereum-eth-logo.png',
        price: 16.407,
        sigla: 'ETH'),
    Currency(
        label: 'Shiba Inu',
        icon: 'images/shiba-inu-shib-logo.png',
        price: 16.407,
        sigla: 'ETH'),
    Currency(
        label: 'Litecoin',
        icon: 'images/litecoin.png',
        price: 707.00,
        sigla: 'LTC'),
    Currency(
        label: 'Dogecoin',
        icon: 'images/dogecoin-doge-logo.png',
        price: 707.00,
        sigla: 'DOGE'),
    Currency(
        label: 'Monero',
        icon: 'images/monero.png',
        price: 940.00,
        sigla: 'XRM'),
    Currency(
        label: 'Vertcoin',
        icon: 'images/vertcoin-vtc-logo.png',
        price: 2,
        sigla: 'VERT'),
    Currency(
        label: 'Baby Doge',
        icon: 'images/baby-doge-coin-babydoge-logo.png',
        price: 698.00,
        sigla: 'Baby'),
    Currency(
        label: 'Neo',
        icon: 'images/neo-neo-logo.png',
        price: 121.00,
        sigla: 'NEO'),
    Currency(
        label: 'Solana',
        icon: 'images/solana-sol-logo.png',
        price: 121.00,
        sigla: 'SOL'),
    Currency(
        label: 'Terra Luna',
        icon: 'images/terra-luna-luna-logo.png',
        price: 121.00,
        sigla: 'LUNA'),
    Currency(
        label: 'PAX GOLD',
        icon: 'images/pax-gold-paxg-logo.png',
        price: 121.00,
        sigla: 'PAXG'),
    Currency(
        label: 'Polygon',
        icon: 'images/polygon-matic-logo.png',
        price: 121.00,
        sigla: 'MATIC'),
    Currency(
        label: 'Crypto.com',
        icon: 'images/crypto-com-coin-cro-logo.png',
        price: 121.00,
        sigla: 'CRO'),
    Currency(
        label: 'Binance Smart Chain',
        icon: 'images/bnb-bnb-logo.png',
        price: 121.00,
        sigla: 'BNB'),
  ];
}
