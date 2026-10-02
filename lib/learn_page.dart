import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EA),
        title: const Text(
          'التعلم',
          style: TextStyle(
            color: Color(0xFF173A56),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          const Text(
            'دروس الاستثمار',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF173A56),
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'تعلم المفاهيم الأساسية خطوة بخطوة.',
            style: TextStyle(
              color: Color(0xFF777777),
            ),
          ),

          const SizedBox(height: 25),

          courseCard(
            context,
            title: 'ما هو السهم؟',
            description: 'تعرف على معنى السهم وملكية الشركات.',
            progress: 1.0,
          ),

          const SizedBox(height: 15),

          courseCard(
            context,
            title: 'لماذا ترتفع وتنخفض الأسهم؟',
            description: 'تعرف على العرض والطلب والأخبار والأداء المالي.',
            progress: 0.7,
          ),

          const SizedBox(height: 15),

          courseCard(
            context,
            title: 'المخاطر والعوائد',
            description: 'تعرف على العلاقة بين المخاطرة والعائد.',
            progress: 0.4,
          ),

          const SizedBox(height: 15),

          courseCard(
            context,
            title: 'الصناديق الاستثمارية',
            description: 'تعرف على فكرة الصناديق وكيف تعمل.',
            progress: 0.2,
          ),

          const SizedBox(height: 15),

          courseCard(
            context,
            title: 'الاستثمار والضوابط الشرعية',
            description: 'مقدمة تعليمية عن الربا وبعض الضوابط الشرعية.',
            progress: 0.0,
          ),
        ],
      ),
    );
  }

  Widget courseCard(
    BuildContext context, {
    required String title,
    required String description,
    required double progress,
  }) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/course-details',
          arguments: {
            'title': title,
            'description': description,
          },
        );
      },

      child: Container(
        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: const Color(0xFFFFFBF5),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xFFE7D3B0),
          ),
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

            const SizedBox(height: 5),

            Text(
              description,
              style: const TextStyle(
                color: Color(0xFF777777),
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: progress,
              minHeight: 7,
              backgroundColor: const Color(0xFFE9E0D4),
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF789A87),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              '${(progress * 100).toInt()}% مكتمل',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF777777),
              ),
            ),
          ],
        ),
      ),
    );
  }
}