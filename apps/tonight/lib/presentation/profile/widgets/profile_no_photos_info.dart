import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:translations/translations.dart';

class ProfileNoPhotosInfo extends StatelessWidget {
  const ProfileNoPhotosInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          AutoSizeText(
            S().profilePhotosInfo,
            style: context.titleSmall.copyWith(
              color: context.secondaryColor,
            ),
          ),
          const SizedBox(height: 20),
          BlocSelector<ProfileBloc, ProfileState, bool>(
            selector: (state) => state.refreshPhotosStatus.isLoading(),
            builder: (context, isLoading) {
              return OutlinedLoaderButton(
                onPressed: () => context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.photosRefreshed()),
                label: S().refresh,
                isLoading: isLoading,
              );
            },
          ),
        ],
      ),
    );
  }
}
