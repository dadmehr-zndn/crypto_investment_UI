//TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crypto_task/components/investment_app_bar.dart';
import 'package:crypto_task/constants/colors.dart';
import 'package:crypto_task/fake_data.dart';
import 'package:flutter/material.dart';
import '../constants/text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';

class InvestmentScreen extends StatefulWidget {
  const InvestmentScreen({super.key});

  @override
  State<InvestmentScreen> createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 13),
            child: InvestmentAppBar(size: size)),
        body: Column(
          children: [
            // TOP CARD LIST
            SizedBox(
              height: size.height / 7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: cryptosList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      _selectedIndex = index;
                    }),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width / 50),
                      child: CryptoCard(
                        size: size,
                        selectedIndex: _selectedIndex,
                        index: index,
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: size.height / 50),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width / 25),
              child: Column(
                children: [
                  // CURRENCY PROPERTIES ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // PLAN
                      Text(
                        'Plan',
                        style: propertyTextStyle,
                      ),

                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: SolidColors.property,
                        size: size.width / 25,
                      ),

                      SizedBox(width: size.width / 4),

                      // PRICES
                      Text(
                        'Prices',
                        style: propertyTextStyle,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                            child: Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: SolidColors.property,
                              size: size.width / 25,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: SolidColors.property,
                            size: size.width / 25,
                          ),
                        ],
                      ),

                      SizedBox(width: size.width / 10),

                      // PROFIT
                      Text(
                        'Profit',
                        style: propertyTextStyle,
                      ),
                      SizedBox(width: size.width / 30),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                            child: Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: SolidColors.property,
                              size: size.width / 25,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: SolidColors.property,
                            size: size.width / 25,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: size.height / 50),

                  // PROPERTIES LIST CARD
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: cryptoPropertiesList.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: size.height / 8,
                          width: double.infinity,
                          child: Card(
                            margin: EdgeInsets.only(bottom: size.height / 40),
                            color: SolidColors.card,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width / 35),
                              child: Row(
                                children: [
                                  // STAR ICON
                                  GestureDetector(
                                    onTap: () {
                                      print(cryptoPropertiesList[index]
                                          .isFavourite);
                                      setState(() {
                                        cryptoPropertiesList[index]
                                                    .isFavourite ==
                                                false
                                            ? cryptoPropertiesList[index]
                                                .isFavourite = true
                                            : cryptoPropertiesList[index]
                                                .isFavourite = false;
                                      });
                                    },
                                    child: Container(
                                      // color: Colors.red,
                                      child: cryptoPropertiesList[index]
                                                  .isFavourite ==
                                              true
                                          ? Icon(
                                              Icons.star,
                                              color: SolidColors.star,
                                            )
                                          : Icon(
                                              Icons.star_border,
                                              color: SolidColors.scaffold,
                                            ),
                                    ),
                                  ),

                                  SizedBox(width: size.width / 20),

                                  // CURRENCY LOGO
                                  CachedNetworkImage(
                                    imageUrl:
                                        cryptoPropertiesList[index].imageUrl!,
                                    imageBuilder: (context, imageProvider) =>
                                        Image(
                                      image: imageProvider,
                                      height: size.width / 11,
                                    ),
                                    placeholder: (context, url) => SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: CircularProgressIndicator(),
                                    ),
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.image_not_supported_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: size.width / 25),

                                  // RANK & DAYS
                                  SizedBox(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cryptoPropertiesList[index].rank,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                          cryptoPropertiesList[index].days,
                                          style: propertyTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: size.width / 15),

                                  // PRICE
                                  SizedBox(
                                    width: 87,
                                    child: Text(
                                      cryptoPropertiesList[index].price,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),

                                  SizedBox(width: size.width / 40),

                                  // PROFIT
                                  Container(
                                    width: 40,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color:
                                          cryptoPropertiesList[index].profit >=
                                                  0
                                              ? SolidColors.profitPos
                                              : SolidColors.profitNeg,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${cryptoPropertiesList[index].profit}%',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    super.key,
    required this.size,
    required int selectedIndex,
    required this.index,
  }) : _selectedIndex = selectedIndex;

  final Size size;
  final int _selectedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: size.width / 4.5,
      decoration: BoxDecoration(
        color: index == _selectedIndex
            ? SolidColors.selectedCard
            : SolidColors.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // CRYPTO LOGO
            Container(
              decoration: BoxDecoration(
                  //TODO:
                  color: index == _selectedIndex
                      ? SolidColors.selectedCardLogoBack
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(size.width / 65),
                child: CachedNetworkImage(
                  imageUrl: cryptosList[index].imageUrl,
                  imageBuilder: (context, imageProvider) => Image(
                    image: imageProvider,
                    height: size.width / 11,
                  ),
                  placeholder: (context, url) => SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.image_not_supported_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            // CRYPTO NAME
            Text(
              cryptosList[index].name,
              style: TextStyle(
                  color: index == _selectedIndex
                      ? SolidColors.selectedCardText
                      : SolidColors.text),
            ),
          ],
        ),
      ),
    );
  }
}
