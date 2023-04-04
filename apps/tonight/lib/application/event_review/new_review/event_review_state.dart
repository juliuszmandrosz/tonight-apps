part of 'event_review_cubit.dart';

@freezed
abstract class EventReviewState with _$EventReviewState {
  const EventReviewState._();

  const factory EventReviewState({
    required double reviewValue,
    required ReviewContentInput reviewContent,
    required FormzStatus submittingStatus,
    required CubitStatus status,
    required Option<String> errorMessage,
    required Option<UserProfile> userProfile,
  }) = _EventReviewState;

  factory EventReviewState.initial() => EventReviewState(
        reviewValue: 0,
        reviewContent: const ReviewContentInput.pure(),
        status: CubitStatus.initial,
        submittingStatus: FormzStatus.pure,
        errorMessage: none(),
        userProfile: none(),
      );
}
