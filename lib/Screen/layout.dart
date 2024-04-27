import 'package:calculator/provider/Calculator_Provider.dart';
import 'package:calculator/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class layout extends StatefulWidget {
  const layout({super.key});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  // list of names of button
  List<String> buttonList = [
    "AC",
    "%",
    "DEL",
    "/",
    "7",
    "8",
    "9",
    "x",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "00",
    "0",
    ".",
    "="
  ];
  // Text Editing Controller

  @override
  Widget build(BuildContext context) {
    return Consumer<Calculator_Provider>(
        builder: (BuildContext context, value, Widget? child) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.grey[100],
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: value.TextContoller,
                    textAlign: TextAlign.right,
                    readOnly: true,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    showCursor: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    decoration: InputDecoration(
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey[100],
                  child: GridView.builder(
                    itemCount: buttonList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      if (index == 20) {
                        return Container(
                          // color: Colors.grey[100],
                          child: Center(
                            child: Button_Widget(
                              // ontap: value.setTextValue(buttonList[index]),
                              name: buttonList[20],
                              color: Colors.blueGrey,
                              textstyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          // color: Colors.grey[100],
                          child: Center(
                            child: Button_Widget(
                              // ontap: value.setTextValue(buttonList[index]),
                              name: buttonList[index],
                              color: Colors.white,
                              textstyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ))
          ],
        ),
      );
    });
  }
}
