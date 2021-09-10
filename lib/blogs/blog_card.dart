import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/blogs/blog_data.dart';
import 'package:portfolio/components/analytics.dart';
import 'package:portfolio/components/portfolio_card.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/components/card_tag.dart';
import 'package:portfolio/style/colours.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/generated/l10n.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BlogData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(data.url);
        PortfolioAnalytics.log(LogType.cardClick, property: data.url);
      },
      child: PortfolioCard(
        //TODO: Change to click when at least one blogs is up
        cursor: SystemMouseCursors.forbidden,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FaIcon(
                  FontAwesomeIcons.blog,
                  size: Constants.faIconSizeCardHeader,
                  color: ColorPalette.dullWhite,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: data.tags.map((t) => CardTag(tag: t)).toList(),
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
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  size: Constants.faIconSizeCard,
                  color: ColorPalette.dullWhite,
                ),
                SizedBox(width: 8),
                Text("${data.read} "),
                Text(S.of(context).blogMinutes),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
