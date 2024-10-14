import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopProductsMobile extends StatelessWidget {
  const TopProductsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total products',
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
            verticalSpaceRegular,
            const Text(
              "Every large design company whether it's a multi-national branding",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            verticalSpaceRegular,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mortgage',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  '65,376',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            verticalSpaceTiny,
            SizedBox(
              height: 6.0,
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
            verticalSpaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Investments',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  '65,376',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            verticalSpaceSmall,
            SizedBox(
              height: 6.0,
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
            verticalSpaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mortgage',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  '65,376',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            verticalSpaceSmall,
            SizedBox(
              height: 6.0,
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
            verticalSpaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Car Insurance',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  '65,376',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            verticalSpaceSmall,
            SizedBox(
              height: 6.0,
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
            verticalSpaceSmall,
          ],
        ),
      ),
    );
  }
}
