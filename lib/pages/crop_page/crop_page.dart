import 'package:cam_scanner/pages/widgets/custom_button.dart';
import 'package:cam_scanner/pages/widgets/custom_chip.dart';
import 'package:flutter/material.dart';

import 'widgets/crop_item_button.dart';

class CropPage extends StatelessWidget {
  const CropPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crop"),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF11c099),
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Brightness",
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Slider(
                        value: 0.4,
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.screen_lock_rotation_outlined),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CropItemButton(
                      icon: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.home),
                      ),
                      title: "Original",
                    ),
                    CropItemButton(
                      icon: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.home),
                      ),
                      title: "Original",
                    ),
                    CropItemButton(
                      icon: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.home),
                      ),
                      title: "Original",
                    ),
                    CropItemButton(
                      icon: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.home),
                      ),
                      title: "Original",
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomButton(),
                    CustomButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
