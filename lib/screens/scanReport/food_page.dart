import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/profile/recipe_grid.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  static const String id = '/foodScreen';
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Food', textScaleFactor: 1),
              background: Column(
                children: [
                  Assets.images.capturedFood.image(scale: 2),
                  const Text(
                    'Pancackes',
                    style: KTextStyle.bigBoldBlackText,
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Expanded(
              child: RecipeGrid(),
            ),
          )
        ],
      ),
    );
  }
}
