import 'package:carousel_slider/carousel_slider.dart';
import 'package:diaa_project/provider/product_provider.dart';
import 'package:diaa_project/view/home/home_widget/story_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../models/seller_model.dart';
import '../../provider/seller_provider.dart';
import 'drawer_menu_widget.dart';
import 'home_widget/classification_widget.dart';
import 'home_widget/container_slider_widget.dart';
import 'home_widget/declaration_widget.dart';
import 'home_widget/product_widget.dart';
import 'home_widget/recommended_product_widget.dart';
import 'home_widget/seller_widget.dart';
import 'home_widget/show_item_widget.dart';
import 'home_widget/show_more_widget.dart';
import 'home_widget/wanted_widget.dart';
import 'package:provider/provider.dart';

// responsive text https://stackoverflow.com/questions/57210428/how-to-create-responsive-text-widget-in-flutter
class HomeScreen extends StatefulWidget {
  final VoidCallback openDrawer;
  const HomeScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Map<String, dynamic>> itemSlider = [
    {'image': 'assets/image/slider.png'},
    {'image': 'assets/image/slider.png'},
    {'image': 'assets/image/slider.png'},
    {'image': 'assets/image/slider.png'},
  ];
  final List<Map<String, dynamic>> classification = [
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
    {'image': 'assets/image/profile.png', 'text': 'الجمال و الاكسسوارات'},
  ];
  // final List<Map<String, dynamic>> product = [
  //   {
  //     'image': 'assets/image/product.png',
  //     'shop': 'Elina Shop',
  //     'owner': true,
  //     'rate': 4.9,
  //     'price': 30,
  //     'oldPrice': 150,
  //     'off': 14,
  //     'productName': 'ProductName',
  //     'delivery': true,
  //     'ads': true
  //   },
  //   {
  //     'image': 'assets/image/product.png',
  //     'shop': 'Elina Shop',
  //     'owner': true,
  //     'rate': 4.9,
  //     'price': 30,
  //     'oldPrice': 150,
  //     'off': 14,
  //     'productName': 'ProductName',
  //     'delivery': true,
  //     'ads': true
  //   },
  //   {
  //     'image': 'assets/image/product.png',
  //     'shop': 'Elina Shop',
  //     'owner': true,
  //     'rate': 4.9,
  //     'price': 30,
  //     'oldPrice': 150,
  //     'off': 14,
  //     'productName': 'ProductName',
  //     'delivery': true,
  //     'ads': false
  //   },
  //   {
  //     'image': 'assets/image/product.png',
  //     'shop': 'Elina Shop',
  //     'owner': false,
  //     'rate': 4.9,
  //     'price': 30,
  //     'oldPrice': '',
  //     'off': '',
  //     'productName': 'ProductName',
  //     'delivery': false,
  //     'ads': true
  //   },
  // ];
  final List<SellerModel> seller = [
    SellerModel(
      imageProfile: 'assets/image/profile.png',
      sellerName: 'Elina Shop',
      rate: 3.2,
      owner: true,
      imageProduct: [
        'assets/image/1.png',
        'assets/image/2.png',
        'assets/image/3.png',
      ],
    ),
    SellerModel(
      imageProfile: 'assets/image/profile.png',
      sellerName: 'Elina Shop',
      rate: 3.5,
      owner: false,
      imageProduct: [
        'assets/image/1.png',
        'assets/image/2.png',
        'assets/image/3.png',
        'assets/image/1.png',
        'assets/image/1.png',
        'assets/image/1.png',
      ],
    ),
    SellerModel(
      imageProfile: 'assets/image/profile.png',
      sellerName: 'Elina Shop',
      rate: 4.5,
      owner: false,
      imageProduct: [
        'assets/image/1.png',
        'assets/image/2.png',
        'assets/image/3.png',
        'assets/image/3.png',
      ],
    ),
    SellerModel(
      imageProfile: 'assets/image/profile.png',
      sellerName: 'Elina Shop',
      rate: 4.6,
      owner: true,
      imageProduct: [
        'assets/image/1.png',
        'assets/image/2.png',
        'assets/image/3.png',
        'assets/image/1.png',
      ],
    ),
  ];

