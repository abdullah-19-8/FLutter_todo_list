
import 'package:flutter/material.dart';
import 'package:short_point/utils/constant.dart';
import 'package:short_point/views/home/widgets/pro_section.dart';

class SubscriptionSection extends StatelessWidget {
  const SubscriptionSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 116 / screenHeight * size.height,
      color: const Color(0xFFCCE53D),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProSection(size: size),
          const Spacer(),
          Container(
            width: 66.11 / screenWidth * size.width,
            height: 71 / screenHeight * size.height,
            margin: EdgeInsets.only(
              right: 24 / screenWidth * size.width,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF071C55),
            ),
            child: const Center(
              child: Text(
                '\$1',
                style: TextStyle(
                  color: Color(0xFFF2C94C),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}