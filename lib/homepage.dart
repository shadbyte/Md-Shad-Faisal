// ignore_for_file: avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/aboutsection.dart';
import 'package:myportfolio/Pages/contactsection.dart';
import 'package:myportfolio/Pages/homesection.dart';
import 'package:myportfolio/Pages/projectsection.dart';
import 'package:myportfolio/Pages/worksection.dart';

import 'package:responsive_builder/responsive_builder.dart';

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Container(
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, isloaded) => [
                SliverAppBar(
                  scrolledUnderElevation: 0,
                  centerTitle: false,
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/linklogo.png')),
                          // height: 50,
                          // width: 50,
                          // color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/git.png')),

                          // height: 50,
                          // width: 50,
                          // color: Colors.red,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/whatsapp.webp')),
                          // height: 50,
                          // width: 50,
                          // color: Colors.pink,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/x.png')),

                          // height: 50,
                          // width: 50,
                          // color: Colors.green,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                      ],
                    )
                  ],
                  title: TextLiquidFill(
                    boxWidth: 100,
                    text: 'MSF',
                    waveColor: Colors.black,
                    boxBackgroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    HomeSection(),
                    AboutSection(),
                    const WorkSection(),
                    const ProjectSection(),
                    ContactSection(),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: const BottomAppBar(
              // color: Colors.pink,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '© 2025 Md Shad Faisal. All rights reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        );
      } else {
        return Container(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                Container(
                    margin: const EdgeInsets.only(right: 80),
                    // color: Colors.yellowAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/linklogo.png')),
                          // height: 50,
                          // width: 50,
                          // color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/git.png')),

                          // height: 50,
                          // width: 50,
                          // color: Colors.red,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/whatsapp.webp')),
                          // height: 50,
                          // width: 50,
                          // color: Colors.pink,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset('photos/x.png')),

                          // height: 50,
                          // width: 50,
                          // color: Colors.green,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                      ],
                    ))
              ],
              title: const Text(
                'MD SHAD FAISAL',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  HomeSection(),
                  AboutSection(),
                  const WorkSection(),
                  const ProjectSection(),
                  ContactSection(),
                ],
              ),
            ),
            bottomNavigationBar: const BottomAppBar(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '© 2025 Md Shad Faisal. All rights reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
