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

  /// `An account already exists for that email`
  String get accountExists {
    return Intl.message(
      'An account already exists for that email',
      name: 'accountExists',
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

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
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

  /// `Buy ticket`
  String get buyTicket {
    return Intl.message(
      'Buy ticket',
      name: 'buyTicket',
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

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
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

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Dj channel`
  String get djChannel {
    return Intl.message(
      'Dj channel',
      name: 'djChannel',
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

  /// `Enable location`
  String get enableLocation {
    return Intl.message(
      'Enable location',
      name: 'enableLocation',
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

  /// `Please enter a password`
  String get enterPassword {
    return Intl.message(
      'Please enter a password',
      name: 'enterPassword',
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

  /// `Raver passed out!`
  String get errorDialogTitle {
    return Intl.message(
      'Raver passed out!',
      name: 'errorDialogTitle',
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

  /// `Event details`
  String get eventDetails {
    return Intl.message(
      'Event details',
      name: 'eventDetails',
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

  /// `Exit`
  String get exitButtonTitle {
    return Intl.message(
      'Exit',
      name: 'exitButtonTitle',
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

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
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

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
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

  /// `Is concert`
  String get isConcert {
    return Intl.message(
      'Is concert',
      name: 'isConcert',
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

  /// `Milestones`
  String get milestones {
    return Intl.message(
      'Milestones',
      name: 'milestones',
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

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
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

  /// `No events near you`
  String get noEventsNearYou {
    return Intl.message(
      'No events near you',
      name: 'noEventsNearYou',
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

  /// `Price range`
  String get priceRange {
    return Intl.message(
      'Price range',
      name: 'priceRange',
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

  /// `Raver`
  String get raver {
    return Intl.message(
      'Raver',
      name: 'raver',
      desc: '',
      args: [],
    );
  }

  /// `Raver Partners`
  String get raverPartners {
    return Intl.message(
      'Raver Partners',
      name: 'raverPartners',
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

  /// `Send password reset link`
  String get sendPasswordResetLink {
    return Intl.message(
      'Send password reset link',
      name: 'sendPasswordResetLink',
      desc: '',
      args: [],
    );
  }

  /// `Server error`
  String get serverError {
    return Intl.message(
      'Server error',
      name: 'serverError',
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

  /// `Show ticket`
  String get showTicket {
    return Intl.message(
      'Show ticket',
      name: 'showTicket',
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

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
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

  /// `Sport`
  String get sport {
    return Intl.message(
      'Sport',
      name: 'sport',
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

  /// `Upcoming events`
  String get upcomingEvents {
    return Intl.message(
      'Upcoming events',
      name: 'upcomingEvents',
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

  /// `Email not found, please create an account`
  String get userNotFound {
    return Intl.message(
      'Email not found, please create an account',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `A verification link has been sent to the e-mail address provided`
  String get verificationLinkSent {
    return Intl.message(
      'A verification link has been sent to the e-mail address provided',
      name: 'verificationLinkSent',
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
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
