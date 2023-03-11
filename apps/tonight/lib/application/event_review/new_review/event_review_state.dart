part of 'event_review_cubit.dart';

@freezed
abstract class EventReviewState with _$EventReviewState {
  const EventReviewState._();

  const factory EventReviewState({
    required double reviewValue,
    required ReviewContentInput reviewContent,
    required String userId,
    required String username,
    required FormzStatus submittingStatus,
    required CubitStatus status,
    required Option<String> errorMessage,
  }) = _EventReviewState;

  factory EventReviewState.initial() => EventReviewState(
        reviewValue: 0,
        reviewContent: const ReviewContentInput.pure(),
        userId: '',
        username: '',
        status: CubitStatus.initial,
        submittingStatus: FormzStatus.pure,
        errorMessage: none(),
      );
}
