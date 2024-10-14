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
      IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      horizontalSpaceLarge,
      SizedBox(
        width: 480.0,
        height: 40.0,
        child: TextFormField(
          // controller: '',
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search_rounded, color: Colors.white),
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xFFDDDDDD),
                width: 1.0,
              ),
            ),
            contentPadding: const EdgeInsets.only(top: 20.0),
          ),
        ),
      )
    ],
  ),
  actions: [
    SvgPicture.asset(
      "assets/svgs/notification.svg",
      width: 20.0, // Adjust the width as needed
      height: 24.0,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    ),
    horizontalSpaceMedium,
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
    const Text(
      'Charles K',
      style: TextStyle(
          color: textColor, fontSize: 15.0, fontWeight: FontWeight.w700),
    ),
    horizontalSpaceMedium,
    IconButton(
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Colors.white,
        size: 24.0,
      ),
      onPressed: () {},
    ),
    horizontalSpaceLarge,
  ],
);
