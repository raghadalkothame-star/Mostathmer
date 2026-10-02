import 'package:flutter/material.dart';

class SimulationPage extends StatelessWidget {
  const SimulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EA),
        title: const Text(
          'المحاكاة',
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
            'محفظتك الافتراضية',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF173A56),
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'الرصيد: 10,000 نقطة',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF173A56),
            ),
          ),

          const SizedBox(height: 25),

          simulationCard(
            'شركة التقنية',
            '120 نقطة',
          ),

          const SizedBox(height: 15),

          simulationCard(
            'شركة الطاقة',
            '85 نقطة',
          ),

          const SizedBox(height: 15),

          simulationCard(
            'صندوق النمو',
            '150 نقطة',
          ),
        ],
      ),
    );
  }

  Widget simulationCard(
    String name,
    String price,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFFFFBF5),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          const Icon(
            Icons.show_chart,
            color: Color(0xFF173A56),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFF777777),
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'شراء افتراضي',
            ),
          ),
        ],
      ),
    );
  }
}
