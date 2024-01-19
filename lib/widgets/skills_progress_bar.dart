import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

/// This is a reusable widget
class SkillsProgressBar extends StatelessWidget {
  const SkillsProgressBar({
    super.key,
    required this.title,
    required this.progress,
  });

  final String title;
  final double progress;

  @override
  Widget build(BuildContext context) {
    /// For making app responsive for all screen sizes
    Size size = MediaQuery.of(context).size;

    /// For accessing theme both light and dark mode
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Title
          Text(
            title,
            style: theme.textTheme.displaySmall,
          ),

          /// Empty Space
          const SizedBox(
            height: 2,
          ),

          /// Progress Bar
          LinearPercentIndicator(
            lineHeight: size.height * .02,
            width: size.width * .8,
            alignment: MainAxisAlignment.center,
            barRadius: const Radius.circular(50),
            percent: progress,
            backgroundColor: AppColors.appPrimaryColor.withOpacity(.3),
            progressColor: AppColors.appPrimaryColor,
          ),
        ],
      ),
    );
  }
}
