import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/features/presentaion/view_model/food_cubit/food_cubit.dart';
import 'package:healthy_food_app/features/presentaion/views/widgets/food_items_grid_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AllFoodsView extends StatelessWidget {
  const AllFoodsView({super.key});
  static String id = '/AllFoodsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Foods'),
      ),
      body: BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          if (state is FoodLoaded) {
            return FoodItemsGridView(
              foodModels: state.foodItems,
            );
          } else if (state is FoodError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Center(
              child: LoadingAnimationWidget.discreteCircle(
                size: 40,
                color: AppColors.primaryColor,
              ),
            );
          }
        },
      ),
    );
  }
}
