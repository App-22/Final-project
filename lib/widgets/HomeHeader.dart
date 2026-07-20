import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menu Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 28,
              color: Colors.black,
            ),
          ),

          const SizedBox(width: 8),

          // Greeting
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello, Eyad 👋",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "What are you looking for?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Favorite
          const HeaderIcon(
            icon: Icons.favorite_border,
            badgeCount: 3,
          ),

          const SizedBox(width: 16),

          // Cart
          const HeaderIcon(
            icon: Icons.shopping_cart_outlined,
            badgeCount: 2,
          ),
        ],
      ),
    );
  }
}

class HeaderIcon extends StatelessWidget {
  final IconData icon;
  final int badgeCount;

  const HeaderIcon({
    super.key,
    required this.icon,
    required this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.black,
        ),
        Positioned(
          right: -6,
          top: -6,
          child: Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "$badgeCount",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}