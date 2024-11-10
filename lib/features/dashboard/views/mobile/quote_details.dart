import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/components/quote_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/views/mobile/mobile_quote_tabs.dart';
import 'package:dentsulms/features/dashboard/views/mobile/quote.dart';
import 'package:dentsulms/models/leads.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuoteDetails extends StatefulWidget {
  final Lead lead;

  const QuoteDetails({Key? key, required this.lead}) : super(key: key);

  @override
  QuoteDetailsState createState() => QuoteDetailsState();
}

class QuoteDetailsState extends State<QuoteDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: GestureDetector(
                    onTap: () => context.go('/quotes_mobile'),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_outlined,
                          color: secondaryColor,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          'Back to quotes ',
                          style: TextStyle(
                            color: chartActive,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(26.0, 0, 0, 12),
              child: Text(
                'View Quote',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 1500, child: MobileQuoteTabs(lead: widget.lead)),
          ],
        ),
      ),
    );
  }
}
