// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// import '../../widgets/app_bar/appbar_trailing_image.dart';
// import '../../widgets/app_bar/custom_app_bar.dart';
// import '../../widgets/custom_floating_button.dart';
// import 'widgets/userprofile_item_widget.dart';

// class LogbookpageScreen extends StatelessWidget {
//   const LogbookpageScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: _buildAppBar(context),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 19.h, top: 33.v),
//                 child: Text(
//                   "LogBook - KP Diskominfotik",
//                   style: theme.textTheme.titleMedium,
//                 ),
//               ),
//               SizedBox(height: 14.v),
//               _buildUserProfile(context),
//               SizedBox(height: 15.v),
//               CustomImageView(
//                 imagePath: ImageConstant.imgClose,
//                 height: 40.v,
//                 width: 26.h,
//                 alignment: Alignment.centerRight,
//                 margin: EdgeInsets.only(right: 74.h),
//               ),
//               SizedBox(height: 46.v)
//             ],
//           ),
//         ),
//         floatingActionButton: _buildFloatingActionButton(context),
//       ),
//     );
//   }

//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//       title: Row(
//         children: [
//           IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.white),
//             onPressed: () {
//               Navigator.pop(context); // Kembali ke halaman sebelumnya
//             },
//           ),
//           SizedBox(width: 8.h),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Amalia Sandi",
//                 style: CustomTextStyles.bodyLarge_1,
//               ),
//               Row(
//                 // Use Row for horizontal layout
//                 children: [
//                   SizedBox(width: 2.h), // Reduce horizontal spacing
//                   Text(
//                     "-",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12.h,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//       actions: [
//         AppbarTrailingImage(
//           imagePath: ImageConstant.imgMingcuteUser4Fill,
//           margin: EdgeInsets.fromLTRB(23.h, 15.v, 23.h, 24.v),
//         )
//       ],
//       styleType: Style.bgFill,
//     );
//   }

//   Widget _buildUserProfile(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 19.h),
//         child: ListView.separated(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           separatorBuilder: (context, index) {
//             return Padding(
//               padding: EdgeInsets.symmetric(vertical: 4.5.v),
//               child: Divider(
//                 height: 1.v,
//                 thickness: 1.v,
//                 color: appTheme.gray400,
//               ),
//             );
//           },
//           itemCount: 6,
//           itemBuilder: (context, index) {
//             return UserprofileItemWidget();
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildFloatingActionButton(BuildContext context) {
//     return CustomFloatingButton(
//       height: 41,
//       width: 39,
//       child: CustomImageView(
//         imagePath: ImageConstant.imgClose,
//         height: 20.5.v,
//         width: 19.5.h,
//       ),
//       onTap: () {
//         print('Tombol Add diklik');
//         Navigator.pushNamed(context, AppRoutes.addLogHarianScreen);
//       },
//     );
//   }
// }

import 'package:amalia_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import 'widgets/userprofile_item_widget.dart';

class LogbookpageScreen extends StatelessWidget {
  const LogbookpageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Add space before _buildRowLockOne
                SizedBox(height: 16.0), // Adjust spacing as needed
                _buildRowLockOne(context),
                SizedBox(height: 30.0), // Adjust spacing as needed (optional)

                _buildUserProfile(context),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          SizedBox(width: 8.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "List Log Book",
                style: CustomTextStyles.bodyLarge_1,
              )
            ],
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  Widget _buildRowLockOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), // Ubah menjadi circular
        border:
            Border.all(color: Theme.of(context).primaryColor), // Tambah border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: CustomIconButton(
              height: 54.v,
              width: 54.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amalia Sandi Alzahrah",
                  style: TextStyle(
                    color: Theme.of(context)
                        .primaryColor, // Menggunakan warna primer
                    fontWeight: FontWeight.bold, // Ketebalan font
                  ),
                ),
                Text(
                  "Diskominfotiksumbar",
                  style: CustomTextStyles.bodySmall9bold,
                ),
                Text(
                  "1 Dese 2080 - 30 Jan 2081",
                  style: CustomTextStyles.bodySmall9,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 6.v,
          );
        },
        itemCount: 12,
        itemBuilder: (context, index) {
          return UserprofileItemWidget(index: index);
        },
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 41,
      width: 39,
      child: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 20.5.v,
        width: 19.5.h,
      ),
      onTap: () {
        print('Tombol Add diklik');
        Navigator.pushNamed(context, AppRoutes.addLogHarianScreen);
      },
    );
  }
}
