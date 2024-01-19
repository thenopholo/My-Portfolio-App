import 'package:flutter/material.dart';
import 'package:my_portfolio/data/dev_data.dart';
import 'package:my_portfolio/utils/app_colors.dart';
import 'package:my_portfolio/utils/app_strings.dart';
import 'package:my_portfolio/widgets/skills_box.dart';
import 'package:my_portfolio/widgets/skills_progress_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    /// For making app responsive for all screen sizes
    Size size = MediaQuery.of(context).size;

    /// For accessing theme both light and dark mode
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Empty Space
              SizedBox(
                height: size.height * .1,
              ),

              /// Dev Avatar
              Container(
                padding: EdgeInsets.all(size.height * .01),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: size.height * .15,
                  backgroundColor: AppColors.appPrimaryColor,
                  backgroundImage: NetworkImage(AppStrings.profileImageUrl),
                ),
              ),

              /// Empty Space
              SizedBox(
                height: size.height * .02,
              ),

              /// Dev Name
              Text(
                DevData.devData.name,
                style: theme.textTheme.displayLarge,
              ),

              /// Empty Space
              SizedBox(
                height: size.height * .02,
              ),

              /// Dev Skills
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: size.width * .01,
                runSpacing: size.height * .01,
                children: List.generate(
                  DevData.devData.skillsAndProgress.length,
                  (index) => SkillsBox(
                    title: DevData.devData.skillsAndProgress[index].name,
                  ),
                ),
              ),

              /// Empty Space
              SizedBox(
                height: size.height * .02,
              ),

              /// Skills progess
              Column(
                children: List.generate(
                  DevData.devData.skillsAndProgress.length,
                  (index) => SkillsProgressBar(
                    title: DevData.devData.skillsAndProgress[index].name,
                    progress: DevData.devData.skillsAndProgress[index].progress,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



