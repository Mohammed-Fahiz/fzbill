import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fzbill/core/services/navigation_service.dart';
import 'package:fzbill/features/items/screens/itemList_screen.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings & data"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(w * .02),
                width: w,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  border: Border.all(
                    color: theme.dividerColor,
                  ),
                  borderRadius: BorderRadius.circular(w * .02),
                ),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Data"),
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    GestureDetector(
                      onTap: () {
                        NavigationService.navigateToScreen(
                          context: context,
                          screen: const ItemListScreen(),
                        );
                      },
                      child: customTile(
                        title: "Items",
                        w: w,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container customTile({required String title, required double w}) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: theme.dividerColor,
        ),
        borderRadius: BorderRadius.circular(w * .02),
      ),
      padding: EdgeInsets.all(w * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: w * .035),
          ),
          const Icon(CupertinoIcons.arrow_right),
        ],
      ),
    );
  }
}
