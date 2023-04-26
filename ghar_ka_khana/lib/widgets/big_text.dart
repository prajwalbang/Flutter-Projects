import 'package:flutter/cupertino.dart';
import 'package:ghar_ka_khana/utils/dimensions.dart';

//our reusable Bigtext widget
class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size, //if else in short
      ),
    );
  }
}
