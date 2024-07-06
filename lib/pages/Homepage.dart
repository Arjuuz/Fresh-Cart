// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grossery/components/listtile.dart';
import 'package:grossery/components/model/cart_model.dart';
import 'package:grossery/pages/cartpage.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => 
      Navigator.push(context,MaterialPageRoute(builder: (context) {
        return CartPage();
      },)),
      child: Icon(Icons.shopping_bag,color: Colors.white,),
      backgroundColor: Colors.black,
     
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48,),
            // Greetings
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Greetings Sir/Madam"),
            ),
            const SizedBox(height: 4,),
            // Let's order fresh items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Let's order fresh items for you",
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 24,),
            // Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(color: Colors.grey),
            ),
            const SizedBox(height: 24,),
            // Items + Order
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Fresh Items",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: EdgeInsets.all(12),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 1/1.3,
                    ),
                    itemBuilder: (context, index) {
                      return GrocceryListTile(
                        itemName: value.shopItems[index][0],
                        price: value.shopItems[index][1],
                        imagepath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
