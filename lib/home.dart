import 'package:flutter/material.dart';
import 'package:flutter_gradient_range_slider/GradientSlider.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double start = 0;
  double end = 2500;
  RangeValues val = RangeValues(0, 2500);
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Center(
        child: Container(
            width: 262.5,
            height: 20,
            child:
            SliderTheme(
                data: SliderThemeData(
                    trackHeight: 10,
                    thumbColor: Colors.green,
                    // inactiveTickMarkColor: Color(0xFFE6E6E6),
                    rangeTrackShape: Gradient_Slider()
                ),
                child: RangeSlider(
                  inactiveColor: Colors.grey.withOpacity(0.5),
                  onChanged: (value){
                    setState(() {
                      val = value;
                    });
                  },
                  min: start,
                  max: end,
                  values: val,
                )
            ),
        ),
      ),
    );

  }
}
