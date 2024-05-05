import 'package:crypto_task/models/crypto_card.dart';
import 'package:crypto_task/models/crypto_property.dart';

List<CryptoCardModel> cryptosList = [
  CryptoCardModel(
    imageUrl: 'https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=032',
    name: 'BTC',
  ),
  CryptoCardModel(
    imageUrl: 'https://cryptologos.cc/logos/tether-usdt-logo.png?v=032',
    name: 'USDT',
  ),
  CryptoCardModel(
    imageUrl: 'https://cryptologos.cc/logos/cardano-ada-logo.png?v=032',
    name: 'ADA',
  ),
  CryptoCardModel(
    imageUrl: 'https://cryptologos.cc/logos/binance-usd-busd-logo.png?v=032',
    name: 'BUSD',
  ),
  CryptoCardModel(
    imageUrl: 'https://cryptologos.cc/logos/ethereum-eth-logo.png?v=032',
    name: 'ETH',
  ),
];

List<CryptoProperties> cryptoPropertiesList = [
  CryptoProperties(
    imageUrl: 'https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=032',
    rank: 'Basic',
    days: '30 Days',
    price: r'$100-$2000',
    profit: 14,
  ),
  CryptoProperties(
    imageUrl: 'https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=032',
    rank: 'Silver',
    days: '50 Days',
    price: r'$1000-$2000',
    profit: 14,
  ),
  CryptoProperties(
    imageUrl: 'https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=032',
    rank: 'Gold',
    days: '99 Days',
    price: r'$2000-$5000',
    profit: -20,
  ),
  CryptoProperties(
    imageUrl: 'https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=032',
    rank: 'Diamond',
    days: '99 Days',
    price: r'$5000-$10000',
    profit: 20,
  ),
];
