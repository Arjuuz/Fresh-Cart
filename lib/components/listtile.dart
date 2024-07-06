import 'package:flutter/material.dart';

class  GrocceryListTile extends StatelessWidget {
  final String itemName;
  final String price;
  final String imagepath;
  final  color;
  void Function()? onPressed;
    // ignore: prefer_const_constructors_in_immutables
    GrocceryListTile({super.key, required this.itemName, required this.price, required this.imagepath, required this.color,
    required this.onPressed
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagepath,
            height: 70,
            ),
  //product name
            
            Text(itemName),

  //price +button

  MaterialButton(onPressed: onPressed,
  color:color[800],
  child: 
  Text('\$'+ price,style: TextStyle(
    color: Colors.white,fontWeight: FontWeight.bold
  ),),
  ),
          ],
        ),
      
      ),
    );
  }
}