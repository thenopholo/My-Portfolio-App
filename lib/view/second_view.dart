import 'package:flutter/material.dart';
import 'package:my_portfolio/data/dev_data.dart';
import 'package:my_portfolio/utils/app_strings.dart';
import 'package:my_portfolio/widgets/contact_me_box.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    /// For making app responsive for all screen sizes
    Size size = MediaQuery.of(context).size;

    /// For accessing theme both light and dark mode
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///Empty Space
            SizedBox(
              height: size.height * .05,
            ),

            ///Dev Bio
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                horizontal: size.width * .04,
                vertical: size.height * .03,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenBio,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    DevData.devData.bio,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),

            ///Dev Hobbies
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .03),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenHobbies,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        DevData.devData.hobbies.length,
                        (index) => Text(
                          "${index + 1}.${DevData.devData.hobbies[index]}",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Dev Contact
            Container(
              margin: EdgeInsets.all(size.height * .01),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .03),
              width: size.width,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.secondScreenContact,
                    style: theme.textTheme.bodyLarge,
                  ),
                  ContactMeBox(
                      title: DevData.devData.number, icon: Icons.phone),
                  ContactMeBox(title: DevData.devData.email, icon: Icons.email),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
