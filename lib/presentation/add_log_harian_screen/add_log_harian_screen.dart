import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'dart:io'; // Impor untuk menggunakan kelas File
import 'package:file_picker/file_picker.dart'; // Impor untuk menggunakan FilePicker
import '../../widgets/app_bar/appbar_subtitle.dart';

class AddLogHarianScreen extends StatelessWidget {
  AddLogHarianScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();
  TextEditingController edittextoneController = TextEditingController();
  TextEditingController edittexttwoController = TextEditingController();
  TextEditingController edittextthreeController = TextEditingController();

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
                        text: "Tambah",
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
                "Tambah Log Book",
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
          maxLines: null, // atau -1
          style: TextStyle(color: Colors.black), // Atur warna teks input
          decoration: InputDecoration(
            // Dekorasi untuk kotak input
            filled: true,
            fillColor: Colors.grey[200], // Warna latar belakang kotak input
            border: OutlineInputBorder(
              // Mengatur bentuk border
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              // Mengatur border saat input aktif
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                  color: Colors.blue), // Warna border saat input aktif
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
          maxLines: null, // atau -1
          style: TextStyle(color: Colors.black), // Atur warna teks input
          decoration: InputDecoration(
            // Dekorasi untuk kotak input
            filled: true,
            fillColor: Colors.grey[200], // Warna latar belakang kotak input
            border: OutlineInputBorder(
              // Mengatur bentuk border
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              // Mengatur border saat input aktif
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                  color: Colors.blue), // Warna border saat input aktif
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
          maxLines: null, // atau -1
          style: TextStyle(color: Colors.black), // Atur warna teks input
          decoration: InputDecoration(
            // Dekorasi untuk kotak input
            filled: true,
            fillColor: Colors.grey[200], // Warna latar belakang kotak input
            border: OutlineInputBorder(
              // Mengatur bentuk border
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              // Mengatur border saat input aktif
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                  color: Colors.blue), // Warna border saat input aktif
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
          maxLines: null, // atau -1
          style: TextStyle(color: Colors.black), // Atur warna teks input
          decoration: InputDecoration(
            // Dekorasi untuk kotak input
            filled: true,
            fillColor: Colors.grey[200], // Warna latar belakang kotak input
            border: OutlineInputBorder(
              // Mengatur bentuk border
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              // Mengatur border saat input aktif
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                  color: Colors.blue), // Warna border saat input aktif
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnFileTerka(BuildContext context) {
    File? selectedFile; // Variabel untuk menyimpan file yang dipilih

    // Fungsi untuk memilih file dari perangkat
    void _selectFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        selectedFile = File(result.files.single.path!);
        // Lakukan sesuatu dengan file yang dipilih, misalnya menampilkannya atau mengunggahnya
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
        SizedBox(width: 10), // Jarak antara teks dan tombol
        Container(
          width: 70.h,
          height: 40.h,
          padding: EdgeInsets.symmetric(
            // horizontal: 10.h,
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