  final List<Map<String, dynamic>> items = [
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
    {'image': 'assets/icon/queen.png', 'text': 'المميزة'},
  ];
  final List<Map<String, dynamic>> imageDeclaration = [
    {'image': 'assets/image/ad1.png'},
    {'image': 'assets/image/ad1.png'}
  ];
  final List<Map<String, dynamic>> wantedList = [
    {
      'image': 'assets/image/profile.png',
      'title': 'اضافة بوابة دفع جديدة',
      'costumerName': 'name',
      'timer': 'دقيقة'
    },
    {
      'image': 'assets/image/profile.png',
      'title': 'اضافة بوابة دفع جديدة',
      'costumerName': 'name',
      'timer': 'دقيقة'
    },
    {
      'image': 'assets/image/profile.png',
      'title': 'اضافة بوابة دفع جديدة',
      'costumerName': 'name',
      'timer': 'دقيقة'
    },
  ];
  final List<Map<String, dynamic>> Recommended = [
    {
      'image': 'assets/image/recom.png',
      'shop': 'Elina Shop',
      'owner': true,
      'rate': 4.9,
      'price': 30,
      'oldPrice': 150,
      'properties': 'جودة عالية-للاستخدام اليومي',
      'productNameArabic': 'كحلة ضد الماء',
      'productNameEnglish': 'Kill Bleek',
    },
  ];

  int currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Provider.of<ProductProvider>(context, listen: false).fetchProduct();
    Provider.of<SellerProvider>(context, listen: false).fetchSellers();
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    var format = NumberFormat.simpleCurrency(locale: locale.toString());

