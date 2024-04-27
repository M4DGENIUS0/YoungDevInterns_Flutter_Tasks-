import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Calculator_Provider extends ChangeNotifier {
  TextEditingController TextContoller = TextEditingController();

  setTextValue(String value) {
    String _string = TextContoller.text;
    // function for calculation
    Calculate() {
      String ScreenText = TextContoller.text;
      TextContoller.text = ScreenText.interpret().toString();
    }

    TextContoller.selection = TextSelection.fromPosition(
        TextPosition(offset: TextContoller.text.length));

    //Switch Statement for some method
    switch (value) {
      case 'AC':
        TextContoller.clear();
        break;

      case 'DEL':
        TextContoller.text =
            _string.substring(0, TextContoller.text.length - 1);
        break;
      case 'x':
        TextContoller.text += '*';
        break;
      case '=':
        //function for it
        Calculate();
        break;

      default:
        TextContoller.text += value;
        break;
    }

    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    TextContoller.dispose();
    super.dispose();
  }
}
