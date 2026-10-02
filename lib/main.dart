import 'package:flutter/material.dart';

void main() {
  runApp(const MostathmerApp());
}

class MostathmerApp extends StatelessWidget {
  const MostathmerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFBF5),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/logo_banner.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: Color(0xFF173A56),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome, Raghad 👋',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF173A56),
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'Start learning today and take your first step toward smarter investing.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF777777),
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 20),

                // Virtual Balance
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFBF5),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFFE7D3B0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: Color(0xFFE7D3B0),
                        child: Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Color(0xFF173A56),
                          size: 28,
                        ),
                      ),

                      SizedBox(width: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Virtual Balance',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF777777),
                              ),
                            ),

                            SizedBox(height: 3),

                            Text(
                              '10,000 Points',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF173A56),
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              'Use your points to practice investing safely.',
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

                buildFeatureCard(
                  icon: Icons.menu_book_rounded,
                  title: 'Learn',
                  subtitle: 'Investment basics made simple',
                  color: const Color(0xFFE7D3B0),
                ),

                const SizedBox(height: 15),

                buildFeatureCard(
                  icon: Icons.bar_chart_rounded,
                  title: 'Simulate',
                  subtitle: 'Practice investing with virtual points',
                  color: const Color(0xFFC9D7D0),
                ),

                const SizedBox(height: 15),

                buildFeatureCard(
                  icon: Icons.track_changes,
                  title: 'Goals',
                  subtitle: 'Set and track your financial goals',
                  color: const Color(0xFFF0D8B2),
                ),

                const SizedBox(height: 25),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFBF5),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Progress',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xFF173A56),
                            ),
                          ),
                          Icon(
                            Icons.emoji_events_outlined,
                            color: Color(0xFFC89653),
                          ),
                        ],
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
                        '3 / 10 lessons completed',
                        style: TextStyle(
                          color: Color(0xFF777777),
                          fontSize: 12,
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

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF173A56),
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFFFFFBF5),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Simulate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Goals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  static Widget buildFeatureCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
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
              size: 30,
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
                    fontSize: 13,
                    color: Color(0xFF505050),
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 17,
            color: Color(0xFF173A56),
          ),
        ],
      ),
    );
  }
}
