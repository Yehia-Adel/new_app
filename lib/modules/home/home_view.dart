import 'package:flutter/material.dart';
import 'package:news_app/core/extentions/padding.dart';
import 'package:news_app/core/theme/color_palette.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/modules/home/widgets/category_home_view.dart';
import 'package:news_app/modules/home/widgets/selected_category.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  CategoriesModel? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> categoriesList = [
      CategoriesModel("business", "Bussiness", "assets/images/business.png"),
      CategoriesModel("general", "General", "assets/images/general.png"),
      CategoriesModel("sports", "Sports", "assets/images/sports.png"),
      CategoriesModel(
          "technology", "Technology", "assets/images/technology.png"),
    ];

    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: theme.textTheme.titleLarge!
              .copyWith(color: ColorPalette.black, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ).setHorizontalPadding(context, 0.02)
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: _selectedCategory == null
            ? CategoryHomeView(
                categoriesList: categoriesList,
                onCategoryClicked: onCategoryClicked,
              )
            : SelectedCategory(),
      ),
    );
  }

  void onCategoryClicked(CategoriesModel selectedCategory) {
    _selectedCategory = selectedCategory;
  }
}
