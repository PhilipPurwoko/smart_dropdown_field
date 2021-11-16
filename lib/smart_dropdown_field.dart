library smart_dropdown_field;

import 'package:flutter/material.dart';
import 'package:smart_dropdown_field/function.dart';

class SmartDropdownField extends StatelessWidget {
  const SmartDropdownField({
    this.value,
    this.items,
    this.hint,
    this.disabledHint,
    this.decoration,
    this.validator,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  final Object? value;
  final List<DropdownMenuItem<Object?>>? items;
  final Widget? hint;
  final Widget? disabledHint;
  final InputDecoration? decoration;
  final String? Function(Object?)? validator;
  final void Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Object?>(
      value: getSelectedValue(
        valueSelected: value,
        dropDownItems: items,
      ),
      items: items,
      hint: hint,
      disabledHint: disabledHint,
      decoration: decoration,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
