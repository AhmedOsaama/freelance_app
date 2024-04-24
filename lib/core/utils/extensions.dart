import 'package:flutter/cupertino.dart';

extension EmptyPadding on num{
  SizedBox get h => SizedBox(height: toDouble(),);
  SizedBox get w => SizedBox(width: toDouble(),);
}