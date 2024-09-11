import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fzbill/core/services/navigation_service.dart';
import 'package:fzbill/core/utilities/loader.dart';
import 'package:fzbill/features/home/screens/home_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    navigateUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Loader(),
    );
  }

  navigateUser() {
    Future.delayed(const Duration(seconds: 1), () {
      NavigationService.navigateRemoveUntil(
        context: context,
        screen: const HomeScreen(),
      );
    });
  }
}
