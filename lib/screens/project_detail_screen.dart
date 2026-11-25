import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/models/project.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(project.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text('Description: ${project.description}'),
            const SizedBox(height: 12),
            Text('Tech Stack: ${project.techStack}'),
            const SizedBox(height: 12),
            Text('Project URL: ${project.projectUrl}'),
            if (project.projectImageUrl.isNotEmpty) ...[
              const SizedBox(height: 16),
              Image.network(project.projectImageUrl),
            ],
          ],
        ),
      ),
    );
  }
}
