// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grossery/components/model/cart_model.dart';
import 'package:grossery/pages/intropage.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CartModel(),
    child: MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Intropage(),
    )
    ,);
  }
}