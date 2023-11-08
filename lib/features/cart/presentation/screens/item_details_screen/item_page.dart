import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

import '../../../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../../../core/presentation/styles/styles.dart';

class ItemPage extends HookWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: customColors(context).whiteColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Sizes.widgetRadius8), // Adjust the radius to control the rounding
                bottomRight: Radius.circular(Sizes.widgetRadius8),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: Sizes.marginH17, vertical: Sizes.marginV18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'Images.categoryImage',
                      width: double.infinity,
                      height: Sizes.widgetSizeV253,
                      fit: BoxFit.cover,
                    ),
                    HookBuilder(
                      builder: (context) {
                        final favourite = useState<bool>(false);
                        return IconButton(
                          splashColor: Colors.transparent,
                          onPressed: () {
                            favourite.value = !favourite.value;
                          },
                          icon: Icon(
                            favourite.value ? Icons.favorite : Icons.favorite_border,
                            color:
                                favourite.value ? customColors(context).orangeColor : customColors(context).greyColor,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.marginV11,
                ),
                Container(
                  margin: const EdgeInsets.only(top: Sizes.marginV9),
                  width: double.infinity,
                  child: Text(
                    'قلادة نسائية مطلية بالذهب على شكل شكل إنفينيتي مرصعة بالتوباز الأبيض من ديفاز دايموند',
                    textAlign: TextAlign.start,
                    style: TextStyles.blackMediumF12(context),
                    textScaleFactor: 1.5,
                  ),
                ),
                const SizedBox(
                  height: Sizes.marginV7,
                ),
                Row(
                  children: [
                    Text(
                      '199.00',
                      style: TextStyles.blueBoldF14(context),
                    ),
                    Text(
                      'ج.م',
                      style: TextStyles.blueMediumF12(context),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.marginV10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button action here
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0, minimumSize: const Size.fromHeight(Sizes.widgetSizeV40),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(Sizes.widgetRadius8),
                              bottomLeft: Radius.circular(Sizes.widgetRadius8),
                            ),
                          ),
                          backgroundColor: customColors(context).blueColor, // Set the background color
                        ),
                        child: Text('نقل إلى سلة التسوق', style: TextStyles.whiteBoldF16(context)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
