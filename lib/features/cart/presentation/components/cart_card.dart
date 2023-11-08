import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../../core/presentation/styles/styles.dart';

class CartCard extends HookWidget {
  const CartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return HookBuilder(
            builder: (context) {
              final itemCount = useState<int>(0);
              return Container(
                margin: const EdgeInsets.only(bottom: Sizes.marginV16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.widgetRadius5), // Adjust the radius as needed
                  color: customColors(context).whiteColor,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Sizes.widgetSizeV111,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(Sizes.widgetRadius5), // Adjust the radius as needed
                            ),
                            child: Image.asset(
                              'Images.categoryImage',
                              width: Sizes.widgetSizeH123,
                              height: Sizes.widgetSizeV111,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.marginH8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: Sizes.marginV9),
                                width: Sizes.widgetSizeH188,
                                child: Text(
                                  'عطر برائحة القرنفل والسدر الجبلي مناسب للسهرات والهدايا مغلف في زجاجة مرصعة بالذهب',
                                  textAlign: TextAlign.start,
                                  style: TextStyles.blackMediumF12(context),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: Sizes.marginV14),
                                child: Row(
                                  children: [
                                    Text(
                                      '199.00',
                                      style: TextStyles.blueBoldF14(context),
                                    ),
                                    Text(
                                      'ج.م',
                                      style: TextStyles.blackMediumF12(context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1, color: Colors.black),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                itemCount.value++;
                              },
                              child: Container(
                                width: Sizes.widgetSizeH38,
                                height: Sizes.widgetSizeV38,
                                decoration: BoxDecoration(
                                  color: customColors(context).blueColor,
                                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(6)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: customColors(context).whiteColor,
                                    size: Sizes.icon24, // You can adjust the icon size as needed
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Sizes.widgetSizeH47,
                              height: Sizes.widgetSizeV38,
                              child: Center(
                                child: Text(
                                  '${itemCount.value}',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (itemCount.value > 0) itemCount.value--;
                              },
                              child: Container(
                                width: Sizes.widgetSizeH38,
                                height: Sizes.widgetSizeV38,
                                decoration: BoxDecoration(
                                  color: customColors(context).blueColor,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: customColors(context).whiteColor,
                                    size: Sizes.icon24, // You can adjust the icon size as needed
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                (69.650 * itemCount.value).toStringAsFixed(2),
                                style: TextStyles.blackMediumF16(context),
                              ),
                              Text(
                                'ج.م',
                                style: TextStyles.blackMediumF12(context),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(Sizes.widgetRadius5),
                          ),
                          child: Container(
                            width: Sizes.widgetSizeH38,
                            height: Sizes.widgetSizeV38,
                            color: customColors(context).orangeColor,
                            child: SvgPicture.asset(
                              'Images.categoryImage', // Replace with the URL of your SVG image
                              width: Sizes.widgetSizeV7,
                              height: Sizes.widgetSizeH7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
