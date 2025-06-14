import 'package:flutter/material.dart';

// ProjectSection widget displays a list of project cards responsively
class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsiveness
    final double screenWidth = MediaQuery.of(context).size.width;
    // Set card width: 90% of screen width on small screens, max 800 on large
    final double cardWidth = screenWidth < 900 ? screenWidth * 0.9 : 800;

    // List of projects to display
    final List<_ProjectData> projects = [
      _ProjectData(
        image: 'photos/login.png',
        title: 'Login Page Ui',
        description:
            'The SignUp web page aims to provide users with a user-friendly and efficient platform to login and sign-up their user-id and perform tasks. The application will be built using the Flutter framework, which enables developers to create responsive and visually appealing user interfaces for mobile. Dart will be the primary programming language used to develop the application',
      ),
      _ProjectData(
        image: 'photos/coffee.png',
        title: 'Coffee Shop Ui',
        description:
            'Indulge in a seamless coffee exploration through our Flutter and Dart-based UI. Navigate a rich selection of brews with ease. Customize orders, revel in secure mobile transactions, and savor the aroma. Elevate your coffee experience with a sleek, responsive, and immersive interface that\'s brewed to perfection.',
      ),
      _ProjectData(
        image: 'photos/coffee.png',
        title: 'Coffee Shop Ui',
        description:
            'Indulge in a seamless coffee exploration through our Flutter and Dart-based UI. Navigate a rich selection of brews with ease. Customize orders, revel in secure mobile transactions, and savor the aroma. Elevate your coffee experience with a sleek, responsive, and immersive interface that\'s brewed to perfection.',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section title
          const Center(
            child: Text(
              'Projects',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          // Generate a ProjectCard for each project in the list
          ...projects.map((project) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Center(
                  child: SizedBox(
                    width: cardWidth,
                    child: ProjectCard(project: project),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

// Model class to hold project data
class _ProjectData {
  final String image;
  final String title;
  final String description;

  _ProjectData({
    required this.image,
    required this.title,
    required this.description,
  });
}

// Widget for displaying a single project card with hover effect and responsive layout
class ProjectCard extends StatefulWidget {
  final _ProjectData project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false; // Track hover state

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth >= 700;

    return MouseRegion(
      // Set hover state on mouse enter/exit
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        // Change shadow on hover
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Card(
          elevation: _isHovered ? 12 : 2, // Elevate card on hover
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: isDesktop
                // Desktop: image and text in a row
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Project image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          widget.project.image,
                          width: 350,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 24),
                      // Project title and description
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.project.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widget.project.description,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                // Mobile: image above text in a column
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          widget.project.image,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        widget.project.title,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.project.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
