import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Caixaform extends StatelessWidget {
  final String HintText;
  const Caixaform({Key? key, required this.HintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / 2.2,
        child: TextFormField(
            decoration: InputDecoration(

                hintText: HintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)))));
  }
}
