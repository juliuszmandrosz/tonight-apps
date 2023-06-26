import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_app_links/user_app_links_facade.dart';
import 'package:translations/translations.dart';

part 'terms_of_service_cubit.freezed.dart';
part 'terms_of_service_state.dart';

class AppLinksCubit extends Cubit<TermsOfServiceState> {
  final UserAppLinksFacade _appLinksFacade;

  AppLinksCubit(this._appLinksFacade) : super(TermsOfServiceState.initial());

  Future<void> launchInstagram() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.instagram),
        ),
      ),
    );
  }

  Future<void> launchTikTok() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.tikTok),
        ),
      ),
    );
  }

  Future<void> launchFacebook() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.facebook),
        ),
      ),
    );
  }

  Future<void> launchDiscord() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.discord),
        ),
      ),
    );
  }

  Future<void> launchTermsOfService() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.termsOfService),
        ),
      ),
    );
  }

  Future<void> launchPrivacyPolicy() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _appLinksFacade.getUserAppLinks();

    result.fold(
      (_) => _emitFailure(S().serverError),
      (links) => emit(
        state.copyWith(
          status: CubitStatus.success,
          url: some(links.privacyPolicy),
        ),
      ),
    );
  }

  _emitFailure(String errorMessage) {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        snackbarMessage: some(errorMessage),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }
}
