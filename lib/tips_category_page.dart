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
  "Add a reminder alarm for water breaks",
  "Drink one glass after using the restroom",
  "Flavor water with lemon or mint",
  "Refill your bottle whenever it’s empty",
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

  "Stand up and stretch every hour",
  "Do 10 squats while watching TV",
  "Walk while taking phone calls",
  "Park farther away to walk more",
  "Do light mobility exercises during breaks",
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
  "Create a fixed bedtime ritual",
  "Avoid phone after 10 PM",
  "Avoid heavy conversations at night",
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
  "Plan meals a day in advance",
  "Use smaller plates for meals",
  "Stop eating when 80% full",
  "Include protein in every meal",
  "Limit eating while distracted",
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
  "Practice slow breathing during traffic",
  "Reduce notification alerts",
  "Spend time with plants or nature",
  "Listen to calming music daily",
  "Reflect on one positive moment each day",
  "Avoid stressful content before sleep",
],
      },
      {
  "title": "Mental Focus",
  "icon": Icons.psychology,
  "intro": "Improve concentration, clarity, and productivity in daily tasks.",
  "benefits": [
  "Improves concentration",
  "Boosts productivity",
  "Reduces mental fatigue",
  "Enhances decision-making",
   ],
  "tips": [
  "Work on one task at a time",
  "Avoid multitasking",
  "Take short focus breaks",
  "Keep workspace clean",
],
  "routine": [
  "Set a 25-minute focus timer",
  "Keep phone away during work",
  "Take a 5-minute mental break",
  "Review tasks at end of day",
],
},

{
  "title": "Posture & Mobility",
  "icon": Icons.accessibility_new,
  "intro": "Maintain correct posture to avoid body pain and stiffness.",
  "benefits": [
    "Reduces back and neck pain",
    "Improves body alignment",
    "Prevents joint stiffness",
  ],
  "tips": [
    "Sit with straight spine",
    "Avoid slouching while using phone",
    "Stretch neck and shoulders regularly",
  ],
  "routine": [
    "Check posture every hour",
    "Roll shoulders while seated",
    "Stretch spine after long sitting",
  ],
},
{
  "title": "Breathing & Relaxation",
  "icon": Icons.air,
  "intro": "Use breathing techniques to calm your body and mind.",
  "benefits": [
    "Reduces anxiety",
    "Improves oxygen flow",
    "Promotes relaxation",
  ],
  "tips": [
    "Practice deep breathing daily",
    "Breathe slowly and evenly",
    "Focus on breath awareness",
  ],
  "routine": [
    "Inhale 4 seconds, exhale 6 seconds",
    "Practice breathing during breaks",
    "Deep breathing before sleep",
  ],
},
{
  "title": "Digital Wellbeing",
  "icon": Icons.phone_android,
  "intro": "Build a healthier relationship with screens and devices.",
  "benefits": [
    "Reduces eye strain",
    "Improves focus",
    "Improves sleep quality",
  ],
  "tips": [
    "Limit unnecessary screen time",
    "Take breaks from devices",
    "Avoid phone usage before sleep",
  ],
  "routine": [
    "Follow 20-20-20 eye rule",
    "Keep phone away during meals",
    "Turn off non-essential notifications",
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
    // Icon container
    Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(
        c["icon"] as IconData,
        color: const Color(0xFF7A0F2B),
        size: 26,
      ),
    ),

    const SizedBox(width: 14),

    // 👇 THIS IS THE IMPORTANT PART
    Expanded(
      child: Text(
        c["title"] as String,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        overflow: TextOverflow.ellipsis, // safety
      ),
    ),

    const Icon(
      Icons.chevron_right,
      color: Colors.white70,
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
