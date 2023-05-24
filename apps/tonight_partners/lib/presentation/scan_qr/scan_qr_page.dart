import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/scan_qr/scan_qr_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:tonight_partners/presentation/scan_qr/widgets/rewards_qr_scanner.dart';
import 'package:tonight_partners/presentation/scan_qr/widgets/rewards_scan_result.dart';
import 'package:tonight_partners/presentation/scan_qr/widgets/scan_another_reward_button.dart';

class ScanQrPage extends StatelessWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ScanQrCubit>(),
      child: Scaffold(
        // TODO - add translation
        appBar: const TonightPartnersAppBar(title: 'Skanuj'),
        floatingActionButton: const ScanAnotherRewardButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<ScanQrCubit, ScanQrState>(
            builder: (context, state) {
              switch (state.status) {
                case CubitStatus.initial:
                  return const RewardsQrScanner();
                case CubitStatus.loading:
                  return Center(
                    child: SpinKitWave(color: context.onSurfaceColor),
                  );
                case CubitStatus.failure:
                  return RewardsScanResult(
                    color: Colors.red.lighten(),
                    icon: Icons.remove,
                    message: state.errorMessage.getOrCrash(),
                  );
                case CubitStatus.success:
                  final photoUrl = state.lastScannedPhotoUrl.getOrCrash();
                  final timeTask = state.lastScannedTask.getOrCrash();
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        RewardsScanResult(
                          color: context.primaryColor.lighten(),
                          icon: FontAwesomeIcons.check,
                          message: "Ważna nagroda",
                        ),
                        const SizedBox(height: 20),
                        Text(
                          timeTask.descriptionPl,
                          style: context.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        CachedNetworkImage(
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => SizedBox(
                            height: 400,
                            child: Center(
                              child: SpinKitThreeBounce(
                                color: context.onSurfaceColor,
                                size: 24,
                              ),
                            ),
                          ),
                          imageUrl: photoUrl,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageBuilder: (context, imageProvider) => Container(
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
