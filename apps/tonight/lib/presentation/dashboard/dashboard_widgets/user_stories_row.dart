import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class StoriesRow extends StatelessWidget {
  final List<String> userImages;

  const StoriesRow({
    required this.userImages,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(const UserStoriesRoute()),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: userImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 86,
                    height: 86,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF6B5FE7).withOpacity(0.7),
                          Colors.white70
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(userImages[index]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
