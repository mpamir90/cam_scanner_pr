import 'package:flutter/material.dart';

class HomeGridTitleMode extends StatelessWidget {
  const HomeGridTitleMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: const [
          _HomeitemGridTile(),
          _HomeitemGridTile(),
          _HomeitemGridTile(),
          _HomeitemGridTile(),
          _HomeitemGridTile(),
          _HomeitemGridTile(),
        ],
      ),
    );
  }
}

class _HomeitemGridTile extends StatelessWidget {
  const _HomeitemGridTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const Expanded(child: Placeholder()),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("CamScanner"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                const Text("2021/07/10"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
