import 'package:flutter/material.dart';

class LearnPathCard extends StatelessWidget {
  const LearnPathCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 194,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
            boxShadow: [BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            )
            ],
        gradient: const LinearGradient(
          colors: [Color(0xFF58B270), Color.fromARGB(255, 126, 213, 149)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Global padding inside the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Row
            Row(
              children: [
                const Text(
                  "My Learn Path",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF317C43),
                  ),
                  child: Center(
                    child: IconButton(onPressed: () {}, 
                    icon: Icon(
                      Icons.arrow_outward,
                      color: Colors.white,
                    ),)
                    
                  ),
                )
              ],
            ),

            const Spacer(), // Pushes content to the bottom

            // Inner Info Row
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF44AE61),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Text Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Continue with...",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),

                        Text(
                          "Harmony & Chord Theory",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Placeholder icon(ask a Tut for help with progress?)
                  Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(Icons.check, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}