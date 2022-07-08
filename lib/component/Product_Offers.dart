import 'package:flutter/material.dart';
import 'package:homepage_islamic/model/product_model_class.dart';
import 'package:provider/provider.dart';

class ProductOffer extends StatelessWidget {
  const ProductOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.red)),
      child: GridTile(
        footer: GridTileBar(
          title: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              minimumSize: Size(90, 25),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Add to Bag',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
                height: 100,
                child: Image.asset(
                  '${product.image}',
                  fit: BoxFit.cover,
                )),
            Text(
              '${product.title}',
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                '${product.quantity}${product.quantityType}',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Text(
              'TK.${product.price}',
              style: TextStyle(color: Colors.green),
            ),

          ],
        ),
      ),

    );
  }
}
