import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/portfolio_card.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/projects/project_data.dart';
import 'package:portfolio/components/card_tag.dart';
import 'package:portfolio/style/colours.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ProjectData data;

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
                FontAwesomeIcons.tools,
                size: Constants.faIconSizeCardHeader,
                color: ColorPalette.dullWhite,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                    data.technologies.map((t) => CardTag(tag: t)).toList(),
              ),
            ],
          ),
          Text(
            data.title,
            style: Theme.of(context).textTheme.headline6,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            data.description,
            maxLines: getValueForScreenType<int>(
              context: context,
              mobile: 4,
              tablet: 3,
              desktop: 2,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  size: Constants.faIconSizeCard + 2,
                  color: ColorPalette.dullWhite,
                ),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                splashRadius: Constants.cardIconSplash,
                onPressed: () {
                  launch(data.gitHub);
                },
              ),
              SizedBox(width: 8),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.externalLinkAlt,
                  size: Constants.faIconSizeCard,
                  color: ColorPalette.dullWhite,
                ),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                splashRadius: Constants.cardIconSplash,
                onPressed: () {
                  launch(data.link);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
