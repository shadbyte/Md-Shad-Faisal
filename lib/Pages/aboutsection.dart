import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      bool isMobile = sizingInfo.deviceScreenType == DeviceScreenType.mobile;

      return Container(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20.0),
        child: Column(
          children: <Widget>[
            const Text(
              'WHO I AM...',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            isMobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'photos/aboutnew.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'A passionate and dedicated flutter developer with a good focus on app development and web-app development. I thrive on turning ideas into reality and creating solutions that are both effective and engaging. I bring a combination of creativity, technical skill, and strategic thinking to every project. I love pushing boundaries and delivering work that makes an impact. When I am not working, you’ll find me surfing internet, experimenting with new design tools and technologies, or hiking trails near home. Let’s connect and build something great together.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'photos/aboutnew.png',
                            width: 350,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 40),
                        const Expanded(
                          child: Text(
                            'A passionate and dedicated flutter developer with a good focus on app development and web-app development. I thrive on turning ideas into reality and creating solutions that are both effective and engaging. I bring a combination of creativity, technical skill, and strategic thinking to every project. I love pushing boundaries and delivering work that makes an impact. When I am not working, you’ll find me surfing internet, experimenting with new design tools and technologies, or hiking trails near home. Let’s connect and build something great together.',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      );
    });
  }
}
