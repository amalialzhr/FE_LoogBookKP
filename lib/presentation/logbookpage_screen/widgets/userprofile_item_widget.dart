// import 'package:flutter/material.dart';
// import '../../../core/app_export.dart'; // ignore: must_be_immutable

// class UserprofileItemWidget extends StatelessWidget {
//   const UserprofileItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: 8.h,
//           vertical: 6.v,
//         ),
//         decoration: AppDecoration.outlineOnPrimary.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder5,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "40 Desember 2080",
//               style: CustomTextStyles.bodySmall9,
//             ),
//             Text(
//               "Membuat FrontEnd untuk Role ABC",
//               style: theme.textTheme.bodySmall,
//             ),
//             SizedBox(height: 30.v),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Padding(
//                 padding: EdgeInsets.only(right: 7.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.imgInformation2,
//                       height: 18.v,
//                       width: 14.h,
//                       onTap: () {
//                         print('Tombol Detail diklik');
//                         Navigator.pushNamed(
//                             context, AppRoutes.detailLogHarianScreen);
//                       },
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgPen1,
//                       height: 18.v,
//                       width: 14.h,
//                       margin: EdgeInsets.only(left: 6.h),
//                       onTap: () {
//                         print('Tombol Edit diklik');
//                         Navigator.pushNamed(
//                             context, AppRoutes.editLogHarianScreen);
//                       },
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgBin1,
//                       height: 18.v,
//                       width: 14.h,
//                       margin: EdgeInsets.only(left: 6.h),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 4.v)
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:amalia_s_application1/presentation/detail_log_harian_screen/detail_log_harian_screen.dart';
import 'package:amalia_s_application1/presentation/edit_log_harian_screen/edit_log_harian_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class UserprofileItemWidget extends StatelessWidget {
  final int index;

  const UserprofileItemWidget({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.v,
            width: 32.v, // Adjust width for desired circle size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ), // Warna outline
              color: Theme.of(context)
                  .primaryColor
                  .withOpacity(0.1), // Warna isi lingkaran
            ),
            child: Center(
              child: Text(
                (index + 1).toString(), // Tambah 1 untuk memulai dari 1
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                  fontWeight:
                      Theme.of(context).textTheme.titleSmall!.fontWeight,
                ),
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Senin, 1 Desember 2080",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Membuat Frontend Bagian Ini",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Detail':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailLogHarianScreen(),
                    ),
                  );
                  break;
                case 'Edit':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditLogHarianScreen(),
                    ),
                  );
                  break;
                case 'Delete':
                  // Implement delete functionality here
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Detail',
                  child: Row(
                    children: [
                      Icon(Icons.details, color: Colors.blue), // Icon Detail
                      SizedBox(width: 8.0),
                      Text('Detail'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Edit',
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.orange), // Icon Edit
                      SizedBox(width: 8.0),
                      Text('Edit'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Delete',
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red), // Icon Delete
                      SizedBox(width: 8.0),
                      Text('Delete'),
                    ],
                  ),
                ),
              ];
            },
            icon: CustomImageView(
              imagePath:
                  ImageConstant.morevertical, // Replace with your icon path
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 9.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
