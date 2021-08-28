import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/portfolio_card.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/experience/experience_data.dart';
import 'package:portfolio/components/card_tag.dart';
import 'package:portfolio/style/colours.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ExperienceData data;

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(
                FontAwesomeIcons.briefcase,
                size: Constants.faIconSizeCardHeader,
                color: ColorPalette.dullWhite,
              ),
              CardTag(tag: data.position),
            ],
          ),
          Text(data.organizationName,
              style: Theme.of(context).textTheme.headline6),
          Text(data.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(data.startYearMonth),
              Text(" - "),
              Text(data.endYearMonth),
            ],
          ),
        ],
      ),
    );
  }
}
