
import 'package:flutter/material.dart';
import 'package:medical_appointment/core/styles/app_styles.dart';

class CategoryIcons{
  String pathName;
  Color bgColor;

  CategoryIcons({required this.pathName, required this.bgColor});


  static List<CategoryIcons> getIcons(){
    List<CategoryIcons> iconPaths =[
      CategoryIcons(pathName: "assets/icons/Heart.svg", bgColor: Colors.white),
      CategoryIcons(pathName: "assets/icons/Pil.svg", bgColor: Colors.white),
      CategoryIcons(pathName: "assets/icons/Dentist.svg", bgColor: AppStyles.primary),
      CategoryIcons(pathName: "assets/icons/Heart.svg", bgColor: Colors.white),

    ];

    return iconPaths;
  }


}

