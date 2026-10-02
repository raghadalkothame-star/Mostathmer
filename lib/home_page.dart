import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName =
        ModalRoute.of(context)!.settings.arguments as String? ?? 'مستخدم';

    final width = MediaQuery.of(context).size.width;
    final isLargeScreen = width >= 700;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EA),
        elevation: 0,

        title: const Text(
          'مُستثمر | Mostathmer',
          style: TextStyle(
            color: Color(0xFF173A56),
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                '/login',
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Color(0xFF173A56),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1100,
            ),

            child: SingleChildScrollView(
              padding: EdgeInsets.all(
                isLargeScreen ? 40 : 20,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مرحباً، $userName 👋',
                    style: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF173A56),
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'ابدأ بخطوة بسيطة اليوم نحو فهم أفضل للاستثمار وإدارة المال.',
                    style: TextStyle(
                      color: Color(0xFF777777),
                    ),
                  ),

                  const SizedBox(height: 22),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFBF5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFE7D3B0),
                      ),
                    ),

                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Color(0xFFE7D3B0),
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Color(0xFF173A56),
                          ),
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'الرصيد الافتراضي',
                                style: TextStyle(
                                  color: Color(0xFF777777),
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                '10,000 نقطة',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF173A56),
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                'استخدم النقاط لتجربة الاستثمار دون أموال حقيقية.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF777777),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  if (isLargeScreen)
                    Row(
                      children: [
                        Expanded(
                          child: featureCard(
                            context,
                            title: 'التعلم',
                            subtitle: 'تعلم أساسيات الاستثمار',
                            icon: Icons.menu_book_rounded,
                            color: const Color(0xFFE7D3B0),
                            route: '/learn',
                          ),
                        ),

                        const SizedBox(width: 20),

                        Expanded(
                          child: featureCard(
                            context,
                            title: 'المحاكاة',
                            subtitle: 'استثمر بنقاط افتراضية',
                            icon: Icons.bar_chart_rounded,
                            color: const Color(0xFFC9D7D0),
                            route: '/simulation',
                          ),
                        ),

                        const SizedBox(width: 20),

                        Expanded(
                          child: featureCard(
                            context,
                            title: 'الأهداف',
                            subtitle: 'تابع أهدافك المالية',
                            icon: Icons.track_changes,
                            color: const Color(0xFFF0D8B2),
                            route: '/goals',
                          ),
                        ),
                      ],
                    )
                  else
                    Column(
                      children: [
                        featureCard(
                          context,
                          title: 'التعلم',
                          subtitle: 'تعلم أساسيات الاستثمار',
                          icon: Icons.menu_book_rounded,
                          color: const Color(0xFFE7D3B0),
                          route: '/learn',
                        ),

                        const SizedBox(height: 15),

                        featureCard(
                          context,
                          title: 'المحاكاة',
                          subtitle: 'استثمر بنقاط افتراضية',
                          icon: Icons.bar_chart_rounded,
                          color: const Color(0xFFC9D7D0),
                          route: '/simulation',
                        ),

                        const SizedBox(height: 15),

                        featureCard(
                          context,
                          title: 'الأهداف',
                          subtitle: 'تابع أهدافك المالية',
                          icon: Icons.track_changes,
                          color: const Color(0xFFF0D8B2),
                          route: '/goals',
                        ),
                      ],
                    ),

                  const SizedBox(height: 25),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFBF5),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'تقدمك في التعلم',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF173A56),
                          ),
                        ),

                        const SizedBox(height: 15),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const LinearProgressIndicator(
                            value: 0.3,
                            minHeight: 9,
                            backgroundColor: Color(0xFFE9E0D4),
                            valueColor: AlwaysStoppedAnimation(
                              Color(0xFF789A87),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'تم إكمال 3 من 10 دروس',
                          style: TextStyle(
                            color: Color(0xFF777777),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget featureCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required String route,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),

      onTap: () {
        Navigator.pushNamed(
          context,
          route,
        );
      },

      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.65),
                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(
                icon,
                color: const Color(0xFF173A56),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
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

                  const SizedBox(height: 3),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xFF505050),
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 17,
              color: Color(0xFF173A56),
            ),
          ],
        ),
      ),
    );
  }
}