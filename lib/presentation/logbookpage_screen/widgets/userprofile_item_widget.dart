import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "40 Desember 2080",
              style: CustomTextStyles.bodySmall9,
            ),
            Text(
              "Membuat FrontEnd untuk Role ABC",
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 30.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgInformation2,
                      height: 18.v,
                      width: 14.h,
                      onTap: () {
                        print('Tombol Detail diklik');
                        Navigator.pushNamed(
                            context, AppRoutes.detailLogHarianScreen);
                      },
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPen1,
                      height: 18.v,
                      width: 14.h,
                      margin: EdgeInsets.only(left: 6.h),
                      onTap: () {
                        print('Tombol Edit diklik');
                        Navigator.pushNamed(
                            context, AppRoutes.editLogHarianScreen);
                      },
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBin1,
                      height: 18.v,
                      width: 14.h,
                      margin: EdgeInsets.only(left: 6.h),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }
}
