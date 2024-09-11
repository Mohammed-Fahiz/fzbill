import 'package:flutter/material.dart';
import 'package:fzbill/core/inputFormatters/inputFormatters.dart';
import 'package:fzbill/core/utilities/textfield_custom.dart';
import 'package:fzbill/features/items/models/item_model.dart';

class AddItemSheet extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _itemPriceController = TextEditingController();

  AddItemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Enter item details"),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextField(
              controller: _itemNameController,
              labelText: "Item name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter a valid name!";
                }
                return null;
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextField(
              inputFormatters: InputFormattersConstants.decimalAndNoOnly,
              controller: _itemPriceController,
              labelText: "Price",
              validator: (value) {
                if (value == null || value.isEmpty || value == "0") {
                  return "Enter a valid price!";
                }
                return null;
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const FittedBox(
                    child: Text('Cancel'),
                  ),
                ),
                SizedBox(
                  width: w * 0.02,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await addItem();
                  },
                  child: const FittedBox(
                    child: Text('Add'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addItem() async {
    if (_formKey.currentState!.validate()) {
      final itemModel = ItemModel(
        itemName: _itemNameController.text,
        itemPrice: double.tryParse(_itemPriceController.text) ?? 0,
        priority: 0,
      );
      print("Set");
    }
  }
}
