import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../models/seller_model.dart';

class SellerWidget extends StatelessWidget {
  const SellerWidget({Key? key, required this.seller}) : super(key: key);
  final SellerModel seller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 360,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFFbdcbff), width: 1),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage(seller.imageProfile),
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          seller.sellerName,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                        SizedBox(width: 9),
                        seller.owner
                            ? ImageIcon(
                          AssetImage('assets/icon/queen.png'),
                          color: Colors.yellowAccent,
                        )
                            : SizedBox(),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          unratedColor: Color(0xFFD4CDC5),
                          initialRating: seller.rate,
                          minRating: 1,
                          itemSize: 10,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star_rounded,
                            color: Color(0xFF1B1B1B),
                          ),
                          onRatingUpdate: (_) {},
                        ),
                        SizedBox(width: 9),
                        Text(
                          seller.rate.toString(),
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1B1B1B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              seller.imageProduct.length,
                  (index) {
                final productImage = seller.imageProduct[index];
                return Container(
                  height: 101,
                  width: index == 1 ? 118 : 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: index == 0
                        ? BorderRadius.only(bottomRight: Radius.circular(20))
                        : (index == 2)
                        ? BorderRadius.only(bottomLeft: Radius.circular(20))
                        : BorderRadius.zero,
                    image: DecorationImage(
                      image: AssetImage(productImage),
                    ),
                  ),
                  child: index == 2
                      ? Center(
                    child: Text(
                      '+ ${(seller.imageProduct.length - 2)}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                      : SizedBox(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
