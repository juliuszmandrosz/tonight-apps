import 'package:auto_route/auto_route.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/add_wall_photo/models/wall_photo_venue_model.dart';
import 'package:tonight/presentation/add_wall_photo/add_wall_photo_page.dart';
import 'package:tonight/presentation/app_settings/app_settings_page.dart';
import 'package:tonight/presentation/club_city_picker/club_city_picker_page.dart';
import 'package:tonight/presentation/club_details/club_details_page.dart';
import 'package:tonight/presentation/contact/contact_page.dart';
import 'package:tonight/presentation/discover/discover_page.dart';
import 'package:tonight/presentation/event_city_picker/event_city_picker_page.dart';
import 'package:tonight/presentation/event_date_picker/event_date_picker_page.dart';
import 'package:tonight/presentation/event_filters/event_filters_page.dart';
import 'package:tonight/presentation/event_participants/event_participants_page.dart';
import 'package:tonight/presentation/event_review/review_page.dart';
import 'package:tonight/presentation/event_room/event_room_page.dart';
import 'package:tonight/presentation/events_details/event_details_page.dart';
import 'package:tonight/presentation/favorites/favorites_page.dart';
import 'package:tonight/presentation/invoice_data/invoice_data_page.dart';
import 'package:tonight/presentation/network_lost/network_lost_page.dart';
import 'package:tonight/presentation/onboarding/onboarding_page.dart';
import 'package:tonight/presentation/onboarding/onboarding_user_details_page.dart';
import 'package:tonight/presentation/payment_method/payment_method_page.dart';
import 'package:tonight/presentation/profile/profile_page.dart';
import 'package:tonight/presentation/routes/page_transitions/fade_in_transition.dart';
import 'package:tonight/presentation/routes/page_transitions/slide_left_transition.dart';
import 'package:tonight/presentation/routes/page_transitions/slide_up_transition.dart';
import 'package:tonight/presentation/routes/page_transitions/zoom_in_transition.dart';
import 'package:tonight/presentation/select_club/select_club_page.dart';
import 'package:tonight/presentation/sign_in/sign_in_page.dart';
import 'package:tonight/presentation/sign_in_with_phone_number/sign_in_with_phone_number_page.dart';
import 'package:tonight/presentation/splash/splash_page.dart';
import 'package:tonight/presentation/ticket_checkout/ticket_checkout_page.dart';
import 'package:tonight/presentation/ticket_payment_confirm/ticket_payment_confirm_page.dart';
import 'package:tonight/presentation/ticket_qr/ticket_qr_page.dart';
import 'package:tonight/presentation/ticket_scan_confirm/ticket_scan_confirm_page.dart';
import 'package:tonight/presentation/tickets/tickets_page.dart';
import 'package:tonight/presentation/tonight/tonight_page.dart';
import 'package:tonight/presentation/update_profile_picture/update_profile_picture_page.dart';
import 'package:tonight/presentation/update_username/update_username_page.dart';
import 'package:tonight/presentation/user_details/user_details_page.dart';
import 'package:tonight/presentation/user_wall_photo_preview/user_wall_photo_preview_page.dart';
import 'package:tonight/presentation/verify_phone_number/verify_phone_number_page.dart';
import 'package:tonight/presentation/vip_checkout/vip_checkout_page.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/wall_photo_camera_preview_page.dart';
import 'package:tonight/presentation/wall_photos_filters/wall_photos_filters_page.dart';
import 'package:tonight/presentation/welcome_loader/welcome_loader_page.dart';

const animationDuration = 300;

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      initial: true,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: SignInPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: WelcomeLoaderPage,
      children: [
        CustomRoute(
          page: TonightPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: DiscoverPage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
        CustomRoute(
          page: ProfilePage,
          transitionsBuilder: slideLeftTransition,
          durationInMilliseconds: animationDuration,
        ),
      ],
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: NetworkLostPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventFiltersPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventDetailsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: UserDetailsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ClubDetailsPage,
      transitionsBuilder: fadeInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketQrPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventDatePickerPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventCityPickerPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ClubCityPickerPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketCheckoutPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: VipCheckoutPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketPaymentConfirmPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketScanConfirmPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: OnboardingUserDetailsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: OnboardingPage,
      transitionsBuilder: zoomInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute<CustomerData>(
      page: InvoiceDataPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: UpdateUsernamePage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: UpdateProfilePicturePage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ReviewPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: AppSettingsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: ContactPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute<CustomerData>(
      page: PaymentMethodPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: WallPhotoCameraPreviewPage,
      transitionsBuilder: slideUpTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: AddWallPhotoPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute<WallPhotoVenue>(
      page: SelectClubPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: TicketsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: FavoritesPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventRoomPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: EventParticipantsPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: UserWallPhotoPreviewPage,
      transitionsBuilder: fadeInTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: VerifyPhoneNumberPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: SignInWithPhoneNumberPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
    CustomRoute(
      page: WallPhotoFiltersPage,
      transitionsBuilder: slideLeftTransition,
      durationInMilliseconds: animationDuration,
    ),
  ],
)
class $AppRouter {}
