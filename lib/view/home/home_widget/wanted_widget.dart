import 'package:flutter/material.dart';

class Wanted extends StatelessWidget {
  const Wanted({
    super.key,
    required this.wantedList,
  });
  final List<Map<String, dynamic>> wantedList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: wantedList
            .map(
              (item) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: Color(0xFF2176FF))),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 70.48,
                      width: 70.48,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xFF2176FF)),
                          image: DecorationImage(
                              image: AssetImage(item['image']))),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['title']),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(item['costumerName'])
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text("منذ  ${item['timer']} ")
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
            .take(3)
            .toList(),
      ),
    );
  }
}