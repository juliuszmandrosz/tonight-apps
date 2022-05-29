import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/back_button.dart';

class ClubDetailsImage extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;

  const ClubDetailsImage(
      {Key? key, required this.imageUrl, required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 220,
            child: Stack(
              children: [
                Align(
                  child: Hero(
                    tag: heroTag ?? '',
                    //this just wont animate hero
                    child: Container(
                      height: 220,
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
                const Positioned(
                  top: 5,
                  left: 5,
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
