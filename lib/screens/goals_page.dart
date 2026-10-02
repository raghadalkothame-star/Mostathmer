import 'package:flutter/material.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EA),
        title: const Text(
          'الأهداف المالية',
          style: TextStyle(
            color: Color(0xFF173A56),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'أهدافي',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF173A56),
              ),
            ),

            const SizedBox(height: 25),

            goalCard(
              'شراء سيارة',
              0.40,
            ),

            const SizedBox(height: 15),

            goalCard(
              'السفر',
              0.31,
            ),

            const SizedBox(height: 15),

            goalCard(
              'التعليم',
              0.40,
            ),
          ],
        ),
      ),
    );
  }

  Widget goalCard(
    String title,
    double progress,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFFFFBF5),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF173A56),
            ),
          ),

          const SizedBox(height: 12),

          LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: const Color(0xFFE9E0D4),
            valueColor: const AlwaysStoppedAnimation(
              Color(0xFF789A87),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            '${(progress * 100).toInt()}% مكتمل',
            style: const TextStyle(
              color: Color(0xFF777777),
            ),
          ),
        ],
      ),
    );
  }
}
