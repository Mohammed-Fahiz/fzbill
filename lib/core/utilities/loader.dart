import 'package:flutter/material.dart';
import 'package:fzbill/core/theme/theme.dart';

class Loader extends StatelessWidget {
  final bool? isLinear;
  const Loader({super.key, this.isLinear});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLinear == null || isLinear == false
          ? const CircularProgressIndicator()
          : const LinearProgressIndicator(),
    );
  }
}