    return SafeArea(
      child: Scaffold(
          body: Align(
            alignment: AlignmentDirectional.centerStart,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Start Story Section
                  StorySection(),
                  //End Story Section
                  //Start Slider Section
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: List.generate(
                          itemSlider.length,
                          (index) => ContainerSliderWidget(
                              itemSlider: itemSlider, index: index)),
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          autoPlay: true),
                    ),
                  ),
                  DotSlider(itemSlider: itemSlider, currentIndex: currentIndex),
                  //End Slider Section
                  ShowMore(showMore: 'التصنيفات', onPressed: () {}),
                  SizedBox(
                    height: 6,
                  ),
                  //Start classification Section
                  ClassificationsWidget(classification: classification),
                  //End classification Section
                  ShowMore(showMore: 'المنتج الموصى به', onPressed: () {}),
                  //Start recommended Section
                  RecommendedProduct(
                    format: format,
                    recommended: Recommended,
                  ),
                  //End recommended Section
                  ShowMore(showMore: 'العروض', onPressed: () {}),
                  Consumer<ProductProvider>(
                    builder: (context, provider, _) {
                      if (provider.product.isEmpty) {
                        return Text('No product available');
                      }
                      return Wrap(
                        runSpacing: 0,
                        spacing: 5,
                        alignment: WrapAlignment.center,
                        children: provider.product
                            .map((product) => ProductWidget(
                                  product: product,
                                  format: format,
                                ))
                            .take(4)
                            .toList(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ShowMore(
                      showMore: 'المنتجات المميزة',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          print(
                              'height : ${MediaQuery.of(context).size.height}');
                          print('width : ${MediaQuery.of(context).size.width}');
                          return Scaffold(
                              appBar: AppBar(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                leading: Icon(Icons.arrow_back_ios,
                                    color: Colors.black),
                                title: Column(
                                  children: [
                                    Text("منتجات مميزة",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF1B1B1B))),
                                    Text("10 تم العثور على عناصر",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF8D8D8D))),
                                  ],
                                ),
                              ),
                              body: Consumer<ProductProvider>(
                                builder: (context, provider, _) {
                                  if (provider.product.isEmpty) {
                                    return Text('No product available');
                                  }
                                  return SingleChildScrollView(
                                    child: Wrap(
                                      runSpacing: 0,
                                      spacing: 5,
                                      alignment: WrapAlignment.center,
                                      children: provider.product
                                          .map((product) => ProductWidget(
                                                product: product,
                                                format: format,
                                              ))
                                          .toList(),
                                    ),
                                  );
                                },
                              ),
                              bottomNavigationBar: Container(
                                height: 75,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                        child: Column(
                                      children: [
                                        Icon(Icons.filter_list),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('ترتيب حسب')
                                      ],
                                    )),
                                    Container(
                                        child: Column(
                                      children: [
                                        Icon(Icons.filter_list),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('فلتر')
                                      ],
                                    )),
                                  ],
                                ),
                              ));
                        }));
                      }),

                  Consumer<ProductProvider>(
                    builder: (context, provider, _) {
                      if (provider.product.isEmpty) {
                        return Text('No product available');
                      }
                      return Wrap(
                        runSpacing: 0,
                        spacing: 5,
                        alignment: WrapAlignment.center,
                        children: provider.product
                            .map((product) => ProductWidget(
                                  product: product,
                                  format: format,
                                ))
                            .take(4)
                            .toList(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ShowMore(showMore: 'البائعين', onPressed: () {}),
                  Consumer<SellerProvider>(
                    builder: (context, provider, _) {
                      if (provider.sellers.isEmpty) {
                        return Text('No sellers available');
                      }
                      return Wrap(
                        runSpacing: 0,
                        spacing: 5,
                        alignment: WrapAlignment.center,
                        children: provider.sellers
                            .map((seller) => SellerWidget(seller: seller))
                            .take(3)
                            .toList(),
                      );
                    },
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Text("اضهر لي العناصر",
                      style: TextStyle(
                          fontSize: 25.5,
                          color: Color(0xFF1B1B1B),
                          fontWeight: FontWeight.bold)),
                  ShowItemWidget(items: items),
                  DeclarationWidget(image: imageDeclaration),

                  ShowMore(showMore: 'أفضل الخدمات', onPressed: () {}),

                  Wanted(wantedList: wantedList),

                  ShowMore(showMore: 'تصفح الوظائف', onPressed: () {}),
                  Wanted(wantedList: wantedList),
                  ShowMore(showMore: 'أفضل الخدمات', onPressed: () {}),
                  Wanted(wantedList: wantedList),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          // currentScreen=Dasboard();
                          // currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 20,
                            Icons.person,
                            // color:currentTab ==0?Colors.blue:Colors.grey ,
                          ),
                          Text(
                            "حسابي", style: TextStyle(fontSize: 15),
                            // style: TextStyle(color:currentTab ==0?Colors.blue:Colors.grey)
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          // currentScreen=Dasboard();
                          // currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 20,
                            Icons.mark_unread_chat_alt,
                            // color:currentTab ==0?Colors.blue:Colors.grey ,
                          ),
                          Text(
                            "رسائلي", style: TextStyle(fontSize: 15),
                            // style: TextStyle(color:currentTab ==0?Colors.blue:Colors.grey)
                          )
                        ],
                      ),
                    ),
                  ]),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          // currentScreen=Dasboard();
                          // currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 20,
                            Icons.search,
                            // color:currentTab ==0?Colors.blue:Colors.grey ,
                          ),
                          Text(
                            "بحث", style: TextStyle(fontSize: 15),
                            // style: TextStyle(color:currentTab ==0?Colors.blue:Colors.grey)
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          // currentScreen=Dasboard();
                          // currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 20,
                            Icons.home,
                            // color:currentTab ==0?Colors.blue:Colors.grey ,
                          ),
                          Text(
                            "الرئيسية", style: TextStyle(fontSize: 15),
                            // style: TextStyle(color:currentTab ==0?Colors.blue:Colors.grey)
                          )
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          )),
    );
  }
}
