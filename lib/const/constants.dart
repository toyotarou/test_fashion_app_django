import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/const/resource.dart';
import 'package:test_fashion_app_django/models/categories_model.dart';
import 'package:test_fashion_app_django/models/product_model.dart';

LinearGradient kGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
    Kolors.kPrimary,
  ],
);

LinearGradient kPGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kPrimaryLight.withOpacity(0.7),
    Kolors.kPrimary,
  ],
);

LinearGradient kBtnGradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
  ],
);

BorderRadiusGeometry kClippingRadius = const BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

BorderRadiusGeometry kRadiusAll = BorderRadius.circular(12);

BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  topLeft: Radius.circular(9),
  topRight: Radius.circular(9),
);

BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
  bottomLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
);

Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
      fit: BoxFit.cover,
    );

Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p3) => Image.asset(
          R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
          fit: BoxFit.cover,
        );

List<String> images = [
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_125143988.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_125224348.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_125844963.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_130349870.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_130448656.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_130844748.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_131444815.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_131955953.jpg',
  'http://160.16.145.135/BrainLog/public/UPPHOTO/2020/2020-06-20/20200620_132710098.jpg'
];

// [{"title":"Sneakers","id":3,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Frunning_shoe.svg?alt=media&token=0dcb0e57-315e-457c-89dc-1233f6421368"},{"title":"T-Shirts","id":5,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjersey.svg?alt=media&token=6ca7eabd-54b3-47bb-bb8f-41c3a8920171"},{"title":"Jackets","id":4,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjacket.svg?alt=media&token=ffdc9a1e-917f-4e8f-b58e-4df2e6e8587e"},{"title":"Dresses","id":2,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fdress.svg?alt=media&token=cf832383-4c8a-4ee1-9676-b66c4d515a1c"},{"title":"Pants","id":1,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjeans.svg?alt=media&token=eb62f916-a4c2-441a-a469-5684f1a62526"}]

///
List<CategoriesModel> categories = [
  CategoriesModel(
      title: 'Pants',
      id: 1,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjeans.svg?alt=media&token=eb62f916-a4c2-441a-a469-5684f1a62526'),
  CategoriesModel(
      title: 'T-Shirts',
      id: 5,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjersey.svg?alt=media&token=6ca7eabd-54b3-47bb-bb8f-41c3a8920171'),
  CategoriesModel(
      title: 'Sneakers',
      id: 3,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Frunning_shoe.svg?alt=media&token=0dcb0e57-315e-457c-89dc-1233f6421368'),
  CategoriesModel(
      title: 'Dresses',
      id: 2,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fdress.svg?alt=media&token=cf832383-4c8a-4ee1-9676-b66c4d515a1c'),
  CategoriesModel(
      title: 'Jackets',
      id: 4,
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjacket.svg?alt=media&token=ffdc9a1e-917f-4e8f-b58e-4df2e6e8587e')
];

///
// List<Map<String, Object>> products = [
//   {
//     'id': 3,
//     'title': 'Converse Chuck Taylor All Star',
//     'price': 60.0,
//     'description':
//         'The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.',
//     'is_featured': true,
//     'clothesType': 'kids',
//     'ratings': 4.333333333333333,
//     'colors': ['black', 'white', 'red'],
//     'imageUrls': [
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
//     ],
//     'sizes': ['7', '8', '9', '10', '11'],
//     'created_at': '2024-06-06T07:57:45Z',
//     'category': 3,
//     'brand': 1
//   },
//   {
//     'id': 1,
//     'title': 'LV Trainers',
//     'price': 798.88,
//     'description':
//         'LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury.',
//     'is_featured': true,
//     'clothesType': 'women',
//     'ratings': 4.5,
//     'colors': ['white', 'black', 'red'],
//     'imageUrls': [
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
//     ],
//     'sizes': ['7', '8', '9', '10', '11'],
//     'created_at': '2024-06-06T07:49:15Z',
//     'category': 3,
//     'brand': 1
//   },
//   {
//     'id': 2,
//     'title': 'Adidas Ultraboost',
//     'price': 180.0,
//     'description':
//         'xperience the comfort and energy return of the Ultraboost, designed for running and everyday wear.',
//     'is_featured': true,
//     'clothesType': 'unisex',
//     'ratings': 5.0,
//     'colors': ['navy', 'grey', 'blue'],
//     'imageUrls': [
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
//       'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
//     ],
//     'sizes': ['7', '8', '9', '10', '11'],
//     'created_at': '2024-06-06T07:55:20Z',
//     'category': 3,
//     'brand': 1
//   }
// ];

List<Product> products = [
  Product(
      id: 3,
      title: 'Converse Chuck Taylor All Star',
      price: 60,
      description:
          'The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.',
      isFeatured: true,
      clothesType: 'kids',
      ratings: 4.333333333333333,
      colors: ['black', 'white', 'red'],
      imageUrls: [
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
      ],
      sizes: ['7', '8', '9', '10', '11'],
      createdAt: DateTime.parse('2024-06-06T07:57:45Z'),
      category: 3,
      brand: 1),
  Product(
      id: 1,
      title: 'LV Trainers',
      price: 798.88,
      description:
          'LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury.',
      isFeatured: true,
      clothesType: 'women',
      ratings: 4.5,
      colors: ['white', 'black', 'red'],
      imageUrls: [
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
      ],
      sizes: ['7', '8', '9', '10', '11'],
      createdAt: DateTime.parse('2024-06-06T07:49:15Z'),
      category: 3,
      brand: 1),
  Product(
      id: 2,
      title: 'Adidas Ultraboost',
      price: 180,
      description:
          'Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.',
      isFeatured: true,
      clothesType: 'unisex',
      ratings: 5,
      colors: ['navy', 'grey', 'blue'],
      imageUrls: [
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp',
        'https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp'
      ],
      sizes: ['7', '8', '9', '10', '11'],
      createdAt: DateTime.parse('2024-06-06T07:55:20Z'),
      category: 3,
      brand: 1)
];

// String avatar =
//     'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Favatar.png?alt=media&token=7da81de9-a163-4296-86ac-3194c490ce15';

// class _buildtextfield extends StatelessWidget {
//   const _buildtextfield({
//     Key? key,
//     required this.hintText,
//     required this.controller,
//     required this.onSubmitted,
//     this.keyboard,
//     this.readOnly,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType? keyboard;
//   final void Function(String)? onSubmitted;
//   final bool? readOnly;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20.0),
//       child: TextField(
//           keyboardType: keyboard,
//           readOnly: readOnly ?? false,
//           decoration: InputDecoration(
//               hintText: hintText,
//               errorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               focusedBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kPrimary, width: 0.5),
//               ),
//               focusedErrorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               disabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               enabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               border: InputBorder.none),
//           controller: controller,
//           cursorHeight: 25,
//           style: appStyle(12, Colors.black, FontWeight.normal),
//           onSubmitted: onSubmitted),
//     );
//   }
// }
