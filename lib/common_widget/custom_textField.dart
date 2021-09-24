import 'package:flutter/material.dart';
import 'package:sketchapp_sample/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({ Key? key, required this.text, this.keyboardType }) : super(key: key);
  final String text;
  final TextInputType? keyboardType;


  @override
  Widget build(BuildContext context) {
    return Container(
      
              width: Utils.getScreenWidth(context)/1.2,
              child: TextFormField(
    textAlign: TextAlign.center,

    keyboardType:keyboardType,
    decoration: InputDecoration(
      
        hintText: text,
        
        hintStyle: TextStyle(fontSize: 16,
        color: Colors.white,
        ),
        border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
                  
              ),
        ),
        filled: true,
        fillColor: Colors.grey,
        contentPadding: EdgeInsets.all(16),
       
    ),
),
      
    );
  }
}