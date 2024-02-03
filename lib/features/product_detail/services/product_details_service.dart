import 'dart:convert';

import 'package:amazone/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant/error_handlings.dart';
import '../../../constant/global_variables.dart';
import '../../../constant/ultils.dart';
import '../../../models/product.dart';
import 'package:http/http.dart' as http;

class ProductDetailsServices {
  // void addToCart({
  //   required BuildContext context,
  //   required Product product,
  // })async{

  // }
  void rateProduct({
    required BuildContext context,
    required Product product,
    required double rating,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/rate-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.id!,
          'rating': rating,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {},
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
