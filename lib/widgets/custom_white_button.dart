import 'package:flutter/material.dart';

class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Column(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(bottom: 20),
                backgroundColor: const Color(0xffF7F7F7),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xffC3C3C3), width: 0.5),
                  borderRadius: BorderRadius.circular(1),
                ),
                minimumSize: const Size(64, 100),
              ),
              onPressed: () {},
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
