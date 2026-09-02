import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://mbrzwpwatfyyvzlkxddw.supabase.co',
    anonKey: 'ضع_PUBLISHABLE_KEY_هنا',
  );

  runApp(const WasalniApp());
}

class WasalniApp extends StatelessWidget {
  const WasalniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'وصلني',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('وصلني'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),

              const Text(
                'مرحبًا بك في وصلني',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'منصة نقل ذكية تجمع سيارات الأجرة والنقل الجماعي والحافلات.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {},
                child: const Text('اطلب رحلة'),
              ),

              const SizedBox(height: 12),

              OutlinedButton(
                onPressed: () {},
                child: const Text('أريد أن أصبح سائقًا'),
              ),

              const SizedBox(height: 12),

              OutlinedButton(
                onPressed: () {},
                child: const Text('النقل العام'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
