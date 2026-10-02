import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  void login() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('الرجاء تعبئة جميع الحقول'),
        ),
      );
      return;
    }

    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: name,
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EA),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 450,
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.trending_up_rounded,
                    size: 80,
                    color: Color(0xFF173A56),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'مُستثمر',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF173A56),
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    'Mostathmer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF777777),
                    ),
                  ),

                  const SizedBox(height: 35),

                  // الاسم
                  TextField(
                    controller: nameController,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      labelText: 'الاسم',
                      hintText: 'اكتب اسمك',
                      prefixIcon: const Icon(
                        Icons.person_outline,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFBF5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // البريد الإلكتروني
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                      labelText: 'البريد الإلكتروني',
                      hintText: 'example@email.com',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFBF5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // كلمة المرور
                  TextField(
                    controller: passwordController,
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      labelText: 'كلمة المرور',
                      hintText: 'أدخل كلمة المرور',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFBF5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF173A56),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'إنشاء حساب جديد',
                      style: TextStyle(
                        color: Color(0xFF173A56),
                      ),
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
}
