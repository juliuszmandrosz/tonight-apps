import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';

class TonightPartnersDrawerHeader extends StatelessWidget {
  const TonightPartnersDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubInfoCubit, ClubInfoState>(
      builder: (context, state) {
        final club = state.club.getOrCrash();
        return Row(
          children: [
            CachedNetworkImage(
              placeholder: (context, url) => CircleAvatar(
                radius: 30,
                child: SpinKitThreeBounce(
                  color: context.onSurfaceColor,
                  size: 16,
                ),
              ),
              imageUrl: club.clubImageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, image) => CircleAvatar(
                radius: 30,
                backgroundImage: image,
              ),
            ),
            const SizedBox(width: 20),
            TonightPartnersHeadline(text: club.clubName)
          ],
        );
      },
    );
  }
}
