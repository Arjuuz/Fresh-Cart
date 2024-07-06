// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grossery/components/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.transparent,
      elevation: 0,
      ),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "My Cart",
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                padding: EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green[400],
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          value.cartItems[index][2],
                          height: 36,
                        ),
                        title: Text(value.cartItems[index][0],style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold,
                  textStyle: const TextStyle(),
                ),
                ),
                        subtitle: Text('\$' + value.cartItems[index][1],style: GoogleFonts.notoSerif(
                          
                  textStyle: const TextStyle(),
                ),),
                        trailing: IconButton(
                          onPressed: () =>
                              Provider.of<CartModel>(context, listen: false)
                                  .removeItemFromCart(index),
                          icon: Icon(Icons.cancel_outlined),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            color: Colors.grey[300],
                            
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '\$' + value.calculateTotal(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                   //pay now button
                   Container(
                  
                    decoration: BoxDecoration(border: Border.all(color: Colors.green.shade100),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(12),
                    child: Row(
                     children:const [
                       Text("Pay Now",
                       style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                       ),
                       ),
                       Icon(Icons.arrow_forward_ios,
                       size: 16,
                       color: Colors.white,)
                     ],
                   ),)
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}