import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: double.infinity,
      child: Stack(
        children: [
          // Background
          Container(
            color: Colors.white,
          ),

          // Text Section
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Row(
                  children: const [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xffFF6B00),
                      size: 35,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "ShopEasy",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // Welcome
                const Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                    color: Color(0xff1E293B),
                  ),
                ),

                const SizedBox(height: 15),

                // Description
                const Text(
                  "Login to continue shopping\n"
                  "the best products",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),

          // Shopping Image
          Positioned(
            right: -20,
            top: 20,
            child: Image.asset(
              "assets/images/shopping.png",
              height: 320,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}