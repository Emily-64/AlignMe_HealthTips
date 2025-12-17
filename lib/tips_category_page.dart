import 'package:flutter/material.dart';
import 'tips_detail_page.dart';

class TipsCategoryPage extends StatelessWidget {
  const TipsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        "title": "Hydration",
        "icon": Icons.water_drop,
        "intro": "Staying hydrated keeps your body energized.",
        "benefits": ["Energy", "Digestion", "Focus"],
  "tips": [
  "Drink 8–10 glasses of water daily",
  "Start your day with a glass of water",
  "Sip water regularly, don’t wait to feel thirsty",
  "Replace sugary drinks with water",
  "Increase intake during hot weather or workouts",
],

  "routine": [
  "1 glass immediately after waking up",
  "1 glass before each meal",
  "Small sips every 30–60 minutes",
  "1 glass before bedtime",
],
      },
      {
        "title": "Fitness",
        "icon": Icons.fitness_center,
        "intro": "Movement keeps your body strong.",
        "benefits": ["Strength", "Heart health"],
  "tips": [
  "Exercise at least 30 minutes a day",
  "Mix cardio, strength, and stretching",
  "Warm up before workouts",
  "Cool down after exercising",
  "Stay consistent rather than intense",

],
  "routine":[
  "5 min warm-up stretching",
  "20–30 min workout or walking",
  "5 min cool-down",
  "Light stretching before bed",
],

      },
      {
        "title": "Sleep",
        "icon": Icons.bedtime,
        "intro": "Good sleep restores your body.",
        "benefits": ["Better mood", "Immunity"],
        "tips": [
  "Sleep 7–8 hours every night",
  "Go to bed and wake up at the same time",
  "Avoid screens 1 hour before sleep",
  "Keep your bedroom dark and quiet",
  "Avoid caffeine at night",
],
  "routine": [
  "Dim lights after sunset",
  "Avoid phone after 10 PM",
  "Sleep before 11 PM",
  "Wake up at the same time daily",
],
      },
      {
        "title": "Nutrition",
        "icon": Icons.restaurant,
        "intro": "Healthy food fuels your body.",
        "benefits": ["Energy", "Digestion"],
  "tips": [
  "Eat more fruits and vegetables",
  "Reduce junk and processed food",
  "Eat meals on time",
  "Drink enough water with meals",
  "Avoid overeating at night",
],
  "routine": [
  "Healthy breakfast within 1 hour of waking",
  "Balanced lunch with vegetables",
  "Light dinner before 8 PM",
  "Avoid late-night snacking",
],
      },
      {
        "title": "Stress",
        "icon": Icons.self_improvement,
        "intro": "Peaceful mind, healthy life.",
        "benefits": ["Calmness", "Focus"],
  "tips":[
  "Practice deep breathing daily",
  "Meditate for at least 5 minutes",
  "Take short breaks during work",
  "Spend time outdoors",
  "Limit overthinking and screen time",
],
  "routine": [
  "5 min breathing after waking up",
  "Short breaks every 2–3 hours",
  "Evening relaxation or meditation",
  "Avoid stressful content before sleep",
],
      },
    ];

    return Scaffold(
      body: Container(
        // 🔥 FULL MAROON GRADIENT BACKGROUND
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFB1123D), // maroon
              Color(0xFF2B0A1F), // dark wine
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
              // 🔤 HEADER
              const Text(
                "Health Tips",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
                ],
            ),
              const SizedBox(height: 20),

              const Text(
                "Welcome Back !",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Choose a habit to improve your health today",
                style: TextStyle(
                  color: Color(0xFFF2C1CF),
                ),
              ),

              const SizedBox(height: 30),

              // 🔽 GLASS CATEGORY TILES
              ...categories.map((c) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TipsDetailPage(
                          title: c["title"],
                          icon: c["icon"],
                          intro: c["intro"],
                          benefits: List<String>.from(c["benefits"]),
                          tips: List<String>.from(c["tips"]),
                          routine: List<String>.from(c["routine"]),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    padding: const EdgeInsets.all(18),

                    // 🧊 GLASS / OUTLINE TILE
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.35),
                        width: 1.2,
                      ),
                    ),

                    child: Row(
                      children: [
                        // 🧊 GLASS ICON CONTAINER
                      /*  Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.18),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                          child: Icon(
                            c["icon"],
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
*/
                      /*  Container(
  width: 56,
  height: 56,
  decoration: BoxDecoration(
    color: const Color(0xFF7A0F2B), // solid maroon
    borderRadius: BorderRadius.circular(16),
  ),
  child: Icon(
    c["icon"],
    color: Colors.white,
    size: 28,
  ),
),*/
Container(
  width: 56,
  height: 56,
  decoration: BoxDecoration(
    color: Colors.white, // white background
    borderRadius: BorderRadius.circular(16),
  ),
  child: Icon(
    c["icon"],
    color: const Color(0xFF7A0F2B), // maroon icon
    size: 28,
  ),
),


                        const SizedBox(width: 16),

                        Text(
                          c["title"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),

                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white70,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
