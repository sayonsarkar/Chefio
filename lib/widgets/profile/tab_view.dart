import 'package:chefio/widgets/profile/custom_tab.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/widgets/profile/recipe_grid.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  final TabController? tabController;
  const TabView({Key? key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            labelColor: Kcolor.mainText,
            unselectedLabelColor: Kcolor.textGrey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Kcolor.appGreenColor,
            labelPadding: EdgeInsets.zero,
            tabs: [
              customeTab(context, text: 'Recipes'),
              customeTab(context, text: 'Liked'),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: TabBarView(
                controller: tabController,
                children: const [
                  RecipeGrid(),
                  RecipeGrid(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
