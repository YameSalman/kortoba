import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../../core/presentation/styles/styles.dart';

class HomeItems extends HookWidget {
  const HomeItems({
    required this.name,
    required this.image,
    required this.isFav,
    required this.price,
    super.key,
  });
  final String name, image, price;
  final bool isFav;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Sizes.widgetSizeV115,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Sizes.widgetRadius5),
              topRight: Radius.circular(Sizes.widgetRadius5),
            ),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: HookBuilder(
            builder: (context) {
              final favorite = useState<bool>(false);
              return IconButton(
                onPressed: () {
                  favorite.value = !favorite.value;
                },
                icon: Icon(
                  favorite.value ? Icons.favorite : Icons.favorite_border,
                  color: favorite.value ? customColors(context).orangeColor : customColors(context).greyColor,
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.paddingH7, vertical: Sizes.paddingV10),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyles.blackMediumF12(context),
              ),
              const SizedBox(
                height: Sizes.marginH8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(price, style: TextStyles.blueBoldF14(context)),
                      Text('ج.م', style: TextStyles.blackMediumF12(context)),
                    ],
                  ),
                  Icon(
                    Icons.add_shopping_cart_outlined,
                    color: customColors(context).greyColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
