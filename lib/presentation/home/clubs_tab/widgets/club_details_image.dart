import 'package:flutter/material.dart';

import 'club_details/back_button.dart';

class ClubDetailsImage extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;

  const ClubDetailsImage(
      {Key? key, required this.imageUrl, required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 200,
            child: Stack(
              children: [
                Align(
                  child: Hero(
                    tag: heroTag ?? "",
                    //this just wont animate hero
                    child: Container(
                      height: 200,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(imageUrl).image,
                        ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.95, -0.7),
                  child: BackButtonWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
