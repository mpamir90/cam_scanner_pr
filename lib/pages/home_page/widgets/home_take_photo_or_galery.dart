import 'package:flutter/material.dart';

class HomeTakePhotoOrGalery extends StatelessWidget {
  const HomeTakePhotoOrGalery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.only(bottom: 32),
        decoration: BoxDecoration(
          color: const Color(0xFF11c099),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 30,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 1,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.collections,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
