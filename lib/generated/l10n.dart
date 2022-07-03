// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About us`
  String get aboutUs {
    return Intl.message(
      'About us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Access code`
  String get accessCode {
    return Intl.message(
      'Access code',
      name: 'accessCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter access code`
  String get accessCodeEmpty {
    return Intl.message(
      'Please enter access code',
      name: 'accessCodeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `An account already exists for that email`
  String get accountExists {
    return Intl.message(
      'An account already exists for that email',
      name: 'accountExists',
      desc: '',
      args: [],
    );
  }

  /// `Account settings`
  String get accountSettings {
    return Intl.message(
      'Account settings',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get accountSettingsTitle {
    return Intl.message(
      'Account Settings',
      name: 'accountSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `At least one pool of tickets must be added`
  String get addAtLeastOneTicketPool {
    return Intl.message(
      'At least one pool of tickets must be added',
      name: 'addAtLeastOneTicketPool',
      desc: '',
      args: [],
    );
  }

  /// `Add a club to your favorites and receive notifications as soon as it adds a new event or reward`
  String get addClubToFavoritesAndReceiveNotifications {
    return Intl.message(
      'Add a club to your favorites and receive notifications as soon as it adds a new event or reward',
      name: 'addClubToFavoritesAndReceiveNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Add description`
  String get addDescription {
    return Intl.message(
      'Add description',
      name: 'addDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add link to DJ channel on YouTube`
  String get addDjChannelYoutubeUrl {
    return Intl.message(
      'Add link to DJ channel on YouTube',
      name: 'addDjChannelYoutubeUrl',
      desc: '',
      args: [],
    );
  }

  /// `Add event`
  String get addEvent {
    return Intl.message(
      'Add event',
      name: 'addEvent',
      desc: '',
      args: [],
    );
  }

  /// `Add Facebook event URL link`
  String get addFacebookUrl {
    return Intl.message(
      'Add Facebook event URL link',
      name: 'addFacebookUrl',
      desc: '',
      args: [],
    );
  }

  /// `Additional info`
  String get additionalInfo {
    return Intl.message(
      'Additional info',
      name: 'additionalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Add photo`
  String get addPhoto {
    return Intl.message(
      'Add photo',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Add promotion code`
  String get addPromotionCode {
    return Intl.message(
      'Add promotion code',
      name: 'addPromotionCode',
      desc: '',
      args: [],
    );
  }

  /// `Add reward`
  String get addReward {
    return Intl.message(
      'Add reward',
      name: 'addReward',
      desc: '',
      args: [],
    );
  }

  /// `Add ticket pool`
  String get addTicketPool {
    return Intl.message(
      'Add ticket pool',
      name: 'addTicketPool',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Allow VIP tickets`
  String get allowVipTickets {
    return Intl.message(
      'Allow VIP tickets',
      name: 'allowVipTickets',
      desc: '',
      args: [],
    );
  }

  /// `Any`
  String get anyCurrency {
    return Intl.message(
      'Any',
      name: 'anyCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Applied promotion code`
  String get appliedPromotionCode {
    return Intl.message(
      'Applied promotion code',
      name: 'appliedPromotionCode',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Apply discount`
  String get applyDiscount {
    return Intl.message(
      'Apply discount',
      name: 'applyDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Apply filters`
  String get applyFilters {
    return Intl.message(
      'Apply filters',
      name: 'applyFilters',
      desc: '',
      args: [],
    );
  }

  /// `Apply selected date`
  String get applySelectedDate {
    return Intl.message(
      'Apply selected date',
      name: 'applySelectedDate',
      desc: '',
      args: [],
    );
  }

  /// `App version`
  String get appVersion {
    return Intl.message(
      'App version',
      name: 'appVersion',
      desc: '',
      args: [],
    );
  }

  /// `Artist name`
  String get artistName {
    return Intl.message(
      'Artist name',
      name: 'artistName',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{Attending} one{Attending} other{Attending}}`
  String attending(num count) {
    return Intl.plural(
      count,
      zero: 'Attending',
      one: 'Attending',
      other: 'Attending',
      name: 'attending',
      desc: '',
      args: [count],
    );
  }

  /// `Available discounts`
  String get availableDiscounts {
    return Intl.message(
      'Available discounts',
      name: 'availableDiscounts',
      desc: '',
      args: [],
    );
  }

  /// `Available soon`
  String get availableSoon {
    return Intl.message(
      'Available soon',
      name: 'availableSoon',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Back to event list`
  String get backToEventList {
    return Intl.message(
      'Back to event list',
      name: 'backToEventList',
      desc: '',
      args: [],
    );
  }

  /// `Back to home page`
  String get backToHomePage {
    return Intl.message(
      'Back to home page',
      name: 'backToHomePage',
      desc: '',
      args: [],
    );
  }

  /// `Back to summary`
  String get backToSummary {
    return Intl.message(
      'Back to summary',
      name: 'backToSummary',
      desc: '',
      args: [],
    );
  }

  /// `Buy ticket`
  String get buyTicket {
    return Intl.message(
      'Buy ticket',
      name: 'buyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Cancel event`
  String get cancelEvent {
    return Intl.message(
      'Cancel event',
      name: 'cancelEvent',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Operation cancelled by user`
  String get cancelledByUser {
    return Intl.message(
      'Operation cancelled by user',
      name: 'cancelledByUser',
      desc: '',
      args: [],
    );
  }

  /// `Time to cancel the event has expired`
  String get cancelTimeExpired {
    return Intl.message(
      'Time to cancel the event has expired',
      name: 'cancelTimeExpired',
      desc: '',
      args: [],
    );
  }

  /// `Casual`
  String get casual {
    return Intl.message(
      'Casual',
      name: 'casual',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePasswordTitle {
    return Intl.message(
      'Change Password',
      name: 'changePasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Change photo`
  String get changePhoto {
    return Intl.message(
      'Change photo',
      name: 'changePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Change username`
  String get changeUsername {
    return Intl.message(
      'Change username',
      name: 'changeUsername',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Clear filters`
  String get clearFilters {
    return Intl.message(
      'Clear filters',
      name: 'clearFilters',
      desc: '',
      args: [],
    );
  }

  /// `Close ticket pool`
  String get closeTicketPool {
    return Intl.message(
      'Close ticket pool',
      name: 'closeTicketPool',
      desc: '',
      args: [],
    );
  }

  /// `Club does not offer rewards`
  String get clubDoesNotOfferRewards {
    return Intl.message(
      'Club does not offer rewards',
      name: 'clubDoesNotOfferRewards',
      desc: '',
      args: [],
    );
  }

  /// `Club name`
  String get clubName {
    return Intl.message(
      'Club name',
      name: 'clubName',
      desc: '',
      args: [],
    );
  }

  /// `Error while loading club reviews`
  String get clubReviewsLoadingError {
    return Intl.message(
      'Error while loading club reviews',
      name: 'clubReviewsLoadingError',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No clubs} one{Club} other{Clubs}}`
  String clubs(num count) {
    return Intl.plural(
      count,
      zero: 'No clubs',
      one: 'Club',
      other: 'Clubs',
      name: 'clubs',
      desc: '',
      args: [count],
    );
  }

  /// `Collect benefits in clubs by collecting attendance for participating in events`
  String get collectBenefitsInClubs {
    return Intl.message(
      'Collect benefits in clubs by collecting attendance for participating in events',
      name: 'collectBenefitsInClubs',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Company name`
  String get companyName {
    return Intl.message(
      'Company name',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `Concert`
  String get concert {
    return Intl.message(
      'Concert',
      name: 'concert',
      desc: '',
      args: [],
    );
  }

  /// `Concert information`
  String get concertInfo {
    return Intl.message(
      'Concert information',
      name: 'concertInfo',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you wish to delete this item?`
  String get confirmDeleteMessage {
    return Intl.message(
      'Are you sure you wish to delete this item?',
      name: 'confirmDeleteMessage',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel the event? The current cost of canceling the event related to payment processing is`
  String get confirmEventCancelation {
    return Intl.message(
      'Are you sure you want to cancel the event? The current cost of canceling the event related to payment processing is',
      name: 'confirmEventCancelation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to postpone the event? The current cost of postponing the event related to payment processing is`
  String get confirmEventPostpone {
    return Intl.message(
      'Are you sure you want to postpone the event? The current cost of postponing the event related to payment processing is',
      name: 'confirmEventPostpone',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit the current page? Changes will not be saved`
  String get confirmLeavingPage {
    return Intl.message(
      'Are you sure you want to exit the current page? Changes will not be saved',
      name: 'confirmLeavingPage',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to report this opinion as inappropriate?`
  String get confirmReviewReport {
    return Intl.message(
      'Are you sure you want to report this opinion as inappropriate?',
      name: 'confirmReviewReport',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this selector?`
  String get confirmSelectorDeletion {
    return Intl.message(
      'Are you sure you want to delete this selector?',
      name: 'confirmSelectorDeletion',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get confirmSignOut {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'confirmSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to return the ticket?`
  String get confirmTicketReturn {
    return Intl.message(
      'Are you sure you want to return the ticket?',
      name: 'confirmTicketReturn',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get cost {
    return Intl.message(
      'Cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Current fee`
  String get currentFee {
    return Intl.message(
      'Current fee',
      name: 'currentFee',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPasswordLabel {
    return Intl.message(
      'Current Password',
      name: 'currentPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Dark theme`
  String get darkTheme {
    return Intl.message(
      'Dark theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Date and time`
  String get dateAndTime {
    return Intl.message(
      'Date and time',
      name: 'dateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `The only pool of tickets cannot be removed`
  String get deletedAllTicketPools {
    return Intl.message(
      'The only pool of tickets cannot be removed',
      name: 'deletedAllTicketPools',
      desc: '',
      args: [],
    );
  }

  /// `The pool cannot be removed once the sale of tickets has started`
  String get deletedTicketPoolAfterTicketWasSold {
    return Intl.message(
      'The pool cannot be removed once the sale of tickets has started',
      name: 'deletedTicketPoolAfterTicketWasSold',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Description may contain up to 1000 characters`
  String get descTooLong {
    return Intl.message(
      'Description may contain up to 1000 characters',
      name: 'descTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Discount has already been used`
  String get discountHasBeenUsed {
    return Intl.message(
      'Discount has already been used',
      name: 'discountHasBeenUsed',
      desc: '',
      args: [],
    );
  }

  /// `Discounts`
  String get discounts {
    return Intl.message(
      'Discounts',
      name: 'discounts',
      desc: '',
      args: [],
    );
  }

  /// `Discounts are added to the total amount of tickets sold and vips on exclusive events`
  String get discountsInfo {
    return Intl.message(
      'Discounts are added to the total amount of tickets sold and vips on exclusive events',
      name: 'discountsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Explore nearby clubs and find a party for yourself`
  String get discoverClubs {
    return Intl.message(
      'Explore nearby clubs and find a party for yourself',
      name: 'discoverClubs',
      desc: '',
      args: [],
    );
  }

  /// `DJ YouTube channel`
  String get djYoutubeChannel {
    return Intl.message(
      'DJ YouTube channel',
      name: 'djYoutubeChannel',
      desc: '',
      args: [],
    );
  }

  /// `Dress code`
  String get dressCode {
    return Intl.message(
      'Dress code',
      name: 'dressCode',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Edit description`
  String get editDescription {
    return Intl.message(
      'Edit description',
      name: 'editDescription',
      desc: '',
      args: [],
    );
  }

  /// `Edit link to Dj channel on Youtube`
  String get editDjChannelYoutubeUrl {
    return Intl.message(
      'Edit link to Dj channel on Youtube',
      name: 'editDjChannelYoutubeUrl',
      desc: '',
      args: [],
    );
  }

  /// `Edit event name`
  String get editEventName {
    return Intl.message(
      'Edit event name',
      name: 'editEventName',
      desc: '',
      args: [],
    );
  }

  /// `Edit Facebook event URL link`
  String get editFacebookUrl {
    return Intl.message(
      'Edit Facebook event URL link',
      name: 'editFacebookUrl',
      desc: '',
      args: [],
    );
  }

  /// `Edit reward`
  String get editReward {
    return Intl.message(
      'Edit reward',
      name: 'editReward',
      desc: '',
      args: [],
    );
  }

  /// `Edit ticket pool`
  String get editTicketPool {
    return Intl.message(
      'Edit ticket pool',
      name: 'editTicketPool',
      desc: '',
      args: [],
    );
  }

  /// `Elegant`
  String get elegant {
    return Intl.message(
      'Elegant',
      name: 'elegant',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use`
  String get emailAlreadyInUse {
    return Intl.message(
      'Email already in use',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Your favorite clubs will be shown here`
  String get emptyFavoriteClubsMessage {
    return Intl.message(
      'Your favorite clubs will be shown here',
      name: 'emptyFavoriteClubsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your favorite events will be shown here`
  String get emptyFavoriteEventsMessage {
    return Intl.message(
      'Your favorite events will be shown here',
      name: 'emptyFavoriteEventsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enable location`
  String get enableLocation {
    return Intl.message(
      'Enable location',
      name: 'enableLocation',
      desc: '',
      args: [],
    );
  }

  /// `End date`
  String get endDate {
    return Intl.message(
      'End date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `The end date cannot be before the start date`
  String get endDateBeforeStart {
    return Intl.message(
      'The end date cannot be before the start date',
      name: 'endDateBeforeStart',
      desc: '',
      args: [],
    );
  }

  /// `Enter access code`
  String get enterAccessCode {
    return Intl.message(
      'Enter access code',
      name: 'enterAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter artist name`
  String get enterArtistName {
    return Intl.message(
      'Please enter artist name',
      name: 'enterArtistName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter description`
  String get enterDesc {
    return Intl.message(
      'Please enter description',
      name: 'enterDesc',
      desc: '',
      args: [],
    );
  }

  /// `Please add link to DJ channel on YouTube`
  String get enterDjChannelYoutubeUrl {
    return Intl.message(
      'Please add link to DJ channel on YouTube',
      name: 'enterDjChannelYoutubeUrl',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your e-mail address`
  String get enterEmail {
    return Intl.message(
      'Please enter your e-mail address',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter end date time`
  String get enterEndDateTime {
    return Intl.message(
      'Please enter end date time',
      name: 'enterEndDateTime',
      desc: '',
      args: [],
    );
  }

  /// `Please enter event name`
  String get enterEventName {
    return Intl.message(
      'Please enter event name',
      name: 'enterEventName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter link to Facebook`
  String get enterFacebookLink {
    return Intl.message(
      'Please enter link to Facebook',
      name: 'enterFacebookLink',
      desc: '',
      args: [],
    );
  }

  /// `Please enter link to Facebook event`
  String get enterFacebookUrl {
    return Intl.message(
      'Please enter link to Facebook event',
      name: 'enterFacebookUrl',
      desc: '',
      args: [],
    );
  }

  /// `Please enter invoice data`
  String get enterInvoiceData {
    return Intl.message(
      'Please enter invoice data',
      name: 'enterInvoiceData',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a password`
  String get enterPassword {
    return Intl.message(
      'Please enter a password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please give the price`
  String get enterPrice {
    return Intl.message(
      'Please give the price',
      name: 'enterPrice',
      desc: '',
      args: [],
    );
  }

  /// `Please enter quantity`
  String get enterQuantity {
    return Intl.message(
      'Please enter quantity',
      name: 'enterQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Please enter required number of entries`
  String get enterRequiredEntries {
    return Intl.message(
      'Please enter required number of entries',
      name: 'enterRequiredEntries',
      desc: '',
      args: [],
    );
  }

  /// `Please enter start date time`
  String get enterStartDateTime {
    return Intl.message(
      'Please enter start date time',
      name: 'enterStartDateTime',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a username`
  String get enterUsername {
    return Intl.message(
      'Please enter a username',
      name: 'enterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid email address`
  String get enterValidEmail {
    return Intl.message(
      'Enter valid email address',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter VAT number`
  String get enterVatNumber {
    return Intl.message(
      'Enter VAT number',
      name: 'enterVatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter link to YouTube`
  String get enterYoutubeLink {
    return Intl.message(
      'Please enter link to YouTube',
      name: 'enterYoutubeLink',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{entries} one{entry} other{entries}}`
  String entries(num count) {
    return Intl.plural(
      count,
      zero: 'entries',
      one: 'entry',
      other: 'entries',
      name: 'entries',
      desc: '',
      args: [count],
    );
  }

  /// `Entry`
  String get entry {
    return Intl.message(
      'Entry',
      name: 'entry',
      desc: '',
      args: [],
    );
  }

  /// `Error adding event`
  String get errorAddingEvent {
    return Intl.message(
      'Error adding event',
      name: 'errorAddingEvent',
      desc: '',
      args: [],
    );
  }

  /// `Error adding reward`
  String get errorAddingReward {
    return Intl.message(
      'Error adding reward',
      name: 'errorAddingReward',
      desc: '',
      args: [],
    );
  }

  /// `Error while changing club status`
  String get errorChangingClubStatus {
    return Intl.message(
      'Error while changing club status',
      name: 'errorChangingClubStatus',
      desc: '',
      args: [],
    );
  }

  /// `Error while changing event status`
  String get errorChangingEventStatus {
    return Intl.message(
      'Error while changing event status',
      name: 'errorChangingEventStatus',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get errorCheckInternetConnection {
    return Intl.message(
      'Please check your internet connection',
      name: 'errorCheckInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Error deleting reward`
  String get errorDeletingReward {
    return Intl.message(
      'Error deleting reward',
      name: 'errorDeletingReward',
      desc: '',
      args: [],
    );
  }

  /// `Error deleting selector`
  String get errorDeletingSelector {
    return Intl.message(
      'Error deleting selector',
      name: 'errorDeletingSelector',
      desc: '',
      args: [],
    );
  }

  /// `Error loading clubs`
  String get errorLoadingClubs {
    return Intl.message(
      'Error loading clubs',
      name: 'errorLoadingClubs',
      desc: '',
      args: [],
    );
  }

  /// `Error loading event details`
  String get errorLoadingEventDetails {
    return Intl.message(
      'Error loading event details',
      name: 'errorLoadingEventDetails',
      desc: '',
      args: [],
    );
  }

  /// `Error loading events`
  String get errorLoadingEvents {
    return Intl.message(
      'Error loading events',
      name: 'errorLoadingEvents',
      desc: '',
      args: [],
    );
  }

  /// `Error loading information about favorite clubs`
  String get errorLoadingFavoriteClubsInfo {
    return Intl.message(
      'Error loading information about favorite clubs',
      name: 'errorLoadingFavoriteClubsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Error loading information about favorite events`
  String get errorLoadingFavoriteEventsInfo {
    return Intl.message(
      'Error loading information about favorite events',
      name: 'errorLoadingFavoriteEventsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Error loading filters`
  String get errorLoadingFilters {
    return Intl.message(
      'Error loading filters',
      name: 'errorLoadingFilters',
      desc: '',
      args: [],
    );
  }

  /// `Error loading photos`
  String get errorLoadingPhotos {
    return Intl.message(
      'Error loading photos',
      name: 'errorLoadingPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Error while loading profile info`
  String get errorLoadingProfile {
    return Intl.message(
      'Error while loading profile info',
      name: 'errorLoadingProfile',
      desc: '',
      args: [],
    );
  }

  /// `Error loading rewards`
  String get errorLoadingRewards {
    return Intl.message(
      'Error loading rewards',
      name: 'errorLoadingRewards',
      desc: '',
      args: [],
    );
  }

  /// `Error loading selectors`
  String get errorLoadingSelectors {
    return Intl.message(
      'Error loading selectors',
      name: 'errorLoadingSelectors',
      desc: '',
      args: [],
    );
  }

  /// `Error loading tickets`
  String get errorLoadingTickets {
    return Intl.message(
      'Error loading tickets',
      name: 'errorLoadingTickets',
      desc: '',
      args: [],
    );
  }

  /// `Error making a call`
  String get errorMakingCall {
    return Intl.message(
      'Error making a call',
      name: 'errorMakingCall',
      desc: '',
      args: [],
    );
  }

  /// `Error opening link`
  String get errorOpeningLink {
    return Intl.message(
      'Error opening link',
      name: 'errorOpeningLink',
      desc: '',
      args: [],
    );
  }

  /// `Error opening maps`
  String get errorOpeningMaps {
    return Intl.message(
      'Error opening maps',
      name: 'errorOpeningMaps',
      desc: '',
      args: [],
    );
  }

  /// `Error reporting review`
  String get errorReportingReview {
    return Intl.message(
      'Error reporting review',
      name: 'errorReportingReview',
      desc: '',
      args: [],
    );
  }

  /// `Error updating event`
  String get errorUpdatingEvent {
    return Intl.message(
      'Error updating event',
      name: 'errorUpdatingEvent',
      desc: '',
      args: [],
    );
  }

  /// `Error updating reward`
  String get errorUpdatingReward {
    return Intl.message(
      'Error updating reward',
      name: 'errorUpdatingReward',
      desc: '',
      args: [],
    );
  }

  /// `Event added successfully`
  String get eventAddedSuccessfully {
    return Intl.message(
      'Event added successfully',
      name: 'eventAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Ticket sales has been suspended`
  String get eventBeingPostponed {
    return Intl.message(
      'Ticket sales has been suspended',
      name: 'eventBeingPostponed',
      desc: '',
      args: [],
    );
  }

  /// `Event canceled successfully`
  String get eventCanceledSuccessfully {
    return Intl.message(
      'Event canceled successfully',
      name: 'eventCanceledSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Event has been cancelled by club`
  String get eventCancelled {
    return Intl.message(
      'Event has been cancelled by club',
      name: 'eventCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Event details`
  String get eventDetails {
    return Intl.message(
      'Event details',
      name: 'eventDetails',
      desc: '',
      args: [],
    );
  }

  /// `The event may last a maximum of 24 hours`
  String get eventDurationTooLong {
    return Intl.message(
      'The event may last a maximum of 24 hours',
      name: 'eventDurationTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Event edited successfully`
  String get eventEditedSuccessfully {
    return Intl.message(
      'Event edited successfully',
      name: 'eventEditedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `An event already exists in the given date range`
  String get eventExistsInDateRange {
    return Intl.message(
      'An event already exists in the given date range',
      name: 'eventExistsInDateRange',
      desc: '',
      args: [],
    );
  }

  /// `The event has ended`
  String get eventHasEnded {
    return Intl.message(
      'The event has ended',
      name: 'eventHasEnded',
      desc: '',
      args: [],
    );
  }

  /// `Event name`
  String get eventName {
    return Intl.message(
      'Event name',
      name: 'eventName',
      desc: '',
      args: [],
    );
  }

  /// `Event overview`
  String get eventOverview {
    return Intl.message(
      'Event overview',
      name: 'eventOverview',
      desc: '',
      args: [],
    );
  }

  /// `Event place`
  String get eventPlace {
    return Intl.message(
      'Event place',
      name: 'eventPlace',
      desc: '',
      args: [],
    );
  }

  /// `Event postponed successfully`
  String get eventPostponedSuccessfully {
    return Intl.message(
      'Event postponed successfully',
      name: 'eventPostponedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Event revenue`
  String get eventRevenue {
    return Intl.message(
      'Event revenue',
      name: 'eventRevenue',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No events} one{Event} other{Events}}`
  String events(num count) {
    return Intl.plural(
      count,
      zero: 'No events',
      one: 'Event',
      other: 'Events',
      name: 'events',
      desc: '',
      args: [count],
    );
  }

  /// `The event should last at least one hour`
  String get eventTimeTooShort {
    return Intl.message(
      'The event should last at least one hour',
      name: 'eventTimeTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive`
  String get exclusive {
    return Intl.message(
      'Exclusive',
      name: 'exclusive',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive event`
  String get exclusiveEvent {
    return Intl.message(
      'Exclusive event',
      name: 'exclusiveEvent',
      desc: '',
      args: [],
    );
  }

  /// `Ticket sales only at the gate and in the Tonight app`
  String get exclusiveEventInfo {
    return Intl.message(
      'Ticket sales only at the gate and in the Tonight app',
      name: 'exclusiveEventInfo',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exitButtonTitle {
    return Intl.message(
      'Exit',
      name: 'exitButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Facebook event`
  String get facebookEvent {
    return Intl.message(
      'Facebook event',
      name: 'facebookEvent',
      desc: '',
      args: [],
    );
  }

  /// `Favorite clubs`
  String get favoriteClubs {
    return Intl.message(
      'Favorite clubs',
      name: 'favoriteClubs',
      desc: '',
      args: [],
    );
  }

  /// `Add clubs to your favorites and receive notifications about new events and rewards`
  String get favoriteClubsInfo {
    return Intl.message(
      'Add clubs to your favorites and receive notifications about new events and rewards',
      name: 'favoriteClubsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Favorite events`
  String get favoriteEvents {
    return Intl.message(
      'Favorite events',
      name: 'favoriteEvents',
      desc: '',
      args: [],
    );
  }

  /// `Add events to your favorites and receive notifications when new tickets are available`
  String get favoriteEventsInfo {
    return Intl.message(
      'Add events to your favorites and receive notifications when new tickets are available',
      name: 'favoriteEventsInfo',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Fee`
  String get fee {
    return Intl.message(
      'Fee',
      name: 'fee',
      desc: '',
      args: [],
    );
  }

  /// `Field should not be empty`
  String get fieldShouldNotBeEmpty {
    return Intl.message(
      'Field should not be empty',
      name: 'fieldShouldNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get findByCity {
    return Intl.message(
      'City',
      name: 'findByCity',
      desc: '',
      args: [],
    );
  }

  /// `Maximum distance`
  String get findByMaxDistance {
    return Intl.message(
      'Maximum distance',
      name: 'findByMaxDistance',
      desc: '',
      args: [],
    );
  }

  /// `Find event place by`
  String get findEventPlaceBy {
    return Intl.message(
      'Find event place by',
      name: 'findEventPlaceBy',
      desc: '',
      args: [],
    );
  }

  /// `Find in map`
  String get findInMap {
    return Intl.message(
      'Find in map',
      name: 'findInMap',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Generate access code`
  String get generateAccessCode {
    return Intl.message(
      'Generate access code',
      name: 'generateAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message(
      'Income',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `Access code is invalid or has expired`
  String get invalidAccessCode {
    return Intl.message(
      'Access code is invalid or has expired',
      name: 'invalidAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Invalid country`
  String get invalidCountryCode {
    return Intl.message(
      'Invalid country',
      name: 'invalidCountryCode',
      desc: '',
      args: [],
    );
  }

  /// `The credential received are invalid or has expired`
  String get invalidCredential {
    return Intl.message(
      'The credential received are invalid or has expired',
      name: 'invalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalidEmail {
    return Intl.message(
      'Invalid email format',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The event has been deleted by the club`
  String get invalidEvent {
    return Intl.message(
      'The event has been deleted by the club',
      name: 'invalidEvent',
      desc: '',
      args: [],
    );
  }

  /// `Invalid price range`
  String get invalidPriceRange {
    return Intl.message(
      'Invalid price range',
      name: 'invalidPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `Invalid promotion code`
  String get invalidPromotionCode {
    return Intl.message(
      'Invalid promotion code',
      name: 'invalidPromotionCode',
      desc: '',
      args: [],
    );
  }

  /// `Invalid QR code`
  String get invalidQrCode {
    return Intl.message(
      'Invalid QR code',
      name: 'invalidQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Link is invalid or has expired`
  String get invalidSignInLink {
    return Intl.message(
      'Link is invalid or has expired',
      name: 'invalidSignInLink',
      desc: '',
      args: [],
    );
  }

  /// `Invalid ticket`
  String get invalidTicket {
    return Intl.message(
      'Invalid ticket',
      name: 'invalidTicket',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL format`
  String get invalidUrl {
    return Intl.message(
      'Invalid URL format',
      name: 'invalidUrl',
      desc: '',
      args: [],
    );
  }

  /// `Invalid VAT number`
  String get invalidVatNumber {
    return Intl.message(
      'Invalid VAT number',
      name: 'invalidVatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid verification code`
  String get invalidVerificationCode {
    return Intl.message(
      'Invalid verification code',
      name: 'invalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Invalid verification ID`
  String get invalidVerificationId {
    return Intl.message(
      'Invalid verification ID',
      name: 'invalidVerificationId',
      desc: '',
      args: [],
    );
  }

  /// `Invite selector`
  String get inviteSelector {
    return Intl.message(
      'Invite selector',
      name: 'inviteSelector',
      desc: '',
      args: [],
    );
  }

  /// `Invoice data`
  String get invoiceData {
    return Intl.message(
      'Invoice data',
      name: 'invoiceData',
      desc: '',
      args: [],
    );
  }

  /// `Invoice data updated successfully`
  String get invoiceDataUpdatedSuccessfully {
    return Intl.message(
      'Invoice data updated successfully',
      name: 'invoiceDataUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The invoice will be sent to your email address`
  String get invoiceWillBeSentToEmail {
    return Intl.message(
      'The invoice will be sent to your email address',
      name: 'invoiceWillBeSentToEmail',
      desc: '',
      args: [],
    );
  }

  /// `Concert`
  String get isConcert {
    return Intl.message(
      'Concert',
      name: 'isConcert',
      desc: '',
      args: [],
    );
  }

  /// `I want a VAT invoice`
  String get iWantInvoice {
    return Intl.message(
      'I want a VAT invoice',
      name: 'iWantInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Last tickets`
  String get lastTicketsInPool {
    return Intl.message(
      'Last tickets',
      name: 'lastTicketsInPool',
      desc: '',
      args: [],
    );
  }

  /// `Live`
  String get live {
    return Intl.message(
      'Live',
      name: 'live',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Seems you've lost connection to internet`
  String get lostNetworkConnectionDescription {
    return Intl.message(
      'Seems you\'ve lost connection to internet',
      name: 'lostNetworkConnectionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Maximum distance`
  String get maxDistance {
    return Intl.message(
      'Maximum distance',
      name: 'maxDistance',
      desc: '',
      args: [],
    );
  }

  /// `The maximum number of ticket pools is 5`
  String get maxNumberOfTicketPools {
    return Intl.message(
      'The maximum number of ticket pools is 5',
      name: 'maxNumberOfTicketPools',
      desc: '',
      args: [],
    );
  }

  /// `The maximum size of the photo is 1MB`
  String get maxPhotoSize {
    return Intl.message(
      'The maximum size of the photo is 1MB',
      name: 'maxPhotoSize',
      desc: '',
      args: [],
    );
  }

  /// `Please select up to 3 musical genres`
  String get maxThreeMusicalGenres {
    return Intl.message(
      'Please select up to 3 musical genres',
      name: 'maxThreeMusicalGenres',
      desc: '',
      args: [],
    );
  }

  /// `Milestones`
  String get milestones {
    return Intl.message(
      'Milestones',
      name: 'milestones',
      desc: '',
      args: [],
    );
  }

  /// `Minimum age`
  String get minAge {
    return Intl.message(
      'Minimum age',
      name: 'minAge',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
      desc: '',
      args: [],
    );
  }

  /// `Musical genres`
  String get musicalGenres {
    return Intl.message(
      'Musical genres',
      name: 'musicalGenres',
      desc: '',
      args: [],
    );
  }

  /// `Name and description`
  String get nameAndDesc {
    return Intl.message(
      'Name and description',
      name: 'nameAndDesc',
      desc: '',
      args: [],
    );
  }

  /// `Name cannot contain special characters`
  String get nameCannotContainSpecialCharacters {
    return Intl.message(
      'Name cannot contain special characters',
      name: 'nameCannotContainSpecialCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Name can contain up to 100 characters`
  String get nameTooLong {
    return Intl.message(
      'Name can contain up to 100 characters',
      name: 'nameTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Name should be at least 3 characters`
  String get nameTooShort {
    return Intl.message(
      'Name should be at least 3 characters',
      name: 'nameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Natural person`
  String get naturalPerson {
    return Intl.message(
      'Natural person',
      name: 'naturalPerson',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `You have no access to this club`
  String get noAccessToClub {
    return Intl.message(
      'You have no access to this club',
      name: 'noAccessToClub',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `No dress code`
  String get noDressCode {
    return Intl.message(
      'No dress code',
      name: 'noDressCode',
      desc: '',
      args: [],
    );
  }

  /// `No events at this club yet`
  String get noEventsInClub {
    return Intl.message(
      'No events at this club yet',
      name: 'noEventsInClub',
      desc: '',
      args: [],
    );
  }

  /// `No events near you`
  String get noEventsNearYou {
    return Intl.message(
      'No events near you',
      name: 'noEventsNearYou',
      desc: '',
      args: [],
    );
  }

  /// `No live event in your club`
  String get noLiveEvent {
    return Intl.message(
      'No live event in your club',
      name: 'noLiveEvent',
      desc: '',
      args: [],
    );
  }

  /// `No opinions`
  String get noOpinions {
    return Intl.message(
      'No opinions',
      name: 'noOpinions',
      desc: '',
      args: [],
    );
  }

  /// `No revenue`
  String get noRevenue {
    return Intl.message(
      'No revenue',
      name: 'noRevenue',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get normal {
    return Intl.message(
      'Normal',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `No sport`
  String get noSport {
    return Intl.message(
      'No sport',
      name: 'noSport',
      desc: '',
      args: [],
    );
  }

  /// `No tickets sold`
  String get noTicketsSold {
    return Intl.message(
      'No tickets sold',
      name: 'noTicketsSold',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `No VIPs sold`
  String get noVipsSold {
    return Intl.message(
      'No VIPs sold',
      name: 'noVipsSold',
      desc: '',
      args: [],
    );
  }

  /// `Number of tickets`
  String get numberOfTickets {
    return Intl.message(
      'Number of tickets',
      name: 'numberOfTickets',
      desc: '',
      args: [],
    );
  }

  /// `One-time access code for selector`
  String get oneTimeAccessCode {
    return Intl.message(
      'One-time access code for selector',
      name: 'oneTimeAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Operation is not allowed`
  String get operationNotAllowed {
    return Intl.message(
      'Operation is not allowed',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{Opinions} one{Opinion} other{Opinions}}`
  String opinions(num count) {
    return Intl.plural(
      count,
      zero: 'Opinions',
      one: 'Opinion',
      other: 'Opinions',
      name: 'opinions',
      desc: '',
      args: [count],
    );
  }

  /// `Or continue with`
  String get orContinueWith {
    return Intl.message(
      'Or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password should contain at least one digit`
  String get passwordDigit {
    return Intl.message(
      'Password should contain at least one digit',
      name: 'passwordDigit',
      desc: '',
      args: [],
    );
  }

  /// `Password should contain at least one lower case`
  String get passwordLowerCase {
    return Intl.message(
      'Password should contain at least one lower case',
      name: 'passwordLowerCase',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link sent`
  String get passwordResetLinkSent {
    return Intl.message(
      'Password reset link sent',
      name: 'passwordResetLinkSent',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password should contain at least one special character`
  String get passwordSpecialCharacter {
    return Intl.message(
      'Password should contain at least one special character',
      name: 'passwordSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Password should be at least 8 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password should be at least 8 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password has been updated!`
  String get passwordUpdatedMessage {
    return Intl.message(
      'Password has been updated!',
      name: 'passwordUpdatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Password should contain at least one upper case`
  String get passwordUpperCase {
    return Intl.message(
      'Password should contain at least one upper case',
      name: 'passwordUpperCase',
      desc: '',
      args: [],
    );
  }

  /// `Past`
  String get past {
    return Intl.message(
      'Past',
      name: 'past',
      desc: '',
      args: [],
    );
  }

  /// `Past tickets`
  String get pastTickets {
    return Intl.message(
      'Past tickets',
      name: 'pastTickets',
      desc: '',
      args: [],
    );
  }

  /// `Pay conveniently using a card, Google Pay, Apple Pay, BLIK or another method available at Przelewy24`
  String get payConveniently {
    return Intl.message(
      'Pay conveniently using a card, Google Pay, Apple Pay, BLIK or another method available at Przelewy24',
      name: 'payConveniently',
      desc: '',
      args: [],
    );
  }

  /// `Payment confirmed`
  String get paymentConfirmed {
    return Intl.message(
      'Payment confirmed',
      name: 'paymentConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Error during payment, please contact support`
  String get paymentError {
    return Intl.message(
      'Error during payment, please contact support',
      name: 'paymentError',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No photos} one{Photo} other{Photos}}`
  String photos(num count) {
    return Intl.plural(
      count,
      zero: 'No photos',
      one: 'Photo',
      other: 'Photos',
      name: 'photos',
      desc: '',
      args: [count],
    );
  }

  /// `Please add a photo`
  String get pleaseAddPhoto {
    return Intl.message(
      'Please add a photo',
      name: 'pleaseAddPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Pool`
  String get pool {
    return Intl.message(
      'Pool',
      name: 'pool',
      desc: '',
      args: [],
    );
  }

  /// `Pool No.`
  String get poolNo {
    return Intl.message(
      'Pool No.',
      name: 'poolNo',
      desc: '',
      args: [],
    );
  }

  /// `The price of tickets in the pool should be lower than price of the next pool`
  String get poolPriceHigherThanNextPool {
    return Intl.message(
      'The price of tickets in the pool should be lower than price of the next pool',
      name: 'poolPriceHigherThanNextPool',
      desc: '',
      args: [],
    );
  }

  /// `The price of tickets in the pool should be higher than the highest price of the previous pools`
  String get poolPriceLowerThanPreviousPools {
    return Intl.message(
      'The price of tickets in the pool should be higher than the highest price of the previous pools',
      name: 'poolPriceLowerThanPreviousPools',
      desc: '',
      args: [],
    );
  }

  /// `Postpone`
  String get postpone {
    return Intl.message(
      'Postpone',
      name: 'postpone',
      desc: '',
      args: [],
    );
  }

  /// `Postponed`
  String get postponed {
    return Intl.message(
      'Postponed',
      name: 'postponed',
      desc: '',
      args: [],
    );
  }

  /// `The maximum start date time is 150 days from original start date`
  String get postponeDateTooLate {
    return Intl.message(
      'The maximum start date time is 150 days from original start date',
      name: 'postponeDateTooLate',
      desc: '',
      args: [],
    );
  }

  /// `Postpone event`
  String get postponeEvent {
    return Intl.message(
      'Postpone event',
      name: 'postponeEvent',
      desc: '',
      args: [],
    );
  }

  /// `Time to postpone the event has expired`
  String get postponeTimeExpired {
    return Intl.message(
      'Time to postpone the event has expired',
      name: 'postponeTimeExpired',
      desc: '',
      args: [],
    );
  }

  /// `The minimum time by which an event can be postponed is 24 hours`
  String get postponeTimeTooShort {
    return Intl.message(
      'The minimum time by which an event can be postponed is 24 hours',
      name: 'postponeTimeTooShort',
      desc: '',
      args: [],
    );
  }

  /// `The previous ticket pool is available again!`
  String get previousTicketPoolAvailable {
    return Intl.message(
      'The previous ticket pool is available again!',
      name: 'previousTicketPoolAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `The price cannot be changed after the sale of tickets has started`
  String get priceChangedAfterTicketWasSold {
    return Intl.message(
      'The price cannot be changed after the sale of tickets has started',
      name: 'priceChangedAfterTicketWasSold',
      desc: '',
      args: [],
    );
  }

  /// `Price range`
  String get priceRange {
    return Intl.message(
      'Price range',
      name: 'priceRange',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to checkout`
  String get proceedToCheckout {
    return Intl.message(
      'Proceed to checkout',
      name: 'proceedToCheckout',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to pay`
  String get proceedToPay {
    return Intl.message(
      'Proceed to pay',
      name: 'proceedToPay',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Promotion code has expired`
  String get promotionCodeHasExpired {
    return Intl.message(
      'Promotion code has expired',
      name: 'promotionCodeHasExpired',
      desc: '',
      args: [],
    );
  }

  /// `Number of tickets in the pool cannot be changed below the number of tickets sold`
  String get quantityChangedToLessThanTicketsSold {
    return Intl.message(
      'Number of tickets in the pool cannot be changed below the number of tickets sold',
      name: 'quantityChangedToLessThanTicketsSold',
      desc: '',
      args: [],
    );
  }

  /// `The maximum number of tickets is 100000`
  String get quantityTooHigh {
    return Intl.message(
      'The maximum number of tickets is 100000',
      name: 'quantityTooHigh',
      desc: '',
      args: [],
    );
  }

  /// `The minimum number of tickets is 1`
  String get quantityTooLow {
    return Intl.message(
      'The minimum number of tickets is 1',
      name: 'quantityTooLow',
      desc: '',
      args: [],
    );
  }

  /// `Error while adding review to event`
  String get rateAddingError {
    return Intl.message(
      'Error while adding review to event',
      name: 'rateAddingError',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rateButtonTitle {
    return Intl.message(
      'Rate',
      name: 'rateButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Rate the event`
  String get rateEvent {
    return Intl.message(
      'Rate the event',
      name: 'rateEvent',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get rateUs {
    return Intl.message(
      'Rate us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Collect rewards`
  String get receiveRewards {
    return Intl.message(
      'Collect rewards',
      name: 'receiveRewards',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Required number of entries`
  String get requiredNumberOfEntries {
    return Intl.message(
      'Required number of entries',
      name: 'requiredNumberOfEntries',
      desc: '',
      args: [],
    );
  }

  /// `Reset filters`
  String get resetFilters {
    return Intl.message(
      'Reset filters',
      name: 'resetFilters',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPassword {
    return Intl.message(
      'Reset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset selected date`
  String get resetSelectedDate {
    return Intl.message(
      'Reset selected date',
      name: 'resetSelectedDate',
      desc: '',
      args: [],
    );
  }

  /// `Retry Connection`
  String get retryConnection {
    return Intl.message(
      'Retry Connection',
      name: 'retryConnection',
      desc: '',
      args: [],
    );
  }

  /// `Returned`
  String get returned {
    return Intl.message(
      'Returned',
      name: 'returned',
      desc: '',
      args: [],
    );
  }

  /// `Return ticket`
  String get returnTicket {
    return Intl.message(
      'Return ticket',
      name: 'returnTicket',
      desc: '',
      args: [],
    );
  }

  /// `Time for a return is over`
  String get returnTimeIsOver {
    return Intl.message(
      'Time for a return is over',
      name: 'returnTimeIsOver',
      desc: '',
      args: [],
    );
  }

  /// `Revenue`
  String get revenue {
    return Intl.message(
      'Revenue',
      name: 'revenue',
      desc: '',
      args: [],
    );
  }

  /// `Review added`
  String get reviewAdded {
    return Intl.message(
      'Review added',
      name: 'reviewAdded',
      desc: '',
      args: [],
    );
  }

  /// `You have already reported this opinion`
  String get reviewAlreadyReported {
    return Intl.message(
      'You have already reported this opinion',
      name: 'reviewAlreadyReported',
      desc: '',
      args: [],
    );
  }

  /// `Opinions average`
  String get reviewAvg {
    return Intl.message(
      'Opinions average',
      name: 'reviewAvg',
      desc: '',
      args: [],
    );
  }

  /// `Your review`
  String get reviewContent {
    return Intl.message(
      'Your review',
      name: 'reviewContent',
      desc: '',
      args: [],
    );
  }

  /// `Review content may contain up to 1000 characters`
  String get reviewContentTooLong {
    return Intl.message(
      'Review content may contain up to 1000 characters',
      name: 'reviewContentTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Error while loading review`
  String get reviewLoadError {
    return Intl.message(
      'Error while loading review',
      name: 'reviewLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Error loading review form`
  String get reviewLoadingFormFailure {
    return Intl.message(
      'Error loading review form',
      name: 'reviewLoadingFormFailure',
      desc: '',
      args: [],
    );
  }

  /// `Opinion reported successfully`
  String get reviewReportedSuccessfully {
    return Intl.message(
      'Opinion reported successfully',
      name: 'reviewReportedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Opinions quantity`
  String get reviewsQuantity {
    return Intl.message(
      'Opinions quantity',
      name: 'reviewsQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Reward added successfully`
  String get rewardAddedSuccessfully {
    return Intl.message(
      'Reward added successfully',
      name: 'rewardAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Description may contain up to 100 characters`
  String get rewardDescTooLong {
    return Intl.message(
      'Description may contain up to 100 characters',
      name: 'rewardDescTooLong',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No rewards} one{Reward} other{Rewards}}`
  String rewards(num count) {
    return Intl.plural(
      count,
      zero: 'No rewards',
      one: 'Reward',
      other: 'Rewards',
      name: 'rewards',
      desc: '',
      args: [count],
    );
  }

  /// `Reward updated successfully`
  String get rewardUpdatedSuccessfully {
    return Intl.message(
      'Reward updated successfully',
      name: 'rewardUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Sales`
  String get sales {
    return Intl.message(
      'Sales',
      name: 'sales',
      desc: '',
      args: [],
    );
  }

  /// `Scan another ticket`
  String get scanAnotherTicket {
    return Intl.message(
      'Scan another ticket',
      name: 'scanAnotherTicket',
      desc: '',
      args: [],
    );
  }

  /// `Scanner`
  String get scanner {
    return Intl.message(
      'Scanner',
      name: 'scanner',
      desc: '',
      args: [],
    );
  }

  /// `Scan ticket`
  String get scanTicket {
    return Intl.message(
      'Scan ticket',
      name: 'scanTicket',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Select country`
  String get selectCountry {
    return Intl.message(
      'Select country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `Select discount`
  String get selectDiscount {
    return Intl.message(
      'Select discount',
      name: 'selectDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Please select dress code`
  String get selectDressCode {
    return Intl.message(
      'Please select dress code',
      name: 'selectDressCode',
      desc: '',
      args: [],
    );
  }

  /// `Select event photo`
  String get selectEventPhoto {
    return Intl.message(
      'Select event photo',
      name: 'selectEventPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Please select minumum age`
  String get selectMinAge {
    return Intl.message(
      'Please select minumum age',
      name: 'selectMinAge',
      desc: '',
      args: [],
    );
  }

  /// `Please select musical genres`
  String get selectMusicalGenres {
    return Intl.message(
      'Please select musical genres',
      name: 'selectMusicalGenres',
      desc: '',
      args: [],
    );
  }

  /// `Select the number of stars`
  String get selectNumberOfStars {
    return Intl.message(
      'Select the number of stars',
      name: 'selectNumberOfStars',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No selectors} one{Selector} other{Selectors}}`
  String selectors(num count) {
    return Intl.plural(
      count,
      zero: 'No selectors',
      one: 'Selector',
      other: 'Selectors',
      name: 'selectors',
      desc: '',
      args: [count],
    );
  }

  /// `Send password reset link`
  String get sendPasswordResetLink {
    return Intl.message(
      'Send password reset link',
      name: 'sendPasswordResetLink',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error has occurred, we have been notified of it and we will try to fix it as soon as possible. Try again or restart the application.`
  String get serverError {
    return Intl.message(
      'An unexpected error has occurred, we have been notified of it and we will try to fix it as soon as possible. Try again or restart the application.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Service fee`
  String get serviceFee {
    return Intl.message(
      'Service fee',
      name: 'serviceFee',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Set your username`
  String get setYourUsername {
    return Intl.message(
      'Set your username',
      name: 'setYourUsername',
      desc: '',
      args: [],
    );
  }

  /// `Show ticket`
  String get showTicket {
    return Intl.message(
      'Show ticket',
      name: 'showTicket',
      desc: '',
      args: [],
    );
  }

  /// `Show ticket QR code`
  String get showTicketQrCode {
    return Intl.message(
      'Show ticket QR code',
      name: 'showTicketQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Skip the line`
  String get skipTheLine {
    return Intl.message(
      'Skip the line',
      name: 'skipTheLine',
      desc: '',
      args: [],
    );
  }

  /// `Social media`
  String get socialMedia {
    return Intl.message(
      'Social media',
      name: 'socialMedia',
      desc: '',
      args: [],
    );
  }

  /// `Sold`
  String get sold {
    return Intl.message(
      'Sold',
      name: 'sold',
      desc: '',
      args: [],
    );
  }

  /// `Sold out`
  String get soldOut {
    return Intl.message(
      'Sold out',
      name: 'soldOut',
      desc: '',
      args: [],
    );
  }

  /// `Sport`
  String get sport {
    return Intl.message(
      'Sport',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `Start!`
  String get start {
    return Intl.message(
      'Start!',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Start date`
  String get startDate {
    return Intl.message(
      'Start date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `The start date cannot be before the current date`
  String get startDateBeforeNow {
    return Intl.message(
      'The start date cannot be before the current date',
      name: 'startDateBeforeNow',
      desc: '',
      args: [],
    );
  }

  /// `The maximum start date time is 150 days from today`
  String get startDateTooLate {
    return Intl.message(
      'The maximum start date time is 150 days from today',
      name: 'startDateTooLate',
      desc: '',
      args: [],
    );
  }

  /// `Start scanning`
  String get startScanning {
    return Intl.message(
      'Start scanning',
      name: 'startScanning',
      desc: '',
      args: [],
    );
  }

  /// `Start searching...`
  String get startSearching {
    return Intl.message(
      'Start searching...',
      name: 'startSearching',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Stay updated`
  String get stayUpdated {
    return Intl.message(
      'Stay updated',
      name: 'stayUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Ticket already has VIP status`
  String get ticketAlreadyHasVipStatus {
    return Intl.message(
      'Ticket already has VIP status',
      name: 'ticketAlreadyHasVipStatus',
      desc: '',
      args: [],
    );
  }

  /// `Ticket expired`
  String get ticketExpired {
    return Intl.message(
      'Ticket expired',
      name: 'ticketExpired',
      desc: '',
      args: [],
    );
  }

  /// `Ticket is for another event`
  String get ticketForAnotherEvent {
    return Intl.message(
      'Ticket is for another event',
      name: 'ticketForAnotherEvent',
      desc: '',
      args: [],
    );
  }

  /// `Ticket pool has been added successfully`
  String get ticketPoolHasBeenAddedSuccessfully {
    return Intl.message(
      'Ticket pool has been added successfully',
      name: 'ticketPoolHasBeenAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Ticket pool has been deleted successfully`
  String get ticketPoolHasBeenDeletedSuccessfully {
    return Intl.message(
      'Ticket pool has been deleted successfully',
      name: 'ticketPoolHasBeenDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Ticket pool has been updated successfully`
  String get ticketPoolHasBeenUpdatedSuccessfully {
    return Intl.message(
      'Ticket pool has been updated successfully',
      name: 'ticketPoolHasBeenUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Ticket pool has sold out!`
  String get ticketPoolHasSoldOut {
    return Intl.message(
      'Ticket pool has sold out!',
      name: 'ticketPoolHasSoldOut',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Pools`
  String get ticketPools {
    return Intl.message(
      'Ticket Pools',
      name: 'ticketPools',
      desc: '',
      args: [],
    );
  }

  /// `Ticket price`
  String get ticketPrice {
    return Intl.message(
      'Ticket price',
      name: 'ticketPrice',
      desc: '',
      args: [],
    );
  }

  /// `Ticket price has changed`
  String get ticketPriceHasChanged {
    return Intl.message(
      'Ticket price has changed',
      name: 'ticketPriceHasChanged',
      desc: '',
      args: [],
    );
  }

  /// `The maximum ticket price is`
  String get ticketPriceTooHigh {
    return Intl.message(
      'The maximum ticket price is',
      name: 'ticketPriceTooHigh',
      desc: '',
      args: [],
    );
  }

  /// `The minimum ticket price is`
  String get ticketPriceTooLow {
    return Intl.message(
      'The minimum ticket price is',
      name: 'ticketPriceTooLow',
      desc: '',
      args: [],
    );
  }

  /// `Ticket has been returned`
  String get ticketReturned {
    return Intl.message(
      'Ticket has been returned',
      name: 'ticketReturned',
      desc: '',
      args: [],
    );
  }

  /// `Ticket returned successfully`
  String get ticketReturnedSuccessfully {
    return Intl.message(
      'Ticket returned successfully',
      name: 'ticketReturnedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{No tickets} one{Ticket} other{Tickets}}`
  String tickets(num count) {
    return Intl.plural(
      count,
      zero: 'No tickets',
      one: 'Ticket',
      other: 'Tickets',
      name: 'tickets',
      desc: '',
      args: [count],
    );
  }

  /// `Ticket scanned`
  String get ticketScanned {
    return Intl.message(
      'Ticket scanned',
      name: 'ticketScanned',
      desc: '',
      args: [],
    );
  }

  /// `Tickets sold`
  String get ticketsSold {
    return Intl.message(
      'Tickets sold',
      name: 'ticketsSold',
      desc: '',
      args: [],
    );
  }

  /// `TikTok`
  String get tikTok {
    return Intl.message(
      'TikTok',
      name: 'tikTok',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Tonight`
  String get tonight {
    return Intl.message(
      'Tonight',
      name: 'tonight',
      desc: '',
      args: [],
    );
  }

  /// `Tonight Partners`
  String get tonightPartners {
    return Intl.message(
      'Tonight Partners',
      name: 'tonightPartners',
      desc: '',
      args: [],
    );
  }

  /// `Tonight Scanner`
  String get tonightScanner {
    return Intl.message(
      'Tonight Scanner',
      name: 'tonightScanner',
      desc: '',
      args: [],
    );
  }

  /// `The maximum number of required entries is 1000`
  String get tooMuchRequiredEntries {
    return Intl.message(
      'The maximum number of required entries is 1000',
      name: 'tooMuchRequiredEntries',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Total revenue`
  String get totalRevenue {
    return Intl.message(
      'Total revenue',
      name: 'totalRevenue',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the event, club or artist`
  String get typeEventClubOrArtistName {
    return Intl.message(
      'Enter the name of the event, club or artist',
      name: 'typeEventClubOrArtistName',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error`
  String get unexpectedError {
    return Intl.message(
      'Unexpected error',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming and live`
  String get upcomingAndLive {
    return Intl.message(
      'Upcoming and live',
      name: 'upcomingAndLive',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming events`
  String get upcomingEvents {
    return Intl.message(
      'Upcoming events',
      name: 'upcomingEvents',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade your ticket to VIP and skip the line to the club`
  String get upgradeTicketToVipAndEnterClub {
    return Intl.message(
      'Upgrade your ticket to VIP and skip the line to the club',
      name: 'upgradeTicketToVipAndEnterClub',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade to VIP`
  String get upgradeToVip {
    return Intl.message(
      'Upgrade to VIP',
      name: 'upgradeToVip',
      desc: '',
      args: [],
    );
  }

  /// `URL links`
  String get urlLinks {
    return Intl.message(
      'URL links',
      name: 'urlLinks',
      desc: '',
      args: [],
    );
  }

  /// `This account has been disabled`
  String get userDisabled {
    return Intl.message(
      'This account has been disabled',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Username already in use`
  String get usernameAlreadyInUse {
    return Intl.message(
      'Username already in use',
      name: 'usernameAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Username cannot contain special characters`
  String get usernameContainsSpecialCharacters {
    return Intl.message(
      'Username cannot contain special characters',
      name: 'usernameContainsSpecialCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Username should contain up to 20 characters`
  String get usernameTooLong {
    return Intl.message(
      'Username should contain up to 20 characters',
      name: 'usernameTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Username should contain at least 3 characters`
  String get usernameTooShort {
    return Intl.message(
      'Username should contain at least 3 characters',
      name: 'usernameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Username has been updated!`
  String get usernameUpdatedMessage {
    return Intl.message(
      'Username has been updated!',
      name: 'usernameUpdatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Email not found, please create an account`
  String get userNotFound {
    return Intl.message(
      'Email not found, please create an account',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Valid ticket`
  String get validTicket {
    return Intl.message(
      'Valid ticket',
      name: 'validTicket',
      desc: '',
      args: [],
    );
  }

  /// `VAT number`
  String get vatNumber {
    return Intl.message(
      'VAT number',
      name: 'vatNumber',
      desc: '',
      args: [],
    );
  }

  /// `A verification link has been sent to the e-mail address provided, it must be confirmed using the email in the phone`
  String get verificationLinkSent {
    return Intl.message(
      'A verification link has been sent to the e-mail address provided, it must be confirmed using the email in the phone',
      name: 'verificationLinkSent',
      desc: '',
      args: [],
    );
  }

  /// `VIP`
  String get vip {
    return Intl.message(
      'VIP',
      name: 'vip',
      desc: '',
      args: [],
    );
  }

  /// `VIP is available again!`
  String get vipAvailableAgain {
    return Intl.message(
      'VIP is available again!',
      name: 'vipAvailableAgain',
      desc: '',
      args: [],
    );
  }

  /// `VIP ticket allows to skip the line to the club`
  String get vipInfo {
    return Intl.message(
      'VIP ticket allows to skip the line to the club',
      name: 'vipInfo',
      desc: '',
      args: [],
    );
  }

  /// `VIP no longer available`
  String get vipNoLongerAvailable {
    return Intl.message(
      'VIP no longer available',
      name: 'vipNoLongerAvailable',
      desc: '',
      args: [],
    );
  }

  /// `VIP price`
  String get vipPrice {
    return Intl.message(
      'VIP price',
      name: 'vipPrice',
      desc: '',
      args: [],
    );
  }

  /// `VIP price has changed`
  String get vipPriceHasChanged {
    return Intl.message(
      'VIP price has changed',
      name: 'vipPriceHasChanged',
      desc: '',
      args: [],
    );
  }

  /// `The maximum VIP price is`
  String get vipPriceTooHigh {
    return Intl.message(
      'The maximum VIP price is',
      name: 'vipPriceTooHigh',
      desc: '',
      args: [],
    );
  }

  /// `The minimum VIP price is`
  String get vipPriceTooLow {
    return Intl.message(
      'The minimum VIP price is',
      name: 'vipPriceTooLow',
      desc: '',
      args: [],
    );
  }

  /// `VIPs`
  String get vips {
    return Intl.message(
      'VIPs',
      name: 'vips',
      desc: '',
      args: [],
    );
  }

  /// `VIPs sold`
  String get vipsSold {
    return Intl.message(
      'VIPs sold',
      name: 'vipsSold',
      desc: '',
      args: [],
    );
  }

  /// `VIP, valid ticket`
  String get vipValidTicket {
    return Intl.message(
      'VIP, valid ticket',
      name: 'vipValidTicket',
      desc: '',
      args: [],
    );
  }

  /// `V\nI\nP`
  String get vipVertical {
    return Intl.message(
      'V\nI\nP',
      name: 'vipVertical',
      desc: '',
      args: [],
    );
  }

  /// `Password is too weak`
  String get weakPassword {
    return Intl.message(
      'Password is too weak',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Tonight!`
  String get welcomeToTonight {
    return Intl.message(
      'Welcome to Tonight!',
      name: 'welcomeToTonight',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Your number of entries`
  String get yourNumberOfEntries {
    return Intl.message(
      'Your number of entries',
      name: 'yourNumberOfEntries',
      desc: '',
      args: [],
    );
  }

  /// `Your opinion`
  String get yourOpinion {
    return Intl.message(
      'Your opinion',
      name: 'yourOpinion',
      desc: '',
      args: [],
    );
  }

  /// `Your rate`
  String get yourRate {
    return Intl.message(
      'Your rate',
      name: 'yourRate',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
