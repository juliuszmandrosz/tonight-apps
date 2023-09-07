// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:account_settings/account_settings.dart' as _i79;
import 'package:auth/auth.dart' as _i71;
import 'package:auto_route/auto_route.dart' as _i55;
import 'package:camera/camera.dart' as _i81;
import 'package:clubs/domain/club/club_entity.dart' as _i68;
import 'package:clubs/infrastructure/filters/filter/city_filter.dart' as _i69;
import 'package:dartz/dartz.dart' as _i72;
import 'package:events/domain/events/event_entity.dart' as _i66;
import 'package:events/events.dart' as _i64;
import 'package:flutter/material.dart' as _i56;
import 'package:payments/domain/domain.dart' as _i60;
import 'package:tickets/domain/ticket_entity.dart' as _i70;

import '../../application/add_wall_photo/models/wall_photo_venue_model.dart'
    as _i62;
import '../../application/dashboard/models/event_voucher_model.dart' as _i67;
import '../../application/dashboard/models/user_stories_with_interactions.dart'
    as _i63;
import '../../application/events/event_filters/event_filters_page_type.dart'
    as _i65;
import '../../domain/challenges/challenge_entity.dart' as _i80;
import '../../domain/marketplace_discounts/marketplace_discount_entity.dart'
    as _i77;
import '../../domain/participants/participant_entity.dart' as _i82;
import '../../domain/time_tasks/time_task_entity.dart' as _i73;
import '../../domain/user_marketplace_discounts/user_marketplace_discount_entity.dart'
    as _i78;
import '../../domain/user_tonight_vouchers/user_tonight_voucher_entity.dart'
    as _i76;
import '../../domain/wall_photos/wall_photo_entity.dart' as _i74;
import '../../infrastructure/wall_photos/filters/wall_photo_filters.dart'
    as _i75;
import '../activate_ticket/activate_ticket_page.dart' as _i39;
import '../activate_time_task_reward/activate_time_task_reward_page.dart'
    as _i36;
import '../add_challenge_story/add_challenge_story_page.dart' as _i46;
import '../add_wall_photo/add_wall_photo_page.dart' as _i26;
import '../app_settings/app_settings_page.dart' as _i22;
import '../challenge_stories/challenge_stories_page.dart' as _i45;
import '../challenges/challenges_page.dart' as _i52;
import '../club_city_picker/club_city_picker_page.dart' as _i12;
import '../club_details/club_details_page.dart' as _i9;
import '../contact/contact_page.dart' as _i23;
import '../daily_spin_page/daily_spin_page.dart' as _i3;
import '../dashboard/dashboard_page.dart' as _i50;
import '../discover/discover_page.dart' as _i51;
import '../event_city_picker/event_city_picker_page.dart' as _i11;
import '../event_date_picker/event_date_picker_page.dart' as _i10;
import '../event_filters/event_filters_page.dart' as _i6;
import '../event_participants/event_participants_page.dart' as _i31;
import '../event_review/review_page.dart' as _i21;
import '../event_room/event_room_page.dart' as _i30;
import '../events_details/event_details_page.dart' as _i7;
import '../favorites/favorites_page.dart' as _i29;
import '../invoice_data/invoice_data_page.dart' as _i18;
import '../marketplace_discount_details/marketplace_discount_details_page.dart'
    as _i42;
import '../marketplace_discounts/marketplace_discounts_page.dart' as _i41;
import '../marketplace_product/marketplace_product_page.dart' as _i44;
import '../messages/messages_page.dart' as _i53;
import '../network_lost/network_lost_page.dart' as _i5;
import '../onboarding/onboarding_page.dart' as _i17;
import '../onboarding_user_details/onboarding_user_details_page.dart' as _i16;
import '../payment_method/payment_method_page.dart' as _i24;
import '../photo_preview/photo_preview_page.dart' as _i47;
import '../profile/profile_page.dart' as _i54;
import '../redeem_tonight_voucher/redeem_tonight_voucher_page.dart' as _i37;
import '../select_club/select_club_page.dart' as _i27;
import '../sign_in/sign_in_page.dart' as _i2;
import '../sign_in_with_phone_number/sign_in_with_phone_number_page.dart'
    as _i34;
import '../splash/splash_page.dart' as _i1;
import '../story_comments/story_comments_page.dart' as _i49;
import '../ticket_checkout/ticket_checkout_page.dart' as _i13;
import '../ticket_payment_confirm/ticket_payment_confirm_page.dart' as _i14;
import '../ticket_scan_confirm/ticket_scan_confirm_page.dart' as _i15;
import '../tickets_and_vouchers/tickets_and_vouchers_page.dart' as _i28;
import '../update_customer_email/update_customer_email_page.dart' as _i40;
import '../update_profile_picture/update_profile_picture_page.dart' as _i20;
import '../update_username/update_username_page.dart' as _i19;
import '../user_city_picker/user_city_picker_page.dart' as _i38;
import '../user_details/user_details_page.dart' as _i8;
import '../user_marketplace_discount_details/user_marketplace_discount_details_page.dart'
    as _i43;
import '../user_wall_photo_preview/user_wall_photo_preview_page.dart' as _i32;
import '../verify_phone_number/verify_phone_number_page.dart' as _i33;
import '../video_preview/video_preview_page.dart' as _i48;
import '../wall_photo_camera_preview/wall_photo_camera_preview_page.dart'
    as _i25;
import '../wall_photos_filters/wall_photos_filters_page.dart' as _i35;
import '../welcome_loader/welcome_loader_page.dart' as _i4;
import 'page_transitions/fade_in_transition.dart' as _i59;
import 'page_transitions/slide_left_transition.dart' as _i58;
import 'page_transitions/slide_up_transition.dart' as _i61;
import 'page_transitions/zoom_in_transition.dart' as _i57;

