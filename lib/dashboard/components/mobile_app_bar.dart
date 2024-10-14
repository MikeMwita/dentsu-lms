import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final appBar = AppBar(
  centerTitle: false,
  backgroundColor: appBarColor,
  title: Row(
    children: [
      SvgPicture.asset(
        'assets/svgs/logo.svg',
        height: 32.0,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      horizontalSpaceLarge,
      horizontalSpaceLarge,
    ],
  ),
  actions: [
    horizontalSpaceMedium,
    Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const CircleAvatar(
              radius: 18.0, // Set the radius as needed
              backgroundImage: AssetImage(
                  'assets/images/background_image.png'), // Replace with your image asset path
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: greenColor,
                ),
              ),
            ),
          ],
        ),
        horizontalSpaceSmall,
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    ),
  ],
);
