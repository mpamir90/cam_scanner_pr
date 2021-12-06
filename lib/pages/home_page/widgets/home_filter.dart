import 'package:flutter/material.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          _HomeItemFilterButton(
            title: "All Documents",
            isSelected: true,
          ),
          _HomeItemFilterButton(
            title: "Document",
            isSelected: false,
          ),
          _HomeItemFilterButton(
            title: "ID Card",
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class _HomeItemFilterButton extends StatelessWidget {
  const _HomeItemFilterButton({
    Key? key,
    required this.isSelected,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final bool isSelected;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? const Color(0xFF11c099) : const Color(0xFFe7f7f3),
        ),
        child: Text(title),
      ),
    );
  }
}
