import 'dart:ui';
// 屏幕宽度（px）
final double screenWidth = window.physicalSize.width;
// 屏幕宽度（px）
final double screenHeight = window.physicalSize.height;
// 效果图宽度（iPhone6 750*1334）
final double uiWidth = 750;
// 效果图宽度（iPhone6 750*1334）
final double uiHeight = 1334;
// 像素比
final double devicePixelRatio = window.devicePixelRatio;
// 宽度比率
final double scaleWidth = screenWidth / uiWidth / devicePixelRatio;
// 高度比率
final double scaleHeight = screenHeight / uiHeight / devicePixelRatio;

// 仿移动端 rem 解决方案
double rem(double n) {
  return n * scaleWidth;
}

double rem2(double n) {
  return n * scaleHeight;
}