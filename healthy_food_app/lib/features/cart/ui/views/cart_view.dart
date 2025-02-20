import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/cart_view_body.dart';
import 'package:healthy_food_app/features/cart/ui/widgets/custom_app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const String id = 'CartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CartViewBody(),
      ),
    );
  }
}
