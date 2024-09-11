import 'package:flutter/material.dart';
import 'package:fzbill/core/utilities/loader.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x80FFFFFF),
      child: const Center(
        child: Loader(),
      ),
    );
  }
}
