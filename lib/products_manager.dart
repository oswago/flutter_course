import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _prodcutsManager();
  }
}

class _prodcutsManager extends State<ProductManager> {
  final List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(9.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced Food tester');
                //print(_products);
              });
            },
            child: const Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
