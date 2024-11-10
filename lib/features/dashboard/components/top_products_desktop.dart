import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopProductsDesktop extends StatelessWidget {
  const TopProductsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Products',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                  color: greyColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          verticalSpaceMedium,
          SvgPicture.asset(
            'assets/svgs/products.svg',
            height: 200.0,
          ),
          verticalSpaceLarge,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Critical Illness',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                '65,376',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: 9.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const LinearProgressIndicator(
                value: 0.5, // Set the progress value between 0.0 and 1.0
                backgroundColor: textColor, // Set the background color
                valueColor: AlwaysStoppedAnimation<Color>(
                    secondaryColor), // Set the progress color
              ),
            ),
          ),
          verticalSpaceRegular,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Investments',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                '65,376',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: 9.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const LinearProgressIndicator(
                value: 0.8, // Set the progress value between 0.0 and 1.0
                backgroundColor: textColor, // Set the background color
                valueColor: AlwaysStoppedAnimation<Color>(
                    blueColor), // Set the progress color
              ),
            ),
          ),
          verticalSpaceRegular,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mortgage',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                '65,376',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: 9.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const LinearProgressIndicator(
                value: 0.4, // Set the progress value between 0.0 and 1.0
                backgroundColor: textColor, // Set the background color
                valueColor: AlwaysStoppedAnimation<Color>(
                    tintGreenColor), // Set the progress color
              ),
            ),
          ),
          verticalSpaceRegular,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Car Insurance',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                '65,376',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: 9.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const LinearProgressIndicator(
                value: 0.5, // Set the progress value between 0.0 and 1.0
                backgroundColor: textColor, // Set the background color
                valueColor: AlwaysStoppedAnimation<Color>(
                    yellowColor), // Set the progress color
              ),
            ),
          ),
          verticalSpaceRegular,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Life Insurance',
                style: TextStyle(
                    color: darkGreyColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                '65,376',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: 9.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const LinearProgressIndicator(
                value: 0.7, // Set the progress value between 0.0 and 1.0
                backgroundColor: textColor, // Set the background color
                valueColor: AlwaysStoppedAnimation<Color>(
                    lightBlueColor), // Set the progress color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
