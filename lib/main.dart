import 'dart:html';

import 'package:flutter/material.dart';
import 'Info_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Directionality(
      // add this
      textDirection: TextDirection.rtl,
      child: IugScreen(),
    ),
    // Application theme data, you can set the colors for the application as
    // you want
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class IugScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('عاصمة فلسطين'),
      ),
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/quds.jpg'),

          // to insert text with padding
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "مدينة القدس",
              style: TextStyle(fontSize: 22),
            ),
          ),
          InfoWidget(
            label: 'الاسم:',
            value: 'القدس',
          ),
          InfoWidget(
            label: 'المساحة:',
            value: '125 كم',
          ),
          InfoWidget(
            label: 'السكان:',
            value: '358000 نسمة',
          ),
          InfoWidget(
            label: 'الدولة:',
            value: 'فلسطين',
          ),
          InfoWidget(
            label: 'اسم الطالب:',
            value: 'عمر علي أحمد',
          ),
        ],
      ),
    );
  }
}
