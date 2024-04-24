import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';

// ignore_for_file: must_be_immutable
class EditLogHarianScreen extends StatelessWidget {
  EditLogHarianScreen({Key? key})
      : super(
          key: key,
        );

  // Controller untuk setiap kotak input
  TextEditingController edittextController =
      TextEditingController(text: "40 Desember 8453");
  TextEditingController edittextoneController =
      TextEditingController(text: "Membuat FE untuk Role XYZ");
  TextEditingController edittexttwoController = TextEditingController(
      text:
          "Langkah-langkah utama yang saya ambil termasuk merancang tata letak (layout) halaman, mendesain elemen UI seperti tombol dan input field, serta menyesuaikan desain dengan kebutuhan fungsional");
  TextEditingController edittextthreeController = TextEditingController(
      text:
          "Pengembangan UI Role XYZ menggunakan Flutter.\nIntegrasi fitur UI dengan logika backend.\nPengujian fungsional dan debugging.\nKolaborasi dengan tim backend dan desainer UI.");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 42.v,
                  ),
                  child: Column(
                    children: [
                      _buildColumnWaktu(context),
                      SizedBox(height: 15.v),
                      _buildColumnKegiatan(context),
                      SizedBox(height: 11.v),
                      _buildColumnRincian(context),
                      SizedBox(height: 10.v),
                      _buildColumnCapaian(context),
                      SizedBox(height: 12.v),
                      _buildColumnFileTerka(context),
                      SizedBox(height: 80.v),
                      CustomElevatedButton(
                        text: "Update",
                        margin: EdgeInsets.only(
                          left: 100.h,
                          right: 100.h,
                        ),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      SizedBox(height: 5.v)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
                "Edit Log Book",
                style: CustomTextStyles.bodyLarge_1,
              )
            ],
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  Widget _buildColumnWaktu(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Waktu",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 2.v),
        TextField(
          controller: edittextController,
          maxLines: null,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnKegiatan(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kegiatan",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 1.v),
        TextField(
          controller: edittextoneController,
          maxLines: null,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnRincian(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rincian Kegiatan",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 1.v),
        TextField(
          controller: edittexttwoController,
          maxLines: null,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnCapaian(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Capaian",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 1.v),
        TextField(
          controller: edittextthreeController,
          maxLines: null,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnFileTerka(BuildContext context) {
    File? selectedFile;

    void _selectFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        selectedFile = File(result.files.single.path!);
      } else {
        // User tidak memilih file
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "File Terkait ",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(width: 10),
        Container(
          width: 70.h,
          height: 40.h,
          padding: EdgeInsets.symmetric(
            vertical: 11.v,
          ),
          child: ElevatedButton(
            onPressed: _selectFile,
            child: Text(
              'Pilih File',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
