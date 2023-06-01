import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/add_wall_photo/cubit/add_wall_photo_cubit.dart';

class AddWallPhotoShareButton extends StatelessWidget {
  const AddWallPhotoShareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddWallPhotoCubit, AddWallPhotoState>(
      builder: (context, state) {
        return SizedBox(
          width: 48,
          child: state.sharePhotoStatus.isLoading()
              ? const CircleLoadingIndicator(size: 24)
              : IconButton(
                  icon: const FaIcon(FontAwesomeIcons.shareNodes),
                  onPressed: () =>
                      context.read<AddWallPhotoCubit>().sharePhoto(),
                ),
        );
      },
    );
  }
}
