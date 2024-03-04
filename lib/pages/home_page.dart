import 'package:flutter/material.dart';
import 'package:my_piano_app/widgets/custom_black_button.dart';
import 'package:my_piano_app/widgets/custom_white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff202637),
        title: const Text(
          'My Piano App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Stack(
                children: [
                  Row(
                    children: [
                      CustomWhiteButton(title: 'f1'),
                      CustomWhiteButton(title: 'f2'),
                      CustomWhiteButton(title: 'f3'),
                      CustomWhiteButton(title: 'f4'),
                      CustomWhiteButton(title: 'f5'),
                      CustomWhiteButton(title: 'f6'),
                      CustomWhiteButton(title: 'f7'),
                    ],
                  ),
                  Positioned(
                      left: 35,
                      right: 0,
                      top: 0,
                      child: Row(
                        children: [
                          CustomBlackButton(title: 'f1'),
                          CustomBlackButton(title: 'f2'),
                          CustomBlackButton(title: 'f3', visible: false),
                          CustomBlackButton(title: 'f4'),
                          CustomBlackButton(title: 'f5'),
                          CustomBlackButton(title: 'f6'),
                        ],
                      )),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
