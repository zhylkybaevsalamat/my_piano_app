import 'package:flutter/material.dart';

class CustomBlackButton extends StatelessWidget {
  const CustomBlackButton({
    super.key,
    required this.title,
    this.visible = true,
  });
  final String title;
  final bool visible;

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 50,
        height: 110,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(14),
              backgroundColor: const Color(0xff202637),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
