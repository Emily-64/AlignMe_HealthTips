import 'package:flutter/material.dart';

class TipsDetailPage extends StatelessWidget {
  final String title;
  final String intro;
  final List<String> benefits;
  final List<String> tips;
  final List<String> routine;
  final IconData icon;

  const TipsDetailPage({
    super.key,
    required this.title,
    required this.intro,
    required this.benefits,
    required this.tips,
    required this.routine,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 🔥 SAME MAROON GRADIENT
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFB1123D),
              Color(0xFF2B0A1F),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔙 BACK BUTTON
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),

                const SizedBox(height: 10),

                // 🔘 ICON
                Center(
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(
                      icon,
                      size: 42,
                      color: const Color(0xFF7A0F2B),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // 🔤 TITLE
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // 📝 INTRO
                Center(
                  child: Text(
                    intro,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFFF2C1CF),
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                _glassSection("Why this matters", benefits),
                _glassSection("Daily Tips", tips),
                _glassSection("Simple Routine", routine),

                const SizedBox(height: 30),

                // ✅ ACTION BUTTON (OUTLINE STYLE)
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      side: BorderSide(
                        color: Colors.white.withOpacity(0.6),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("$title practiced today 🤍"),
                          backgroundColor: const Color(0xFF7A0F2B),
                        ),
                      );
                    },
                    child: const Text(
                      "Mark as Practiced Today",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🧊 GLASS SECTION WIDGET
  Widget _glassSection(String heading, List<String> items) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.white.withOpacity(0.35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "• ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      e,
                      style: const TextStyle(
                        color: Color(0xFFF2C1CF),
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
