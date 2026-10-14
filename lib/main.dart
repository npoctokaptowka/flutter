import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrganizerScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12A19A),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
        child: Column(
          children: [
            const Text(
              'medinow',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Meditate With Us!',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 40),
            loginButton('Sign in with Apple', Colors.white),
            const SizedBox(height: 14),
            loginButton('Continue with Email or Phone', const Color(0xFFD9FBF8)),
            const SizedBox(height: 18),
            const Text(
              'Continue With Google',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginButton(String text, Color color) {
    return Container(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
        ),
        child: Text(text, style: const TextStyle(fontSize: 15)),
      ),
    );
  }
}

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  static const Color teal = Color(0xFF12A19A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Meditate',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  category('All', true),
                  category('Bible In a Year', false),
                  category('Dailies', false),
                  category('Minutes', false),
                  category('November', false),
                ],
              ),
            ),
            const SizedBox(height: 16),

            card('A Song of Moon', 'Start with the basics', '9 Sessions',
                const Color(0xFFF7C948), 150, 20),
            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: card('The Sleep Hour', 'Ashna Mukherjee',
                      '3 Sessions', const Color(0xFFF59A3C), 90, 14),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: card('Easy on the Mission', 'Peter Mach',
                      '5 minutes', const Color(0xFFF7C948), 90, 14),
                ),
              ],
            ),
            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: card('Relax with Me', 'Amanda James', '3 Sessions',
                      const Color(0xFF3B82F6), 90, 14),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: card('Sun and Energy', 'Micheal Hiu', '5 minutes',
                      teal, 90, 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget category(String text, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? teal : const Color(0xFFE3FAF8),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text,
        style: TextStyle(color: selected ? Colors.white : Colors.black),
      ),
    );
  }

  Widget card(String title, String subtitle, String info, Color color,
      double colorHeight, double titleSize) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: colorHeight,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: titleSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.black54)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.favorite_border, size: 14),
                        const SizedBox(width: 4),
                        Text(info, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                    const Row(
                      children: [
                        Text('Start', style: TextStyle(fontSize: 12)),
                        Icon(Icons.chevron_right, size: 16),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  static const Color blue = Color(0xFF5669FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: blue),
        title: const Text('Organizer'),
        actions: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFEEF0FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.more_vert, color: blue),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Albert Flores',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stat('2.368', 'Followers'),
                verticalLine(),
                stat('346', 'Following'),
                verticalLine(),
                stat('13', 'Events'),
              ],
            ),
            horizontalLine(),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add),
                    label: const Text('Follow'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                    label: const Text('Messages'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: blue,
                      side: const BorderSide(color: blue),
                      elevation: 0,
                      minimumSize: const Size(0, 48),
                    ),
                  ),
                ),
              ],
            ),
            horizontalLine(),

            Row(
              children: [
                Expanded(child: tab('About', true)),
                const SizedBox(width: 8),
                Expanded(child: tab('Events', false)),
                const SizedBox(width: 8),
                Expanded(child: tab('Reviews', false)),
              ],
            ),
            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                    'sed do eiusmod tempor incididunt ut labore et dolore magna '
                    'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                    'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                    'sed do eiusmod tempor incididunt ut labore et dolore magna '
                    'aliqua.',
                    style: TextStyle(height: 1.4),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Read more...',
                    style: TextStyle(color: blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget stat(String number, String label) {
    return Column(
      children: [
        Text(number,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }

  Widget verticalLine() {
    return Container(width: 1, height: 40, color: Colors.grey.shade300);
  }

  Widget horizontalLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
      margin: const EdgeInsets.symmetric(vertical: 16),
    );
  }

  Widget tab(String text, bool selected) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? blue : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: blue),
      ),
      child: Text(
        text,
        style: TextStyle(color: selected ? Colors.white : blue),
      ),
    );
  }
}