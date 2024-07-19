// To parse this JSON data, do
//
//     final createCheckout = createCheckoutFromJson(jsonString);

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

CreateCheckout createCheckoutFromJson(String str) =>
    CreateCheckout.fromJson(json.decode(str));

String createCheckoutToJson(CreateCheckout data) => json.encode(data.toJson());

class CreateCheckout {

  CreateCheckout({
    required this.address,
    required this.accesstoken,
    required this.fcm,
    required this.totalAmount,
    required this.cartItems,
  });

  factory CreateCheckout.fromJson(Map<String, dynamic> json) => CreateCheckout(
        address: json['address'],
        accesstoken: json['accesstoken'],
        fcm: json['fcm'],
        totalAmount: json['totalAmount']?.toDouble(),
        cartItems: List<CartItem>.from(
            json['cartItems'].map(CartItem.fromJson)),
      );
  final String accesstoken;
  final String fcm;
  
  final double totalAmount;
  final List<CartItem> cartItems;
  final int address;

  Map<String, dynamic> toJson() => {
        'address': address,
        'accesstoken': accesstoken,
        'fcm': fcm,
        'totalAmount': totalAmount,
        'cartItems': List<dynamic>.from(cartItems.map((x) => x.toJson())),
      };
}

class CartItem {

  CartItem({
    required this.name,
    required this.id,
    required this.price,
    required this.cartQuantity,
    required this.size,
    required this.color,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
        name: json['name'],
        size: json['size'],
        color: json['color'],
        id: json['id'],
        price: json['price']?.toDouble(),
        cartQuantity: json['cartQuantity'],
      );
  final String name;
  final String size;
  final String color;
  final int id;
  final double price;
  final int cartQuantity;

  Map<String, dynamic> toJson() => {
        'name': name,
        'size': size,
        'color': color,
        'id': id,
        'price': price,
        'cartQuantity': cartQuantity,
      };
}
