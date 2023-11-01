import 'package:flutter_fic9_ecommerce_fahron_app/common/extensions/string_ext.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/data/models/responses/products_response_model.dart';

class CartModel {
  final Product product;
  int quantity;

  CartModel({
    required this.product,
    this.quantity = 0,
  });

  String get priceFormat => product.attributes.price.currencyFormatRpString;
}
