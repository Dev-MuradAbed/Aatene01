import 'package:flutter/material.dart';

class HowToImproveScreen extends StatelessWidget {
  final VoidCallback openDrawer;
  const HowToImproveScreen({Key? key, required this.openDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:SingleChildScrollView(
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  color: Color.fromRGBO(116, 116, 128, 0.08)
          ),
                    child: Icon(Icons.close,size: 20,),
        ),
              SizedBox(height:36 ,),
              Text(
                  "ما الذي يمكننا فعله بشكل أفضل؟",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15,),
              Text(
                  'نحن آسفون لسماع أنك لم تحب aatene أرجو أن تشاركونا ما يمكننا القيام به لتحسينه.',
                  style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40,),
              TextField(
                  decoration: InputDecoration(
                    hintText: "كَيْفَ نَتَحَسَّنُ؟",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 15,
                  minLines: 10,
              ),
              SizedBox(
                  height: 110,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("تم"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2176FF),
                      elevation: 0,
                      minimumSize: Size(300, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                ),
              )
            ]),
                ),
          ),
        ),
      ),
    );
  }
}
