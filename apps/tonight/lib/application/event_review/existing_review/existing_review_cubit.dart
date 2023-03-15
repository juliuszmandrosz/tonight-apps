import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clubs/clubs.dart';

part 'existing_review_cubit.freezed.dart';
part 'existing_review_state.dart';

class ExistingReviewCubit extends Cubit<ExistingReviewState> {
  final UserReviewFacade _reviewFacade;

  ExistingReviewCubit(this._reviewFacade)
      : super(const ExistingReviewState.initial());

  void getReview(String reviewId, String clubId) async {
    emit(const ExistingReviewState.loadInProgress());

    final failureOrSuccess = await _reviewFacade.getReview(reviewId, clubId);

    failureOrSuccess.fold(
      (failure) => emit(
        const ExistingReviewState.loadFailure(
          UserReviewFailure.unexpected(),
        ),
      ),
      (review) => emit(
        ExistingReviewState.loadSuccess(review),
      ),
    );
  }
}
