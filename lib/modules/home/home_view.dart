import 'package:flutter/material.dart';
import 'package:news_app/core/extentions/padding.dart';
import 'package:news_app/core/theme/color_palette.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/modules/home/widgets/category_home_view.dart';
import 'package:news_app/modules/home/widgets/selected_category.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CategoryModel? _selectedCategory;

  List<CategoryModel> categoriesList = [
    CategoryModel(
        categoryID: "business",
        categoryName: "Bussiness",
        categoryImg: "assets/images/business.png"),
    CategoryModel(
        categoryID: "general",
        categoryName: "General",
        categoryImg: "assets/images/general.png"),
    CategoryModel(
        categoryID: "sports",
        categoryName: "Sports",
        categoryImg: "assets/images/sports.png"),
    CategoryModel(
        categoryID: "technology",
        categoryName: "Technology",
        categoryImg: "assets/images/technology.png"),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedCategory == null ? "Home" : _selectedCategory!.categoryName,
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
      body: _selectedCategory == null
          ? CategoryHomeView(
              categoriesList: categoriesList,
              onCategoryClicked: onCategoryClicked,
            )
          : SelectedCategory(
              selectedCategoryModel: _selectedCategory!,
            ),
    );
  }

  void onCategoryClicked(CategoryModel selectedCategory) {
    _selectedCategory = selectedCategory;
  }
}
