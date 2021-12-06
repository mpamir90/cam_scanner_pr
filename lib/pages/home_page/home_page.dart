import 'package:flutter/material.dart';

import 'widgets/home_filter.dart';
import 'widgets/home_grid_tile_mode.dart';
import 'widgets/home_header.dart';
import 'widgets/home_take_photo_or_galery.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf7fffd),
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF11c099),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.analytics),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const HomeHeader(),
                const SizedBox(height: 32),
                const HomeFilter(),
                const HomeGridTitleMode(),
              ],
            ),
          ),
          const HomeTakePhotoOrGalery()
        ],
      ),
    );
  }
}
