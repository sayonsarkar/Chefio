import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/screens/scanReport/food_page.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class ModalScanSheet extends StatelessWidget {
  const ModalScanSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Icon(Icons.close),
              ),
              SizedBox(width: 60),
              Text(
                'Choose one option',
                style: KTextStyle.mediumMainText,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, FoodScreen.id);
                  },
                  child: Assets.images.food.image(scale: 2)),
              Assets.images.ingredient.image(scale: 2),
            ],
          )
        ],
      ),
    );
  }
}
