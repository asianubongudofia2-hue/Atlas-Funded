import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Evaluation Challenges',
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Choose Your Funding Tier',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Pass our 2-step evaluation and get funded up to \$200,000 with an 80% profit split.',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 24),
          _buildChallengeCard(
            'Starter Challenge',
            '\$10,000',
            '\$155',
            ['Target: \$1,000 (10%)', 'Max Loss: \$1,000', 'Time Limit: Unlimited'],
          ),
          const SizedBox(height: 16),
          _buildChallengeCard(
            'Pro Challenge',
            '\$50,000',
            '\$295',
            ['Target: \$5,000 (10%)', 'Max Loss: \$5,000', 'Time Limit: Unlimited'],
            isPopular: true,
          ),
          const SizedBox(height: 16),
          _buildChallengeCard(
            'Expert Challenge',
            '\$100,000',
            '\$540',
            ['Target: \$10,000 (10%)', 'Max Loss: \$10,000', 'Time Limit: Unlimited'],
          ),
        ],
      ),
    );
  }

  Widget _buildChallengeCard(
    String title,
    String accountSize,
    String price,
    List<String> features, {
    bool isPopular = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isPopular ? Colors.amber : Colors.grey.shade800,
          width: isPopular ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isPopular)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'POPULAR',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                accountSize,
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Text('Account', style: TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          ),
          const Divider(color: Colors.grey, height: 24),
          ...features.map((feature) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle, color: Colors.amber, size: 16),
                    const SizedBox(width: 8),
                    Text(feature, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
              )),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isPopular ? Colors.amber : Colors.grey.shade800,
                foregroundColor: isPopular ? Colors.black : Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // TODO: Implement challenge purchase flow
              },
              child: Text(
                'Start Challenge — $price',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
