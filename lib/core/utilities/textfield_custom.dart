import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? errorText;
  final TextInputType keyboardType;
  final bool? readOnly;
  final int maxLines;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingCompleted;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.keyboardType = TextInputType.text,
      this.readOnly,
      this.maxLines = 1,
      this.focusNode,
      this.onChanged,
      this.suffixIcon,
      this.errorText,
      this.inputFormatters,
      this.validator,
      this.onFieldSubmitted,
      this.onEditingCompleted});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    if (focusNode != null) {
      focusNode!.addListener(() {
        if (focusNode!.hasFocus) {
          controller.selection = TextSelection(
            baseOffset: 0,
            extentOffset: controller.text.length,
          );
        }
      });
    }

    return Builder(builder: (context) {
      final theme = Theme.of(context);

      return SizedBox(
        height: h * 0.06 * maxLines,
        child: TextFormField(
          focusNode: focusNode,
          controller: controller,
          readOnly: readOnly ?? false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keyboardType,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          onEditingComplete: onEditingCompleted,
          validator: validator,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.03),
              borderSide:
                  BorderSide(color: theme.dividerColor, width: w * 0.001),
            ),
            labelText: labelText,
            errorText: controller.text.isEmpty ? errorText : null,
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              fontSize: w * 0.036,
              color: theme.textTheme.bodyMedium?.color ?? Colors.black,
            ),
          ),
          style: TextStyle(
            fontSize: w * 0.036,
            fontWeight: FontWeight.w900,
            color: theme.textTheme.bodyMedium?.color ?? Colors.black,
          ),
        ),
      );
    });
  }
}
