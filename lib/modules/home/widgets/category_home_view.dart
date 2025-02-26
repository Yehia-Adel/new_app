import 'package:flutter/material.dart';
import 'package:news_app/core/extentions/padding.dart';
import 'package:news_app/models/categories_model.dart';

import '../../../core/theme/color_palette.dart';

class CategoryHomeView extends StatelessWidget {
  final List<CategoryModel> categoriesList;
  final void Function(CategoryModel) onCategoryClicked;

  const CategoryHomeView(
      {super.key,
      required this.categoriesList,
      required this.onCategoryClicked});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Good Morning\nHere is Some News For You",
            style: theme.textTheme.headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ).setHorizontalPadding(context, 0.02),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(15),
                    alignment: index % 2 == 0
                        ? Alignment.bottomRight
                        : Alignment.bottomLeft,
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        color: ColorPalette.black,
                        image: DecorationImage(
                          image: AssetImage(categoriesList[index].categoryImg),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {
                        onCategoryClicked(categoriesList[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Directionality(
                          textDirection: index % 2 == 0
                              ? TextDirection.ltr
                              : TextDirection.rtl,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "View All",
                                style: TextStyle(
                                    color: ColorPalette.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400),
                              ).setHorizontalPadding(context, 0.01),
                              CircleAvatar(
                                  backgroundColor: ColorPalette.white,
                                  // style: IconButton.styleFrom(
                                  //     backgroundColor: ColorPalette.white),
                                  // onPressed: () {},
                                  child: Icon(
                                    index % 2 == 0
                                        ? Icons.arrow_forward_ios
                                        : Icons.arrow_forward_ios,
                                    color: ColorPalette.black,
                                    size: 20,
                                  ))
                            ],
                          ),
                        ),
                      )
                          .setVerticalPadding(context, 0.02)
                          .setHorizontalPadding(context, 0.02),
                    ),
                  ).setHorizontalPadding(context, 0.05),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: categoriesList.length)
          // HomeCardItem()
        ],
      ),
    );
  }
}
