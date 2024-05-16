import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/listkerja_item_widget.dart';

class MainpageScreen extends StatelessWidget {
  const MainpageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: _buildAppBar(context), // Pass sh,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAuthorSettings(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "List Kerja Praktek",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 13.v),
              _buildListKerja(context)
            ],
          ),
        ),
      ),
    );
  }

  // /// Section Widget
  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //     title: Padding(
  //       padding: EdgeInsets.only(left: 22.h),
  //       child: Column(
  //         children: [
  //           AppbarSubtitle(
  //             text: "Amalia Sandi ",
  //             margin: EdgeInsets.only(right: 18.h),
  //           ),
  //           AppbarSubtitleOne(
  //             text: "-",
  //             margin: EdgeInsets.only(right: 90.h),
  //           )
  //         ],
  //       ),
  //     ),
  //     actions: [
  //       AppbarTrailingImage(
  //         imagePath: ImageConstant.imgMingcuteUser4Fill,
  //         margin: EdgeInsets.fromLTRB(23.h, 15.v, 23.h, 24.v),
  //       )
  //     ],
  //     styleType: Style.bgFill,
  //   );
  // }
  Widget _buildAuthorSettings(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor, // Warna outline
        ),
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: CustomIconButton(
              height: 54.v,
              width: 55.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amalia Sandi Alzahrah",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor, // Warna teks nama
                    fontWeight: FontWeight.bold, // Ketebalan font
                  ),
                ),
                Text(
                  "Sistem Informasi",
                  style: TextStyle(
                    color: Colors.black, // Warna teks label
                    // Ketebalan font
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListKerja(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 7.5.v),
            child: SizedBox(
              width: 322.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray400,
              ),
            ),
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          String namaTempat = (index == 0)
              ? "Kerja Praktek Diskominfotik"
              : "Magang di PT. ABC";
          String tanggalKP = (index == 0)
              ? "40 Desember 2080 - 30 Desember 2050"
              : "20 Januari 2090 - 10 Februari 2090";
          return ListkerjaItemWidget(
            namaTempat: namaTempat,
            tanggalKP: tanggalKP,
          );
        },
      ),
    );
  }
}
