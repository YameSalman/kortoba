import 'package:flutter/material.dart';

import '../../../../core/presentation/styles/styles.dart';
import 'home_cateories.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({
    required this.list, super.key,
  });
  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      reverse: true,
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return Row(
          children: [
            const SizedBox(
              width: Sizes.marginH16,
            ),
            HomeCategories(
              image: list[i]['image'].toString(),
              name: list[i]['name'].toString(),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: Sizes.marginH8,
        );
      },
    );
  }
}
