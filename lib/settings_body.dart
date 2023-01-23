import 'appearance_section.dart';
import 'general_section.dart';
import 'subscription_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({super.key});

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: Color(0xFFA2A2B5)),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFFA2A2B5),
            )),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            buildProfileImage(),
            const SizedBox(
              height: 7,
            ),
            Text(
              settingsArrayList[0].imageHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              settingsArrayList[0].imageSubHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFFA2A2B5)),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'General',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            GeneralSectionMethod(),
            const SizedBox(
              height: 25,
            ),
            Text(
              'My subscriptions',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            SubscriptionsSectionMethod(),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Appearance',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            AppearanceSectionMethod(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: 30.0,
        child: ClipRRect(
          // ignore: sort_child_properties_last
          child: Image.asset(settingsArrayList[0].settingsImagePath),
          borderRadius: BorderRadius.circular(50.0),
        ),
      );
}
