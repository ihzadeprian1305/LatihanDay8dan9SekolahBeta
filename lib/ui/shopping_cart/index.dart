import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:latihanday7sekolahbeta2/model/product.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> items = [
    //   'Item 1',
    //   'Item 2',
    //   'Item 3',
    //   'Item 4',
    //   'Item 5',
    //   'Item 6',
    //   'Item 7',
    //   'Item 8',
    //   'Item 9',
    //   'Item 10',
    // ];

    // final List<int> prices = [
    //   100000,
    //   250000,
    //   150000,
    //   250000,
    //   350000,
    //   500000,
    //   750000,
    //   300000,
    //   250000,
    //   150000,
    // ];

    // final List<String> pictures = [
    //   'assets/images/shoes1.jpg',
    //   'assets/images/shoes2.jpg',
    //   'assets/images/shoes3.jpg',
    //   'assets/images/shoes1.jpg',
    //   'assets/images/shoes2.jpg',
    //   'assets/images/shoes3.jpg',
    //   'assets/images/shoes1.jpg',
    //   'assets/images/shoes2.jpg',
    //   'assets/images/shoes3.jpg',
    //   'assets/images/shoes1.jpg',
    // ];

    final List<Product> items = [
      Product(
          id: '1',
          name: 'Item 1',
          price: 100000,
          image: 'assets/images/shoes1.jpg'),
      Product(
          id: '2',
          name: 'Item 2',
          price: 250000,
          image: 'assets/images/shoes2.jpg'),
      Product(
          id: '3',
          name: 'Item 3',
          price: 500000,
          image: 'assets/images/shoes3.jpg'),
      Product(
          id: '4',
          name: 'Item 4',
          price: 350000,
          image: 'assets/images/shoes1.jpg'),
      Product(
          id: '5',
          name: 'Item 5',
          price: 150000,
          image: 'assets/images/shoes2.jpg'),
      Product(
          id: '6',
          name: 'Item 6',
          price: 100000,
          image: 'assets/images/shoes3.jpg'),
      Product(
          id: '7',
          name: 'Item 7',
          price: 200000,
          image: 'assets/images/shoes1.jpg'),
      Product(
          id: '8',
          name: 'Item 8',
          price: 750000,
          image: 'assets/images/shoes2.jpg'),
      Product(
          id: '9',
          name: 'Item 9',
          price: 800000,
          image: 'assets/images/shoes3.jpg'),
      Product(
          id: '10',
          name: 'Item 10',
          price: 1000000,
          image: 'assets/images/shoes1.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          tooltip: 'Back',
          onPressed: () {},
        ),
        title: const Text(
          'Shopping Cart',
        ),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       color: Colors.teal.shade200,
      //       padding: const EdgeInsets.all(
      //         40,
      //       ),
      //       child: const Text('Item 1'),
      //     ),
      //     Container(
      //       color: Colors.teal.shade200,
      //       padding: const EdgeInsets.all(
      //         40,
      //       ),
      //       child: const Text('Item 1'),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.teal.shade200,
      //       padding: const EdgeInsets.all(
      //         40,
      //       ),
      //       child: Text(items[index]),
      //     );
      //   },
      // ),
      // body: ListView.builder(
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text(
      //           items[index],
      //         ),
      //         leading: Image.asset(
      //           pictures[index],
      //           height: 56,
      //           width: 56,
      //           fit: BoxFit.cover,
      //         ),
      //         subtitle: Text(
      //           'Rp. ${prices[index]}',
      //           style: const TextStyle(
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         trailing: IconButton(
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.delete,
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    items[index].name,
                  ),
                  leading: Image.asset(
                    items[index].image,
                    height: 56,
                    width: 56,
                    fit: BoxFit.cover,
                  ),
                  subtitle: Text(
                    'Rp. ${items[index].price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // trailing: IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.delete,
                  //   ),
                  // ),
                ),
                const ShoppingCartItemQty(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({super.key});

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int _qty = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (_qty > 1) _qty--;
            });
          },
          icon: Icon(
            Icons.remove,
          ),
        ),
        Text(
          "$_qty",
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _qty++;
            });
          },
          icon: Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
