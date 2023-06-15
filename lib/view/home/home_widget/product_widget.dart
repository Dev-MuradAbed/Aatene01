import 'package:diaa_project/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.format, required this.product,
  });

  final NumberFormat format;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 270,
              width: 164,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(20),
                  border:
                  Border.all(color: Colors.grey, width: 1)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 185, left: 10, right: 10, bottom: 8),
              child: Container(
                height: 90,
                width: 144,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${product.price} ${format.currencySymbol}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                    product.oldPrice!=0?Text('${product.oldPrice} ${format.currencySymbol}',
                              style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  decoration: TextDecoration
                                      .lineThrough)):SizedBox(),
                          SizedBox(
                            width: 9,
                          ),
                    product.off!=0?Text('off ${product.off}%',
                              style: TextStyle(
                                color: Color(0xFFD45151),
                                fontSize: 10,
                              )):SizedBox(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
    product.productName,
                                style: TextStyle(
                                    color: Color(0xFF101216),
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(product.rate.toString())
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(product.shop,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF555555))),
                          SizedBox(
                            width: 9,
                          ),
                product.owner==true?ImageIcon(
                            size: 15,
                            AssetImage('assets/icon/queen.png'),
                            color: Colors.yellowAccent,
                          ):SizedBox()
                        ],
                      ),
                      Row(
                        children: [
                      product.delivery==true?Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF17B827),
                                borderRadius:
                                BorderRadius.circular(3.5)),
                            padding: EdgeInsets.all(1),
                            child:Text(
                              "توصيل مجاني",
                              style: TextStyle(
                                  fontSize: 5,
                                  color: Colors.white),
                            ),
                          ):SizedBox(),
                          SizedBox(
                            width: 2,
                          ),
                          product.ads==true?Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF000000),
                                borderRadius:
                                BorderRadius.circular(3.5)),
                            padding: EdgeInsets.all(1),
                            child: Text(
                              "ads",
                              style: TextStyle(
                                  fontSize: 5,
                                  color: Colors.white),
                            ),
                          ):SizedBox(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 10, right: 10, bottom: 89),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 166,
                        width: 144,
                        // alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            borderRadius:
                            BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/image/product.png'))),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 5,
                    left: 22,
                    right: 22,
                    child: Wrap(
                        runSpacing: 0,
                        spacing: 0,
                        alignment: WrapAlignment.center,
                        children: List.generate(
                          3,
                              (index) => Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(5),
                            // alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(50),
                            ),
                            child: Image(
                                image: AssetImage(
                                    'assets/icon/favorite.png')),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        );



  }
}
