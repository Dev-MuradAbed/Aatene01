import 'package:flutter/material.dart';

import 'help_widget/communicate_widget.dart';

class HelpScreen extends StatelessWidget {
  final VoidCallback openDrawer;
  const HelpScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Color(0xFF2176FF),
                  child: Center(child: Text("أسئلة شائعة",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
              SizedBox(height: 3,),
              Divider(color: Colors.grey,height: 2),
              Center(
                child: SizedBox(
                  height: 450,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ما هو اعطيني؟",style: TextStyle(fontSize: 19,),),
                        SizedBox(
                          height: 5,
                            width: 105,
                            child: Divider(color: Colors.grey,height: 3)),
                        SizedBox(height: 30,),
                        Text("أعطيني هو موقع الكتروني تم تأسيسه سنة 2023 من قبل متخصصين في التجارة الالكترونية و أصحاب خبرة تفوق 7 سنوات، بغرض تسهيل الحياة المهنيةعلى التجار من حيث التسويق لمنتجاتهم ومضاعفة مبيعاتهم من خلال اضافة متاجرهم الى تطبيق أعطيني ومجانا. هذا الى جانب المساهمةفي تطوير عمليات الشراء بالنسبة للراغبين في التسوق عبر الانترنت وذلك بتوفير طرق سهلة وبسيطة تمكنهم من طلب كافة احتياجاتهم من بين الاف المنتجات المتواجدة على متاجر أعطيني.",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 130,
        color:Color(0xFFB7CFEE) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommunicateWidget(icon: Icons.home_work_sharp,text: "عن الشركة",),
            CommunicateWidget(icon:Icons.support_agent,text: "اتصل بنا", ),
            CommunicateWidget(icon: Icons.question_mark,text: "التعليمات"),
          ],
        ),
      ),
    );
  }
}
