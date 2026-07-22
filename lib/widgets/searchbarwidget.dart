import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),

            const Icon(
              Icons.search,
              color: Colors.grey,
              size: 28,
            ),

            const SizedBox(width: 10),

            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for products, brands and more...",
                  border: InputBorder.none,
                ),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner),
            ),
          ],
        ),
      ),
    );
  }
}