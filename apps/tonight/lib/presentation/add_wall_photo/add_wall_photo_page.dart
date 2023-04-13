import 'dart:io';
import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';

class AddWallPhotoPage extends StatelessWidget {
  final XFile photo;

  const AddWallPhotoPage({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - add hero tah
    const heroTag = '';
    return BlocProvider(
      create: (context) => getIt<AddWallPhotoCubit>()..initState(photo),
      child: Scaffold(
        // TODO - add translation
        appBar: TonightAppBar(title: 'Opublikuj'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                height: constraints.maxWidth,
                child: Hero(
                  tag: heroTag,
                  //this just wont animate hero
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Image.file(
                      File(photo.path),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
