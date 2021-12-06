import 'package:flutter/material.dart';

class HomeListTileMode extends StatelessWidget {
  const HomeListTileMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          _HomeItemListTile(
            title: "CamScanner_123456",
            subtitle: "2021/07/10 06:45 pm",
          ),
          _HomeItemListTile(
            title: "CamScanner_123456",
            subtitle: "2021/07/10 06:45 pm",
          ),
        ],
      ),
    );
  }
}

class _HomeItemListTile extends StatelessWidget {
  const _HomeItemListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        leading: const SizedBox(
          height: 60,
          width: 60,
          child: Placeholder(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            const Icon(Icons.more_vert),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(subtitle),
        ),
      ),
    );
  }
}
