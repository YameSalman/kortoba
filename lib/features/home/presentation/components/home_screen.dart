import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import 'CarouselWidget.dart';
import 'home_cateories__list.dart';
import 'home_items_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      {
        'name': 'أزياء',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'نسائى',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'رجالى',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'ألعاب',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'أزياء',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'نسائى',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'رجالى',
        'image': 'assets/images/core/category.jpg',
      },
      {
        'name': 'ألعاب',
        'image': 'assets/images/core/category.jpg',
      },
    ];
    var list2 = [
      {
        'name': 'أزياء',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'نسائى',
        'image': 'assets/images/core/category.jpg',
        'isFav': false,
        'price': '125',
      },
      {
        'name': 'رجالى',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'ألعاب',
        'image': 'assets/images/core/category.jpg',
        'isFav': false,
        'price': '125',
      },
      {
        'name': 'أزياء',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'نسائى',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'رجالى',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
      {
        'name': 'ألعاب',
        'image': 'assets/images/core/category.jpg',
        'isFav': true,
        'price': '125',
      },
    ];

    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.screenPaddingH16),
            child: SizedBox(
              height: Sizes.widgetSizeV170,
              child: CarouselSliderPage(),
            ),
          ),
          const SizedBox(
            height: Sizes.marginV18,
          ),
          Padding(
            padding: const EdgeInsets.only(right: Sizes.screenPaddingH16),
            child: SizedBox(
              height: Sizes.widgetSizeV100,
              child: HomeCategoriesList(
                list: list,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: Sizes.screenPaddingH16),
            child: HomeItemsList(
              list: list2,
              title: 'وصل حديثا',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: Sizes.screenPaddingH16),
            child: HomeItemsList(
              list: list2,
              title: 'الأكثر شعبية',
            ),
          ),
        ],
      ),
    );
  }
}
