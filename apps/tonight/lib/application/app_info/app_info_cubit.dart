import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_info_cubit.freezed.dart';

part 'app_info_state.dart';

class AppInfoCubit extends Cubit<AppInfoState> {
  AppInfoCubit() : super(AppInfoState.initial());

  Future<void> loadAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    emit(AppInfoState.loaded(packageInfo));
  }
}
