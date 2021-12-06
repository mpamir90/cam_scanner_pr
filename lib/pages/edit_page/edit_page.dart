import 'package:cam_scanner/pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'widgets/edit_item_button.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit")),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          Container(
            width: double.infinity,
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                      SizedBox(width: 12),
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                      SizedBox(width: 12),
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                      SizedBox(width: 12),
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                      SizedBox(width: 12),
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                      SizedBox(width: 12),
                      EditItemButton(
                        icon: Icon(Icons.home),
                        title: "Color Filter",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomButton(),
                    CustomButton(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
