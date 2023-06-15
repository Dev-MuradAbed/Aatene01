import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class RecommendedProduct extends StatefulWidget {
  const RecommendedProduct({
    Key? key,
    required this.format,
    required this.recommended,
  }) : super(key: key);
  final NumberFormat format;

  final List<Map<String, dynamic>> recommended;
  @override
  State<RecommendedProduct> createState() => _RecommendedProductState();
}

class _RecommendedProductState extends State<RecommendedProduct> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: widget.recommended.map((item) => Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 240,
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(item['image']), fit: BoxFit.fill)),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(0, 0, 0, 0.9),
                        Color.fromRGBO(0, 0, 0, 0),
                      ])),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(item['shop'],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                SizedBox(
                                  width: 9,
                                ),
                                item['owner'] == true
                                    ? ImageIcon(
                                  AssetImage('assets/icon/queen.png'),
                                  color: Colors.yellowAccent,
                                )
                                    : SizedBox()
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(item['productNameArabic'],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(item['productNameEnglish'],
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(item['properties'],
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(item['rate'].toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFFFF9017))),
                                SizedBox(
                                  width: 9,
                                ),
                                RatingBar.builder(
                                    unratedColor: Color(0xFFD4CDC5),
                                    initialRating: double.parse(
                                        item['rate'].toString()),
                                    minRating: 1,
                                    itemSize: 30,
                                    itemCount: 5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFFF9017),
                                    ),
                                    onRatingUpdate: (newValue) =>
                                        setState(() {
                                          // item['rate'].toString() = newValue;
                                        })),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '${item['price']} ${widget.format.currencySymbol}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                item['oldPrice']==''?SizedBox(): Text(
                                    '${item['oldPrice']} ${widget.format.currencySymbol}',
                                    style: TextStyle(
                                        color: Color(0xFF555555),
                                        fontSize: 20,
                                        decoration:
                                        TextDecoration.lineThrough)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2176FF),
                                    foregroundColor: Color(0xFFFEFEFE),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))),
                                child: Text(
                                  'اطلبه الان',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )).take(1).toList());
  }
}