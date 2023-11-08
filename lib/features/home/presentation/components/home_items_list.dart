import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import 'home_items.dart';

class HomeItemsList extends StatelessWidget {
  final List list;
  final String title;
  const HomeItemsList({
    super.key,
    required this.list,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.buttonPaddingV8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyles.blackBoldF14(context),
                ),
                Text(
                  'عرض الكل',
                  style: TextStyles.blackMediumF12(context),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Sizes.widgetSizeV210,
            width: double.infinity,
            child: ListView.separated(
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return SizedBox(
                  width: Sizes.widgetSizeV135,
                  child: HomeItems(
                    image: list[i]['image'].toString(),
                    name: list[i]['name'].toString(),
                    isFav:  false,
                    price: list[i]['price'].toString(),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: Sizes.marginH16,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
