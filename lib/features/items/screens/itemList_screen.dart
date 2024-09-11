import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fzbill/features/items/widgets/addItem_sheet.dart';

class ItemListScreen extends ConsumerStatefulWidget {
  const ItemListScreen({super.key});

  @override
  ConsumerState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends ConsumerState<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All items"),
        actions: [
          IconButton(
            onPressed: () {
              addItemSheet();
            },
            icon: const Icon(CupertinoIcons.add_circled),
          ),
        ],
      ),
    );
  }

  addItemSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AddItemSheet();
      },
    );
  }
}
