import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextFormField(
    {

      required String lable,
      bool? see2,
      IconButton? button,
      required TextInputType type,
      required Icon icon
    }
    )
=> Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: Container(
    color: Colors.grey[300],

    child: TextFormField(
      keyboardType: type,
      style: TextStyle(color: Colors.purple),
      cursorColor: Colors.purple,
      obscureText: see2??false,
      decoration: InputDecoration(
        label: Text("$lable",style: TextStyle(color: Colors.purple),),
        border: InputBorder.none,
        prefixIcon: icon,
        suffixIcon: button,

      ),
    ),
  ),

);