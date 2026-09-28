
import 'package:flutter/cupertino.dart';

class Helper{

 static double midFont=20;

 static double smallfont=15;

 static double paddingViews=12;
 static double midPaddingViews=8;

 static double paddingViewsVertical=20;
 static double paddingViewsHorizontal=10;

 static double heightQueryRatio=.095;
 static double calculateRatioHeight(BuildContext context,double ratio){
  return MediaQuery.of(context).size.height*ratio;
 }
 static double calculateRatioWidth(BuildContext context,double ratio){
  return MediaQuery.of(context).size.width*ratio;
 }
}