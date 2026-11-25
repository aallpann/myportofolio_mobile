import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/models/experience.dart';

class ExperienceDetailScreen extends StatelessWidget {
  final Experience experience;

  const ExperienceDetailScreen({super.key, required this.experience});

  String formatDate(DateTime? date) {
    if (date == null) return 'Ongoing';
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experience Detail')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (experience.thumbnail != null &&
                experience.thumbnail!.isNotEmpty)
              Image.network(
                experience.thumbnail!,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox.shrink();
                },
              ),

            const SizedBox(height: 16),

            Text(
              experience.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              experience.organization,
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 12),

            Text('Category: ${experience.category}'),

            const SizedBox(height: 12),

            const Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(experience.description),

            const SizedBox(height: 16),

            const Text('Period', style: TextStyle(fontWeight: FontWeight.bold)),

            const SizedBox(height: 4),

            Text('Start: ${formatDate(experience.startedAt)}'),
            Text('End: ${formatDate(experience.endedAt)}'),
          ],
        ),
      ),
    );
  }
}
