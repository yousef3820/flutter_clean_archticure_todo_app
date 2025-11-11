import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final double currentValue;
  final void Function(dynamic value) onChange;
  const SliderWidget({
    super.key,
    required this.currentValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: currentValue,
      onChanged: onChange,
      min: 1,
      max: 10,
      divisions: 9,
      label: currentValue.toString(),
      activeColor: Colors.blue,
    );
  }
}
