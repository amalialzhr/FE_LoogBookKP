import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class ListkerjaItemWidget extends StatelessWidget {
  final String namaTempat;
  final String tanggalKP;

  const ListkerjaItemWidget({
    Key? key,
    required this.namaTempat,
    required this.tanggalKP,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              tanggalKP,
              style: CustomTextStyles.bodySmall9,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              namaTempat,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            height: 21.v,
            width: 101.h,
            text: "Lihat Logbook",
            buttonTextStyle: theme.textTheme.labelMedium!,
            alignment: Alignment.centerRight,
            onPressed: () {
              // Panggil Navigator untuk navigasi ke halaman LogbookpageScreen
              Navigator.pushNamed(context, AppRoutes.logbookpageScreen);
            },
          )
        ],
      ),
    );
  }
}
