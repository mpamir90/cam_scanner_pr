import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 100,
              width: 100,
              child: Placeholder(),
            ),
            const SizedBox(height: 32),
            const Text('Welcome to Cam Scanner'),
            const SizedBox(height: 32),
            const Text("Scan anything, anytime,\n anywhere"),
            const SizedBox(height: 32),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color(0xFF11c099),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Get Started"),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