class AppRouter extends _i55.RootStackRouter {
  AppRouter([_i56.GlobalKey<_i56.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i55.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DailySpinRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.DailySpinPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeLoaderRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.WelcomeLoaderPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NetworkLostRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.NetworkLostPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<EventFiltersRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.EventFiltersPage(
          blocContext: args.blocContext,
          selectedFilters: args.selectedFilters,
          eventFiltersPageType: args.eventFiltersPageType,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsRouteArgs>(
          orElse: () => const EventDetailsRouteArgs());
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.EventDetailsPage(
          eventId: args.eventId,
          event: args.event,
          heroTag: args.heroTag,
          voucher: args.voucher,
          ticketPrice: args.ticketPrice,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.UserDetailsPage(
          userId: args.userId,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClubDetailsRouteArgs>(
          orElse: () => const ClubDetailsRouteArgs());
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.ClubDetailsPage(
          key: args.key,
          clubId: args.clubId,
          club: args.club,
          heroTag: args.heroTag,
        ),
        transitionsBuilder: _i59.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventDatePickerRoute.name: (routeData) {
      final args = routeData.argsAs<EventDatePickerRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.EventDatePickerPage(
          blocContext: args.blocContext,
          selectedDate: args.selectedDate,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventCityPickerRoute.name: (routeData) {
      final args = routeData.argsAs<EventCityPickerRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.EventCityPickerPage(
          blocContext: args.blocContext,
          selectedCity: args.selectedCity,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ClubCityPickerRoute.name: (routeData) {
      final args = routeData.argsAs<ClubCityPickerRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.ClubCityPickerPage(
          blocContext: args.blocContext,
          selectedCity: args.selectedCity,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketCheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<TicketCheckoutRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.TicketCheckoutPage(
          event: args.event,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketPaymentConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<TicketPaymentConfirmRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i14.TicketPaymentConfirmPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketScanConfirmRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.TicketScanConfirmPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingUserDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingUserDetailsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i16.OnboardingUserDetailsPage(
          user: args.user,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.OnboardingPage(),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InvoiceDataRoute.name: (routeData) {
      final args = routeData.argsAs<InvoiceDataRouteArgs>();
      return _i55.CustomPage<_i60.CustomerData>(
        routeData: routeData,
        child: _i18.InvoiceDataPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateUsernameRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateUsernameRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i19.UpdateUsernamePage(
          currentUsername: args.currentUsername,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateProfilePictureRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfilePictureRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.UpdateProfilePicturePage(
          currentProfilePictureUrl: args.currentProfilePictureUrl,
          username: args.username,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ReviewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i21.ReviewPage(
          eventId: args.eventId,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppSettingsRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i22.AppSettingsPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i23.ContactPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodRouteArgs>();
      return _i55.CustomPage<_i60.CustomerData>(
        routeData: routeData,
        child: _i24.PaymentMethodPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WallPhotoCameraPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<WallPhotoCameraPreviewRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i25.WallPhotoCameraPreviewPage(
          event: args.event,
          timeTask: args.timeTask,
          key: args.key,
        ),
        transitionsBuilder: _i61.slideUpTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddWallPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<AddWallPhotoRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i26.AddWallPhotoPage(
          photoPath: args.photoPath,
          heroTag: args.heroTag,
          isSelfie: args.isSelfie,
          event: args.event,
          timeTask: args.timeTask,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SelectClubRoute.name: (routeData) {
      return _i55.CustomPage<_i62.WallPhotoVenue>(
        routeData: routeData,
        child: const _i27.SelectClubPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TicketsAndVouchersRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i28.TicketsAndVouchersPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i29.FavoritesPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventRoomRoute.name: (routeData) {
      final args = routeData.argsAs<EventRoomRouteArgs>(
          orElse: () => const EventRoomRouteArgs());
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i30.EventRoomPage(
          event: args.event,
          eventId: args.eventId,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EventParticipantsRoute.name: (routeData) {
      final args = routeData.argsAs<EventParticipantsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i31.EventParticipantsPage(
          eventId: args.eventId,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserWallPhotoPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<UserWallPhotoPreviewRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i32.UserWallPhotoPreviewPage(
          photo: args.photo,
          heroTag: args.heroTag,
          key: args.key,
        ),
        transitionsBuilder: _i59.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VerifyPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyPhoneNumberRouteArgs>(
          orElse: () => const VerifyPhoneNumberRouteArgs());
      return _i55.CustomPage<bool>(
        routeData: routeData,
        child: _i33.VerifyPhoneNumberPage(
          isUserAnonymous: args.isUserAnonymous,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInWithPhoneNumberRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i34.SignInWithPhoneNumberPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WallPhotoFiltersRoute.name: (routeData) {
      final args = routeData.argsAs<WallPhotoFiltersRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i35.WallPhotoFiltersPage(
          blocContext: args.blocContext,
          selectedFilters: args.selectedFilters,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ActivateTimeTaskRewardRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateTimeTaskRewardRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i36.ActivateTimeTaskRewardPage(
          timeTaskId: args.timeTaskId,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RedeemTonightVoucherRoute.name: (routeData) {
      final args = routeData.argsAs<RedeemTonightVoucherRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i37.RedeemTonightVoucherPage(
          voucher: args.voucher,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserCityPickerRoute.name: (routeData) {
      final args = routeData.argsAs<UserCityPickerRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i38.UserCityPickerPage(
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ActivateTicketRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateTicketRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i39.ActivateTicketPage(
          ticket: args.ticket,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpdateCustomerEmailRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateCustomerEmailRouteArgs>();
      return _i55.CustomPage<_i60.CustomerData>(
        routeData: routeData,
        child: _i40.UpdateCustomerEmailPage(
          customerData: args.customerData,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarketplaceDiscountsRoute.name: (routeData) {
      final args = routeData.argsAs<MarketplaceDiscountsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i41.MarketplaceDiscountsPage(
          availableRaverCoins: args.availableRaverCoins,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarketplaceDiscountDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MarketplaceDiscountDetailsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i42.MarketplaceDiscountDetailsPage(
          discount: args.discount,
          blocContext: args.blocContext,
          availableRaverCoins: args.availableRaverCoins,
          isNavigatedFromDashboard: args.isNavigatedFromDashboard,
          heroTag: args.heroTag,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserMarketplaceDiscountDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<UserMarketplaceDiscountDetailsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i43.UserMarketplaceDiscountDetailsPage(
          discount: args.discount,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarketplaceProductRoute.name: (routeData) {
      final args = routeData.argsAs<MarketplaceProductRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i44.MarketplaceProductPage(
          url: args.url,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChallengeStoriesRoute.name: (routeData) {
      final args = routeData.argsAs<ChallengeStoriesRouteArgs>();
      return _i55.CustomPage<List<_i63.UserStoriesWithInteractions>>(
        routeData: routeData,
        child: _i45.ChallengeStoriesPage(
          userStories: args.userStories,
          initialStoryIndex: args.initialStoryIndex,
          isCurrentUser: args.isCurrentUser,
          currentUser: args.currentUser,
          key: args.key,
        ),
        transitionsBuilder: _i57.zoomInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddChallengeStoryRoute.name: (routeData) {
      final args = routeData.argsAs<AddChallengeStoryRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i46.AddChallengeStoryPage(
          challenge: args.challenge,
          cameras: args.cameras,
          key: args.key,
        ),
        transitionsBuilder: _i61.slideUpTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PhotoPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoPreviewRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i47.PhotoPreviewPage(
          photo: args.photo,
          challenge: args.challenge,
          isSelfie: args.isSelfie,
          key: args.key,
        ),
        transitionsBuilder: _i59.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VideoPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPreviewRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i48.VideoPreviewPage(
          video: args.video,
          challenge: args.challenge,
          isSelfie: args.isSelfie,
          key: args.key,
        ),
        transitionsBuilder: _i59.fadeInTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StoryCommentsRoute.name: (routeData) {
      final args = routeData.argsAs<StoryCommentsRouteArgs>();
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: _i49.StoryCommentsPage(
          storyId: args.storyId,
          currentUser: args.currentUser,
          blocContext: args.blocContext,
          key: args.key,
        ),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i50.DashboardPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i51.DiscoverPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChallengesRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i52.ChallengesPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MessagesRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i53.MessagesPage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i55.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i54.ProfilePage(),
        transitionsBuilder: _i58.slideLeftTransition,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i55.RouteConfig> get routes => [
        _i55.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i55.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i55.RouteConfig(
          DailySpinRoute.name,
          path: '/daily-spin-page',
        ),
        _i55.RouteConfig(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          children: [
            _i55.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i55.RouteConfig(
              DiscoverRoute.name,
              path: 'discover-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i55.RouteConfig(
              ChallengesRoute.name,
              path: 'challenges-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i55.RouteConfig(
              MessagesRoute.name,
              path: 'messages-page',
              parent: WelcomeLoaderRoute.name,
            ),
            _i55.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: WelcomeLoaderRoute.name,
            ),
          ],
        ),
        _i55.RouteConfig(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        ),
        _i55.RouteConfig(
          EventFiltersRoute.name,
          path: '/event-filters-page',
        ),
        _i55.RouteConfig(
          EventDetailsRoute.name,
          path: '/event-details-page',
        ),
        _i55.RouteConfig(
          UserDetailsRoute.name,
          path: '/user-details-page',
        ),
        _i55.RouteConfig(
          ClubDetailsRoute.name,
          path: '/club-details-page',
        ),
        _i55.RouteConfig(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
        ),
        _i55.RouteConfig(
          EventCityPickerRoute.name,
          path: '/event-city-picker-page',
        ),
        _i55.RouteConfig(
          ClubCityPickerRoute.name,
          path: '/club-city-picker-page',
        ),
        _i55.RouteConfig(
          TicketCheckoutRoute.name,
          path: '/ticket-checkout-page',
        ),
        _i55.RouteConfig(
          TicketPaymentConfirmRoute.name,
          path: '/ticket-payment-confirm-page',
        ),
        _i55.RouteConfig(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        ),
        _i55.RouteConfig(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
        ),
        _i55.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        _i55.RouteConfig(
          InvoiceDataRoute.name,
          path: '/invoice-data-page',
        ),
        _i55.RouteConfig(
          UpdateUsernameRoute.name,
          path: '/update-username-page',
        ),
        _i55.RouteConfig(
          UpdateProfilePictureRoute.name,
          path: '/update-profile-picture-page',
        ),
        _i55.RouteConfig(
          ReviewRoute.name,
          path: '/review-page',
        ),
        _i55.RouteConfig(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        ),
        _i55.RouteConfig(
          ContactRoute.name,
          path: '/contact-page',
        ),
        _i55.RouteConfig(
          PaymentMethodRoute.name,
          path: '/payment-method-page',
        ),
        _i55.RouteConfig(
          WallPhotoCameraPreviewRoute.name,
          path: '/wall-photo-camera-preview-page',
        ),
        _i55.RouteConfig(
          AddWallPhotoRoute.name,
          path: '/add-wall-photo-page',
        ),
        _i55.RouteConfig(
          SelectClubRoute.name,
          path: '/select-club-page',
        ),
        _i55.RouteConfig(
          TicketsAndVouchersRoute.name,
          path: '/tickets-and-vouchers-page',
        ),
        _i55.RouteConfig(
          FavoritesRoute.name,
          path: '/favorites-page',
        ),
        _i55.RouteConfig(
          EventRoomRoute.name,
          path: '/event-room-page',
        ),
        _i55.RouteConfig(
          EventParticipantsRoute.name,
          path: '/event-participants-page',
        ),
        _i55.RouteConfig(
          UserWallPhotoPreviewRoute.name,
          path: '/user-wall-photo-preview-page',
        ),
        _i55.RouteConfig(
          VerifyPhoneNumberRoute.name,
          path: '/verify-phone-number-page',
        ),
        _i55.RouteConfig(
          SignInWithPhoneNumberRoute.name,
          path: '/sign-in-with-phone-number-page',
        ),
        _i55.RouteConfig(
          WallPhotoFiltersRoute.name,
          path: '/wall-photo-filters-page',
        ),
        _i55.RouteConfig(
          ActivateTimeTaskRewardRoute.name,
          path: '/activate-time-task-reward-page',
        ),
        _i55.RouteConfig(
          RedeemTonightVoucherRoute.name,
          path: '/redeem-tonight-voucher-page',
        ),
        _i55.RouteConfig(
          UserCityPickerRoute.name,
          path: '/user-city-picker-page',
        ),
        _i55.RouteConfig(
          ActivateTicketRoute.name,
          path: '/activate-ticket-page',
        ),
        _i55.RouteConfig(
          UpdateCustomerEmailRoute.name,
          path: '/update-customer-email-page',
        ),
        _i55.RouteConfig(
          MarketplaceDiscountsRoute.name,
          path: '/marketplace-discounts-page',
        ),
        _i55.RouteConfig(
          MarketplaceDiscountDetailsRoute.name,
          path: '/marketplace-discount-details-page',
        ),
        _i55.RouteConfig(
          UserMarketplaceDiscountDetailsRoute.name,
          path: '/user-marketplace-discount-details-page',
        ),
        _i55.RouteConfig(
          MarketplaceProductRoute.name,
          path: '/marketplace-product-page',
        ),
        _i55.RouteConfig(
          ChallengeStoriesRoute.name,
          path: '/challenge-stories-page',
        ),
        _i55.RouteConfig(
          AddChallengeStoryRoute.name,
          path: '/add-challenge-story-page',
        ),
        _i55.RouteConfig(
          PhotoPreviewRoute.name,
          path: '/photo-preview-page',
        ),
        _i55.RouteConfig(
          VideoPreviewRoute.name,
          path: '/video-preview-page',
        ),
        _i55.RouteConfig(
          StoryCommentsRoute.name,
          path: '/story-comments-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i55.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i55.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.DailySpinPage]
class DailySpinRoute extends _i55.PageRouteInfo<void> {
  const DailySpinRoute()
      : super(
          DailySpinRoute.name,
          path: '/daily-spin-page',
        );

  static const String name = 'DailySpinRoute';
}

/// generated route for
/// [_i4.WelcomeLoaderPage]
class WelcomeLoaderRoute extends _i55.PageRouteInfo<void> {
  const WelcomeLoaderRoute({List<_i55.PageRouteInfo>? children})
      : super(
          WelcomeLoaderRoute.name,
          path: '/welcome-loader-page',
          initialChildren: children,
        );

  static const String name = 'WelcomeLoaderRoute';
}

/// generated route for
/// [_i5.NetworkLostPage]
class NetworkLostRoute extends _i55.PageRouteInfo<void> {
  const NetworkLostRoute()
      : super(
          NetworkLostRoute.name,
          path: '/network-lost-page',
        );

  static const String name = 'NetworkLostRoute';
}

/// generated route for
/// [_i6.EventFiltersPage]
class EventFiltersRoute extends _i55.PageRouteInfo<EventFiltersRouteArgs> {
  EventFiltersRoute({
    required _i56.BuildContext blocContext,
    required _i64.EventFilters selectedFilters,
    required _i65.EventFiltersPageType eventFiltersPageType,
    _i56.Key? key,
  }) : super(
          EventFiltersRoute.name,
          path: '/event-filters-page',
          args: EventFiltersRouteArgs(
            blocContext: blocContext,
            selectedFilters: selectedFilters,
            eventFiltersPageType: eventFiltersPageType,
            key: key,
          ),
        );

  static const String name = 'EventFiltersRoute';
}

class EventFiltersRouteArgs {
  const EventFiltersRouteArgs({
    required this.blocContext,
    required this.selectedFilters,
    required this.eventFiltersPageType,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i64.EventFilters selectedFilters;

  final _i65.EventFiltersPageType eventFiltersPageType;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventFiltersRouteArgs{blocContext: $blocContext, selectedFilters: $selectedFilters, eventFiltersPageType: $eventFiltersPageType, key: $key}';
  }
}

/// generated route for
/// [_i7.EventDetailsPage]
class EventDetailsRoute extends _i55.PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    String? eventId,
    _i66.Event? event,
    String? heroTag,
    _i67.EventVoucher? voucher,
    int? ticketPrice,
    _i56.Key? key,
  }) : super(
          EventDetailsRoute.name,
          path: '/event-details-page',
          args: EventDetailsRouteArgs(
            eventId: eventId,
            event: event,
            heroTag: heroTag,
            voucher: voucher,
            ticketPrice: ticketPrice,
            key: key,
          ),
        );

  static const String name = 'EventDetailsRoute';
}

class EventDetailsRouteArgs {
  const EventDetailsRouteArgs({
    this.eventId,
    this.event,
    this.heroTag,
    this.voucher,
    this.ticketPrice,
    this.key,
  });

  final String? eventId;

  final _i66.Event? event;

  final String? heroTag;

  final _i67.EventVoucher? voucher;

  final int? ticketPrice;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{eventId: $eventId, event: $event, heroTag: $heroTag, voucher: $voucher, ticketPrice: $ticketPrice, key: $key}';
  }
}

/// generated route for
/// [_i8.UserDetailsPage]
class UserDetailsRoute extends _i55.PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    required String userId,
    _i56.Key? key,
  }) : super(
          UserDetailsRoute.name,
          path: '/user-details-page',
          args: UserDetailsRouteArgs(
            userId: userId,
            key: key,
          ),
        );

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    required this.userId,
    this.key,
  });

  final String userId;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{userId: $userId, key: $key}';
  }
}

/// generated route for
/// [_i9.ClubDetailsPage]
class ClubDetailsRoute extends _i55.PageRouteInfo<ClubDetailsRouteArgs> {
  ClubDetailsRoute({
    _i56.Key? key,
    String? clubId,
    _i68.Club? club,
    String? heroTag,
  }) : super(
          ClubDetailsRoute.name,
          path: '/club-details-page',
          args: ClubDetailsRouteArgs(
            key: key,
            clubId: clubId,
            club: club,
            heroTag: heroTag,
          ),
        );

  static const String name = 'ClubDetailsRoute';
}

class ClubDetailsRouteArgs {
  const ClubDetailsRouteArgs({
    this.key,
    this.clubId,
    this.club,
    this.heroTag,
  });

  final _i56.Key? key;

  final String? clubId;

  final _i68.Club? club;

  final String? heroTag;

  @override
  String toString() {
    return 'ClubDetailsRouteArgs{key: $key, clubId: $clubId, club: $club, heroTag: $heroTag}';
  }
}

/// generated route for
/// [_i10.EventDatePickerPage]
class EventDatePickerRoute
    extends _i55.PageRouteInfo<EventDatePickerRouteArgs> {
  EventDatePickerRoute({
    required _i56.BuildContext blocContext,
    required _i64.DateRangeFilter selectedDate,
    _i56.Key? key,
  }) : super(
          EventDatePickerRoute.name,
          path: '/event-date-picker-page',
          args: EventDatePickerRouteArgs(
            blocContext: blocContext,
            selectedDate: selectedDate,
            key: key,
          ),
        );

  static const String name = 'EventDatePickerRoute';
}

class EventDatePickerRouteArgs {
  const EventDatePickerRouteArgs({
    required this.blocContext,
    required this.selectedDate,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i64.DateRangeFilter selectedDate;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventDatePickerRouteArgs{blocContext: $blocContext, selectedDate: $selectedDate, key: $key}';
  }
}

/// generated route for
/// [_i11.EventCityPickerPage]
class EventCityPickerRoute
    extends _i55.PageRouteInfo<EventCityPickerRouteArgs> {
  EventCityPickerRoute({
    required _i56.BuildContext blocContext,
    required _i64.CityFilter selectedCity,
    _i56.Key? key,
  }) : super(
          EventCityPickerRoute.name,
          path: '/event-city-picker-page',
          args: EventCityPickerRouteArgs(
            blocContext: blocContext,
            selectedCity: selectedCity,
            key: key,
          ),
        );

  static const String name = 'EventCityPickerRoute';
}

class EventCityPickerRouteArgs {
  const EventCityPickerRouteArgs({
    required this.blocContext,
    required this.selectedCity,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i64.CityFilter selectedCity;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventCityPickerRouteArgs{blocContext: $blocContext, selectedCity: $selectedCity, key: $key}';
  }
}

/// generated route for
/// [_i12.ClubCityPickerPage]
class ClubCityPickerRoute extends _i55.PageRouteInfo<ClubCityPickerRouteArgs> {
  ClubCityPickerRoute({
    required _i56.BuildContext blocContext,
    required _i69.CityFilter selectedCity,
    _i56.Key? key,
  }) : super(
          ClubCityPickerRoute.name,
          path: '/club-city-picker-page',
          args: ClubCityPickerRouteArgs(
            blocContext: blocContext,
            selectedCity: selectedCity,
            key: key,
          ),
        );

  static const String name = 'ClubCityPickerRoute';
}

class ClubCityPickerRouteArgs {
  const ClubCityPickerRouteArgs({
    required this.blocContext,
    required this.selectedCity,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i69.CityFilter selectedCity;

  final _i56.Key? key;

  @override
  String toString() {
    return 'ClubCityPickerRouteArgs{blocContext: $blocContext, selectedCity: $selectedCity, key: $key}';
  }
}

/// generated route for
/// [_i13.TicketCheckoutPage]
class TicketCheckoutRoute extends _i55.PageRouteInfo<TicketCheckoutRouteArgs> {
  TicketCheckoutRoute({
    required _i66.Event event,
    _i56.Key? key,
  }) : super(
          TicketCheckoutRoute.name,
          path: '/ticket-checkout-page',
          args: TicketCheckoutRouteArgs(
            event: event,
            key: key,
          ),
        );

  static const String name = 'TicketCheckoutRoute';
}

class TicketCheckoutRouteArgs {
  const TicketCheckoutRouteArgs({
    required this.event,
    this.key,
  });

  final _i66.Event event;

  final _i56.Key? key;

  @override
  String toString() {
    return 'TicketCheckoutRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i14.TicketPaymentConfirmPage]
class TicketPaymentConfirmRoute
    extends _i55.PageRouteInfo<TicketPaymentConfirmRouteArgs> {
  TicketPaymentConfirmRoute({
    required _i70.Ticket ticket,
    _i56.Key? key,
  }) : super(
          TicketPaymentConfirmRoute.name,
          path: '/ticket-payment-confirm-page',
          args: TicketPaymentConfirmRouteArgs(
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'TicketPaymentConfirmRoute';
}

class TicketPaymentConfirmRouteArgs {
  const TicketPaymentConfirmRouteArgs({
    required this.ticket,
    this.key,
  });

  final _i70.Ticket ticket;

  final _i56.Key? key;

  @override
  String toString() {
    return 'TicketPaymentConfirmRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i15.TicketScanConfirmPage]
class TicketScanConfirmRoute extends _i55.PageRouteInfo<void> {
  const TicketScanConfirmRoute()
      : super(
          TicketScanConfirmRoute.name,
          path: '/ticket-scan-confirm-page',
        );

  static const String name = 'TicketScanConfirmRoute';
}

/// generated route for
/// [_i16.OnboardingUserDetailsPage]
class OnboardingUserDetailsRoute
    extends _i55.PageRouteInfo<OnboardingUserDetailsRouteArgs> {
  OnboardingUserDetailsRoute({
    required _i71.AppUser user,
    _i56.Key? key,
  }) : super(
          OnboardingUserDetailsRoute.name,
          path: '/onboarding-user-details-page',
          args: OnboardingUserDetailsRouteArgs(
            user: user,
            key: key,
          ),
        );

  static const String name = 'OnboardingUserDetailsRoute';
}

class OnboardingUserDetailsRouteArgs {
  const OnboardingUserDetailsRouteArgs({
    required this.user,
    this.key,
  });

  final _i71.AppUser user;

  final _i56.Key? key;

  @override
  String toString() {
    return 'OnboardingUserDetailsRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i17.OnboardingPage]
class OnboardingRoute extends _i55.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i18.InvoiceDataPage]
class InvoiceDataRoute extends _i55.PageRouteInfo<InvoiceDataRouteArgs> {
  InvoiceDataRoute({
    required _i60.CustomerData customerData,
    _i56.Key? key,
  }) : super(
          InvoiceDataRoute.name,
          path: '/invoice-data-page',
          args: InvoiceDataRouteArgs(
            customerData: customerData,
            key: key,
          ),
        );

  static const String name = 'InvoiceDataRoute';
}

class InvoiceDataRouteArgs {
  const InvoiceDataRouteArgs({
    required this.customerData,
    this.key,
  });

  final _i60.CustomerData customerData;

  final _i56.Key? key;

  @override
  String toString() {
    return 'InvoiceDataRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i19.UpdateUsernamePage]
class UpdateUsernameRoute extends _i55.PageRouteInfo<UpdateUsernameRouteArgs> {
  UpdateUsernameRoute({
    required String currentUsername,
    _i56.Key? key,
  }) : super(
          UpdateUsernameRoute.name,
          path: '/update-username-page',
          args: UpdateUsernameRouteArgs(
            currentUsername: currentUsername,
            key: key,
          ),
        );

  static const String name = 'UpdateUsernameRoute';
}

class UpdateUsernameRouteArgs {
  const UpdateUsernameRouteArgs({
    required this.currentUsername,
    this.key,
  });

  final String currentUsername;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UpdateUsernameRouteArgs{currentUsername: $currentUsername, key: $key}';
  }
}

/// generated route for
/// [_i20.UpdateProfilePicturePage]
class UpdateProfilePictureRoute
    extends _i55.PageRouteInfo<UpdateProfilePictureRouteArgs> {
  UpdateProfilePictureRoute({
    required String currentProfilePictureUrl,
    required String username,
    _i56.Key? key,
  }) : super(
          UpdateProfilePictureRoute.name,
          path: '/update-profile-picture-page',
          args: UpdateProfilePictureRouteArgs(
            currentProfilePictureUrl: currentProfilePictureUrl,
            username: username,
            key: key,
          ),
        );

  static const String name = 'UpdateProfilePictureRoute';
}

class UpdateProfilePictureRouteArgs {
  const UpdateProfilePictureRouteArgs({
    required this.currentProfilePictureUrl,
    required this.username,
    this.key,
  });

  final String currentProfilePictureUrl;

  final String username;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UpdateProfilePictureRouteArgs{currentProfilePictureUrl: $currentProfilePictureUrl, username: $username, key: $key}';
  }
}

/// generated route for
/// [_i21.ReviewPage]
class ReviewRoute extends _i55.PageRouteInfo<ReviewRouteArgs> {
  ReviewRoute({
    required String eventId,
    _i56.Key? key,
  }) : super(
          ReviewRoute.name,
          path: '/review-page',
          args: ReviewRouteArgs(
            eventId: eventId,
            key: key,
          ),
        );

  static const String name = 'ReviewRoute';
}

class ReviewRouteArgs {
  const ReviewRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i56.Key? key;

  @override
  String toString() {
    return 'ReviewRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i22.AppSettingsPage]
class AppSettingsRoute extends _i55.PageRouteInfo<void> {
  const AppSettingsRoute()
      : super(
          AppSettingsRoute.name,
          path: '/app-settings-page',
        );

  static const String name = 'AppSettingsRoute';
}

/// generated route for
/// [_i23.ContactPage]
class ContactRoute extends _i55.PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: '/contact-page',
        );

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i24.PaymentMethodPage]
class PaymentMethodRoute extends _i55.PageRouteInfo<PaymentMethodRouteArgs> {
  PaymentMethodRoute({
    required _i60.CustomerData customerData,
    _i56.Key? key,
  }) : super(
          PaymentMethodRoute.name,
          path: '/payment-method-page',
          args: PaymentMethodRouteArgs(
            customerData: customerData,
            key: key,
          ),
        );

  static const String name = 'PaymentMethodRoute';
}

class PaymentMethodRouteArgs {
  const PaymentMethodRouteArgs({
    required this.customerData,
    this.key,
  });

  final _i60.CustomerData customerData;

  final _i56.Key? key;

  @override
  String toString() {
    return 'PaymentMethodRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i25.WallPhotoCameraPreviewPage]
class WallPhotoCameraPreviewRoute
    extends _i55.PageRouteInfo<WallPhotoCameraPreviewRouteArgs> {
  WallPhotoCameraPreviewRoute({
    required _i72.Option<_i66.Event> event,
    required _i72.Option<_i73.TimeTask> timeTask,
    _i56.Key? key,
  }) : super(
          WallPhotoCameraPreviewRoute.name,
          path: '/wall-photo-camera-preview-page',
          args: WallPhotoCameraPreviewRouteArgs(
            event: event,
            timeTask: timeTask,
            key: key,
          ),
        );

  static const String name = 'WallPhotoCameraPreviewRoute';
}

class WallPhotoCameraPreviewRouteArgs {
  const WallPhotoCameraPreviewRouteArgs({
    required this.event,
    required this.timeTask,
    this.key,
  });

  final _i72.Option<_i66.Event> event;

  final _i72.Option<_i73.TimeTask> timeTask;

  final _i56.Key? key;

  @override
  String toString() {
    return 'WallPhotoCameraPreviewRouteArgs{event: $event, timeTask: $timeTask, key: $key}';
  }
}

/// generated route for
/// [_i26.AddWallPhotoPage]
class AddWallPhotoRoute extends _i55.PageRouteInfo<AddWallPhotoRouteArgs> {
  AddWallPhotoRoute({
    required String photoPath,
    required String heroTag,
    required bool isSelfie,
    required _i72.Option<_i66.Event> event,
    required _i72.Option<_i73.TimeTask> timeTask,
    _i56.Key? key,
  }) : super(
          AddWallPhotoRoute.name,
          path: '/add-wall-photo-page',
          args: AddWallPhotoRouteArgs(
            photoPath: photoPath,
            heroTag: heroTag,
            isSelfie: isSelfie,
            event: event,
            timeTask: timeTask,
            key: key,
          ),
        );

  static const String name = 'AddWallPhotoRoute';
}

class AddWallPhotoRouteArgs {
  const AddWallPhotoRouteArgs({
    required this.photoPath,
    required this.heroTag,
    required this.isSelfie,
    required this.event,
    required this.timeTask,
    this.key,
  });

  final String photoPath;

  final String heroTag;

  final bool isSelfie;

  final _i72.Option<_i66.Event> event;

  final _i72.Option<_i73.TimeTask> timeTask;

  final _i56.Key? key;

  @override
  String toString() {
    return 'AddWallPhotoRouteArgs{photoPath: $photoPath, heroTag: $heroTag, isSelfie: $isSelfie, event: $event, timeTask: $timeTask, key: $key}';
  }
}

/// generated route for
/// [_i27.SelectClubPage]
class SelectClubRoute extends _i55.PageRouteInfo<void> {
  const SelectClubRoute()
      : super(
          SelectClubRoute.name,
          path: '/select-club-page',
        );

  static const String name = 'SelectClubRoute';
}

/// generated route for
/// [_i28.TicketsAndVouchersPage]
class TicketsAndVouchersRoute extends _i55.PageRouteInfo<void> {
  const TicketsAndVouchersRoute()
      : super(
          TicketsAndVouchersRoute.name,
          path: '/tickets-and-vouchers-page',
        );

  static const String name = 'TicketsAndVouchersRoute';
}

/// generated route for
/// [_i29.FavoritesPage]
class FavoritesRoute extends _i55.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: '/favorites-page',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i30.EventRoomPage]
class EventRoomRoute extends _i55.PageRouteInfo<EventRoomRouteArgs> {
  EventRoomRoute({
    _i66.Event? event,
    String? eventId,
    _i56.Key? key,
  }) : super(
          EventRoomRoute.name,
          path: '/event-room-page',
          args: EventRoomRouteArgs(
            event: event,
            eventId: eventId,
            key: key,
          ),
        );

  static const String name = 'EventRoomRoute';
}

class EventRoomRouteArgs {
  const EventRoomRouteArgs({
    this.event,
    this.eventId,
    this.key,
  });

  final _i66.Event? event;

  final String? eventId;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventRoomRouteArgs{event: $event, eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i31.EventParticipantsPage]
class EventParticipantsRoute
    extends _i55.PageRouteInfo<EventParticipantsRouteArgs> {
  EventParticipantsRoute({
    required String eventId,
    _i56.Key? key,
  }) : super(
          EventParticipantsRoute.name,
          path: '/event-participants-page',
          args: EventParticipantsRouteArgs(
            eventId: eventId,
            key: key,
          ),
        );

  static const String name = 'EventParticipantsRoute';
}

class EventParticipantsRouteArgs {
  const EventParticipantsRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i56.Key? key;

  @override
  String toString() {
    return 'EventParticipantsRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i32.UserWallPhotoPreviewPage]
class UserWallPhotoPreviewRoute
    extends _i55.PageRouteInfo<UserWallPhotoPreviewRouteArgs> {
  UserWallPhotoPreviewRoute({
    required _i74.WallPhoto photo,
    String? heroTag,
    _i56.Key? key,
  }) : super(
          UserWallPhotoPreviewRoute.name,
          path: '/user-wall-photo-preview-page',
          args: UserWallPhotoPreviewRouteArgs(
            photo: photo,
            heroTag: heroTag,
            key: key,
          ),
        );

  static const String name = 'UserWallPhotoPreviewRoute';
}

class UserWallPhotoPreviewRouteArgs {
  const UserWallPhotoPreviewRouteArgs({
    required this.photo,
    this.heroTag,
    this.key,
  });

  final _i74.WallPhoto photo;

  final String? heroTag;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UserWallPhotoPreviewRouteArgs{photo: $photo, heroTag: $heroTag, key: $key}';
  }
}

/// generated route for
/// [_i33.VerifyPhoneNumberPage]
class VerifyPhoneNumberRoute
    extends _i55.PageRouteInfo<VerifyPhoneNumberRouteArgs> {
  VerifyPhoneNumberRoute({
    bool isUserAnonymous = false,
    _i56.Key? key,
  }) : super(
          VerifyPhoneNumberRoute.name,
          path: '/verify-phone-number-page',
          args: VerifyPhoneNumberRouteArgs(
            isUserAnonymous: isUserAnonymous,
            key: key,
          ),
        );

  static const String name = 'VerifyPhoneNumberRoute';
}

class VerifyPhoneNumberRouteArgs {
  const VerifyPhoneNumberRouteArgs({
    this.isUserAnonymous = false,
    this.key,
  });

  final bool isUserAnonymous;

  final _i56.Key? key;

  @override
  String toString() {
    return 'VerifyPhoneNumberRouteArgs{isUserAnonymous: $isUserAnonymous, key: $key}';
  }
}

/// generated route for
/// [_i34.SignInWithPhoneNumberPage]
class SignInWithPhoneNumberRoute extends _i55.PageRouteInfo<void> {
  const SignInWithPhoneNumberRoute()
      : super(
          SignInWithPhoneNumberRoute.name,
          path: '/sign-in-with-phone-number-page',
        );

  static const String name = 'SignInWithPhoneNumberRoute';
}

/// generated route for
/// [_i35.WallPhotoFiltersPage]
class WallPhotoFiltersRoute
    extends _i55.PageRouteInfo<WallPhotoFiltersRouteArgs> {
  WallPhotoFiltersRoute({
    required _i56.BuildContext blocContext,
    required _i75.WallPhotoFilters selectedFilters,
    _i56.Key? key,
  }) : super(
          WallPhotoFiltersRoute.name,
          path: '/wall-photo-filters-page',
          args: WallPhotoFiltersRouteArgs(
            blocContext: blocContext,
            selectedFilters: selectedFilters,
            key: key,
          ),
        );

  static const String name = 'WallPhotoFiltersRoute';
}

class WallPhotoFiltersRouteArgs {
  const WallPhotoFiltersRouteArgs({
    required this.blocContext,
    required this.selectedFilters,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i75.WallPhotoFilters selectedFilters;

  final _i56.Key? key;

  @override
  String toString() {
    return 'WallPhotoFiltersRouteArgs{blocContext: $blocContext, selectedFilters: $selectedFilters, key: $key}';
  }
}

/// generated route for
/// [_i36.ActivateTimeTaskRewardPage]
class ActivateTimeTaskRewardRoute
    extends _i55.PageRouteInfo<ActivateTimeTaskRewardRouteArgs> {
  ActivateTimeTaskRewardRoute({
    required String timeTaskId,
    _i56.Key? key,
  }) : super(
          ActivateTimeTaskRewardRoute.name,
          path: '/activate-time-task-reward-page',
          args: ActivateTimeTaskRewardRouteArgs(
            timeTaskId: timeTaskId,
            key: key,
          ),
        );

  static const String name = 'ActivateTimeTaskRewardRoute';
}

class ActivateTimeTaskRewardRouteArgs {
  const ActivateTimeTaskRewardRouteArgs({
    required this.timeTaskId,
    this.key,
  });

  final String timeTaskId;

  final _i56.Key? key;

  @override
  String toString() {
    return 'ActivateTimeTaskRewardRouteArgs{timeTaskId: $timeTaskId, key: $key}';
  }
}

/// generated route for
/// [_i37.RedeemTonightVoucherPage]
class RedeemTonightVoucherRoute
    extends _i55.PageRouteInfo<RedeemTonightVoucherRouteArgs> {
  RedeemTonightVoucherRoute({
    required _i76.UserTonightVoucher voucher,
    _i56.Key? key,
  }) : super(
          RedeemTonightVoucherRoute.name,
          path: '/redeem-tonight-voucher-page',
          args: RedeemTonightVoucherRouteArgs(
            voucher: voucher,
            key: key,
          ),
        );

  static const String name = 'RedeemTonightVoucherRoute';
}

class RedeemTonightVoucherRouteArgs {
  const RedeemTonightVoucherRouteArgs({
    required this.voucher,
    this.key,
  });

  final _i76.UserTonightVoucher voucher;

  final _i56.Key? key;

  @override
  String toString() {
    return 'RedeemTonightVoucherRouteArgs{voucher: $voucher, key: $key}';
  }
}

/// generated route for
/// [_i38.UserCityPickerPage]
class UserCityPickerRoute extends _i55.PageRouteInfo<UserCityPickerRouteArgs> {
  UserCityPickerRoute({
    required _i56.BuildContext blocContext,
    _i56.Key? key,
  }) : super(
          UserCityPickerRoute.name,
          path: '/user-city-picker-page',
          args: UserCityPickerRouteArgs(
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'UserCityPickerRoute';
}

class UserCityPickerRouteArgs {
  const UserCityPickerRouteArgs({
    required this.blocContext,
    this.key,
  });

  final _i56.BuildContext blocContext;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UserCityPickerRouteArgs{blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [_i39.ActivateTicketPage]
class ActivateTicketRoute extends _i55.PageRouteInfo<ActivateTicketRouteArgs> {
  ActivateTicketRoute({
    required _i70.Ticket ticket,
    _i56.Key? key,
  }) : super(
          ActivateTicketRoute.name,
          path: '/activate-ticket-page',
          args: ActivateTicketRouteArgs(
            ticket: ticket,
            key: key,
          ),
        );

  static const String name = 'ActivateTicketRoute';
}

class ActivateTicketRouteArgs {
  const ActivateTicketRouteArgs({
    required this.ticket,
    this.key,
  });

  final _i70.Ticket ticket;

  final _i56.Key? key;

  @override
  String toString() {
    return 'ActivateTicketRouteArgs{ticket: $ticket, key: $key}';
  }
}

/// generated route for
/// [_i40.UpdateCustomerEmailPage]
class UpdateCustomerEmailRoute
    extends _i55.PageRouteInfo<UpdateCustomerEmailRouteArgs> {
  UpdateCustomerEmailRoute({
    required _i60.CustomerData customerData,
    _i56.Key? key,
  }) : super(
          UpdateCustomerEmailRoute.name,
          path: '/update-customer-email-page',
          args: UpdateCustomerEmailRouteArgs(
            customerData: customerData,
            key: key,
          ),
        );

  static const String name = 'UpdateCustomerEmailRoute';
}

class UpdateCustomerEmailRouteArgs {
  const UpdateCustomerEmailRouteArgs({
    required this.customerData,
    this.key,
  });

  final _i60.CustomerData customerData;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UpdateCustomerEmailRouteArgs{customerData: $customerData, key: $key}';
  }
}

/// generated route for
/// [_i41.MarketplaceDiscountsPage]
class MarketplaceDiscountsRoute
    extends _i55.PageRouteInfo<MarketplaceDiscountsRouteArgs> {
  MarketplaceDiscountsRoute({
    required int availableRaverCoins,
    _i56.Key? key,
  }) : super(
          MarketplaceDiscountsRoute.name,
          path: '/marketplace-discounts-page',
          args: MarketplaceDiscountsRouteArgs(
            availableRaverCoins: availableRaverCoins,
            key: key,
          ),
        );

  static const String name = 'MarketplaceDiscountsRoute';
}

class MarketplaceDiscountsRouteArgs {
  const MarketplaceDiscountsRouteArgs({
    required this.availableRaverCoins,
    this.key,
  });

  final int availableRaverCoins;

  final _i56.Key? key;

  @override
  String toString() {
    return 'MarketplaceDiscountsRouteArgs{availableRaverCoins: $availableRaverCoins, key: $key}';
  }
}

/// generated route for
/// [_i42.MarketplaceDiscountDetailsPage]
class MarketplaceDiscountDetailsRoute
    extends _i55.PageRouteInfo<MarketplaceDiscountDetailsRouteArgs> {
  MarketplaceDiscountDetailsRoute({
    required _i77.MarketplaceDiscount discount,
    required _i56.BuildContext blocContext,
    required int availableRaverCoins,
    bool isNavigatedFromDashboard = false,
    String? heroTag,
    _i56.Key? key,
  }) : super(
          MarketplaceDiscountDetailsRoute.name,
          path: '/marketplace-discount-details-page',
          args: MarketplaceDiscountDetailsRouteArgs(
            discount: discount,
            blocContext: blocContext,
            availableRaverCoins: availableRaverCoins,
            isNavigatedFromDashboard: isNavigatedFromDashboard,
            heroTag: heroTag,
            key: key,
          ),
        );

  static const String name = 'MarketplaceDiscountDetailsRoute';
}

class MarketplaceDiscountDetailsRouteArgs {
  const MarketplaceDiscountDetailsRouteArgs({
    required this.discount,
    required this.blocContext,
    required this.availableRaverCoins,
    this.isNavigatedFromDashboard = false,
    this.heroTag,
    this.key,
  });

  final _i77.MarketplaceDiscount discount;

  final _i56.BuildContext blocContext;

  final int availableRaverCoins;

  final bool isNavigatedFromDashboard;

  final String? heroTag;

  final _i56.Key? key;

  @override
  String toString() {
    return 'MarketplaceDiscountDetailsRouteArgs{discount: $discount, blocContext: $blocContext, availableRaverCoins: $availableRaverCoins, isNavigatedFromDashboard: $isNavigatedFromDashboard, heroTag: $heroTag, key: $key}';
  }
}

/// generated route for
/// [_i43.UserMarketplaceDiscountDetailsPage]
class UserMarketplaceDiscountDetailsRoute
    extends _i55.PageRouteInfo<UserMarketplaceDiscountDetailsRouteArgs> {
  UserMarketplaceDiscountDetailsRoute({
    required _i78.UserMarketplaceDiscount discount,
    _i56.Key? key,
  }) : super(
          UserMarketplaceDiscountDetailsRoute.name,
          path: '/user-marketplace-discount-details-page',
          args: UserMarketplaceDiscountDetailsRouteArgs(
            discount: discount,
            key: key,
          ),
        );

  static const String name = 'UserMarketplaceDiscountDetailsRoute';
}

class UserMarketplaceDiscountDetailsRouteArgs {
  const UserMarketplaceDiscountDetailsRouteArgs({
    required this.discount,
    this.key,
  });

  final _i78.UserMarketplaceDiscount discount;

  final _i56.Key? key;

  @override
  String toString() {
    return 'UserMarketplaceDiscountDetailsRouteArgs{discount: $discount, key: $key}';
  }
}

/// generated route for
/// [_i44.MarketplaceProductPage]
class MarketplaceProductRoute
    extends _i55.PageRouteInfo<MarketplaceProductRouteArgs> {
  MarketplaceProductRoute({
    required String url,
    _i56.Key? key,
  }) : super(
          MarketplaceProductRoute.name,
          path: '/marketplace-product-page',
          args: MarketplaceProductRouteArgs(
            url: url,
            key: key,
          ),
        );

  static const String name = 'MarketplaceProductRoute';
}

class MarketplaceProductRouteArgs {
  const MarketplaceProductRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final _i56.Key? key;

  @override
  String toString() {
    return 'MarketplaceProductRouteArgs{url: $url, key: $key}';
  }
}

/// generated route for
/// [_i45.ChallengeStoriesPage]
class ChallengeStoriesRoute
    extends _i55.PageRouteInfo<ChallengeStoriesRouteArgs> {
  ChallengeStoriesRoute({
    required List<_i63.UserStoriesWithInteractions> userStories,
    required int initialStoryIndex,
    required bool isCurrentUser,
    required _i72.Option<_i79.UserAccount> currentUser,
    _i56.Key? key,
  }) : super(
          ChallengeStoriesRoute.name,
          path: '/challenge-stories-page',
          args: ChallengeStoriesRouteArgs(
            userStories: userStories,
            initialStoryIndex: initialStoryIndex,
            isCurrentUser: isCurrentUser,
            currentUser: currentUser,
            key: key,
          ),
        );

  static const String name = 'ChallengeStoriesRoute';
}

class ChallengeStoriesRouteArgs {
  const ChallengeStoriesRouteArgs({
    required this.userStories,
    required this.initialStoryIndex,
    required this.isCurrentUser,
    required this.currentUser,
    this.key,
  });

  final List<_i63.UserStoriesWithInteractions> userStories;

  final int initialStoryIndex;

  final bool isCurrentUser;

  final _i72.Option<_i79.UserAccount> currentUser;

  final _i56.Key? key;

  @override
  String toString() {
    return 'ChallengeStoriesRouteArgs{userStories: $userStories, initialStoryIndex: $initialStoryIndex, isCurrentUser: $isCurrentUser, currentUser: $currentUser, key: $key}';
  }
}

/// generated route for
/// [_i46.AddChallengeStoryPage]
class AddChallengeStoryRoute
    extends _i55.PageRouteInfo<AddChallengeStoryRouteArgs> {
  AddChallengeStoryRoute({
    required _i80.Challenge challenge,
    required List<_i81.CameraDescription> cameras,
    _i56.Key? key,
  }) : super(
          AddChallengeStoryRoute.name,
          path: '/add-challenge-story-page',
          args: AddChallengeStoryRouteArgs(
            challenge: challenge,
            cameras: cameras,
            key: key,
          ),
        );

  static const String name = 'AddChallengeStoryRoute';
}

class AddChallengeStoryRouteArgs {
  const AddChallengeStoryRouteArgs({
    required this.challenge,
    required this.cameras,
    this.key,
  });

  final _i80.Challenge challenge;

  final List<_i81.CameraDescription> cameras;

  final _i56.Key? key;

  @override
  String toString() {
    return 'AddChallengeStoryRouteArgs{challenge: $challenge, cameras: $cameras, key: $key}';
  }
}

/// generated route for
/// [_i47.PhotoPreviewPage]
class PhotoPreviewRoute extends _i55.PageRouteInfo<PhotoPreviewRouteArgs> {
  PhotoPreviewRoute({
    required _i81.XFile photo,
    required _i80.Challenge challenge,
    required bool isSelfie,
    _i56.Key? key,
  }) : super(
          PhotoPreviewRoute.name,
          path: '/photo-preview-page',
          args: PhotoPreviewRouteArgs(
            photo: photo,
            challenge: challenge,
            isSelfie: isSelfie,
            key: key,
          ),
        );

  static const String name = 'PhotoPreviewRoute';
}

class PhotoPreviewRouteArgs {
  const PhotoPreviewRouteArgs({
    required this.photo,
    required this.challenge,
    required this.isSelfie,
    this.key,
  });

  final _i81.XFile photo;

  final _i80.Challenge challenge;

  final bool isSelfie;

  final _i56.Key? key;

  @override
  String toString() {
    return 'PhotoPreviewRouteArgs{photo: $photo, challenge: $challenge, isSelfie: $isSelfie, key: $key}';
  }
}

/// generated route for
/// [_i48.VideoPreviewPage]
class VideoPreviewRoute extends _i55.PageRouteInfo<VideoPreviewRouteArgs> {
  VideoPreviewRoute({
    required _i81.XFile video,
    required _i80.Challenge challenge,
    required bool isSelfie,
    _i56.Key? key,
  }) : super(
          VideoPreviewRoute.name,
          path: '/video-preview-page',
          args: VideoPreviewRouteArgs(
            video: video,
            challenge: challenge,
            isSelfie: isSelfie,
            key: key,
          ),
        );

  static const String name = 'VideoPreviewRoute';
}

class VideoPreviewRouteArgs {
  const VideoPreviewRouteArgs({
    required this.video,
    required this.challenge,
    required this.isSelfie,
    this.key,
  });

  final _i81.XFile video;

  final _i80.Challenge challenge;

  final bool isSelfie;

  final _i56.Key? key;

  @override
  String toString() {
    return 'VideoPreviewRouteArgs{video: $video, challenge: $challenge, isSelfie: $isSelfie, key: $key}';
  }
}

/// generated route for
/// [_i49.StoryCommentsPage]
class StoryCommentsRoute extends _i55.PageRouteInfo<StoryCommentsRouteArgs> {
  StoryCommentsRoute({
    required String storyId,
    required _i82.Participant currentUser,
    required _i56.BuildContext blocContext,
    _i56.Key? key,
  }) : super(
          StoryCommentsRoute.name,
          path: '/story-comments-page',
          args: StoryCommentsRouteArgs(
            storyId: storyId,
            currentUser: currentUser,
            blocContext: blocContext,
            key: key,
          ),
        );

  static const String name = 'StoryCommentsRoute';
}

class StoryCommentsRouteArgs {
  const StoryCommentsRouteArgs({
    required this.storyId,
    required this.currentUser,
    required this.blocContext,
    this.key,
  });

  final String storyId;

  final _i82.Participant currentUser;

  final _i56.BuildContext blocContext;

  final _i56.Key? key;

  @override
  String toString() {
    return 'StoryCommentsRouteArgs{storyId: $storyId, currentUser: $currentUser, blocContext: $blocContext, key: $key}';
  }
}

/// generated route for
/// [_i50.DashboardPage]
class DashboardRoute extends _i55.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard-page',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i51.DiscoverPage]
class DiscoverRoute extends _i55.PageRouteInfo<void> {
  const DiscoverRoute()
      : super(
          DiscoverRoute.name,
          path: 'discover-page',
        );

  static const String name = 'DiscoverRoute';
}

/// generated route for
/// [_i52.ChallengesPage]
class ChallengesRoute extends _i55.PageRouteInfo<void> {
  const ChallengesRoute()
      : super(
          ChallengesRoute.name,
          path: 'challenges-page',
        );

  static const String name = 'ChallengesRoute';
}

/// generated route for
/// [_i53.MessagesPage]
class MessagesRoute extends _i55.PageRouteInfo<void> {
  const MessagesRoute()
      : super(
          MessagesRoute.name,
          path: 'messages-page',
        );

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i54.ProfilePage]
class ProfileRoute extends _i55.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
