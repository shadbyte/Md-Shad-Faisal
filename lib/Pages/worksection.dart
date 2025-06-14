import 'package:flutter/material.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Set your desired card width here
    const double cardWidth = 800;

    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Work Experience',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: SizedBox(
              width: cardWidth,
              child: WorkCard(
                company: 'Tech Solutions Inc.',
                role: 'Flutter Developer',
                duration: 'Jan 2023 - Present',
                description:
                    'Developed cross-platform mobile apps using Flutter. Collaborated with UI/UX designers and backend teams.',
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: cardWidth,
              child: WorkCard(
                company: 'Creative Apps',
                role: 'Mobile Developer',
                duration: 'Jun 2021 - Dec 2022',
                description:
                    'Built and maintained Android and iOS applications. Improved app performance and user experience.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkCard extends StatefulWidget {
  final String company;
  final String role;
  final String duration;
  final String description;

  const WorkCard({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
  });

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
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
          elevation: _isHovered ? 12 : 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.company,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.role,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  widget.duration,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.description,
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
