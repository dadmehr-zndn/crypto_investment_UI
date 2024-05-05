class CryptoProperties {
  CryptoProperties({
    this.imageUrl,
    this.isFavourite = false,
    required this.rank,
    required this.days,
    required this.price,
    required this.profit,
  });
  String? imageUrl;
  bool? isFavourite;
  final String rank;
  final String days;
  final String price;
  final int profit;
}
