import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class RecipeGrid extends StatelessWidget {
  const RecipeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 0.9),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Assets.images.recipeImage.image(scale: 2),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: Assets.icons.heart.image(scale: 2),
                  ),
                ],
              ),
              const Text('Pancake', style: KTextStyle.boldMainText),
              const Text('Food >60 min', style: KTextStyle.smallGreyText)
            ],
          ),
        );
      },
    );
  }
}
