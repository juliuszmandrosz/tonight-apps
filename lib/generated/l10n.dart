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

  /// `Add event`
  String get addEvent {
    return Intl.message(
      'Add event',
      name: 'addEvent',
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

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
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

  /// `Change Password`
  String get changePasswordTitle {
    return Intl.message(
      'Change Password',
      name: 'changePasswordTitle',
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

  /// `Edit reward`
  String get editReward {
    return Intl.message(
      'Edit reward',
      name: 'editReward',
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

  /// `Please enter link to dj channel`
  String get enterDjChannelUrl {
    return Intl.message(
      'Please enter link to dj channel',
      name: 'enterDjChannelUrl',
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

  /// `Please enter link to Youtube`
  String get enterYoutubeLink {
    return Intl.message(
      'Please enter link to Youtube',
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

  /// `Event details`
  String get eventDetails {
    return Intl.message(
      'Event details',
      name: 'eventDetails',
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

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
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

  /// `Invalid URL format`
  String get invalidUrl {
    return Intl.message(
      'Invalid URL format',
      name: 'invalidUrl',
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

  /// `Name can contain up to 50 characters`
  String get nameTooLong {
    return Intl.message(
      'Name can contain up to 50 characters',
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

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Firstly lets set your username`
  String get onboardingWelcomeSubtitle {
    return Intl.message(
      'Firstly lets set your username',
      name: 'onboardingWelcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome on board!`
  String get onboardingWelcomeTitle {
    return Intl.message(
      'Welcome on board!',
      name: 'onboardingWelcomeTitle',
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

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
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

  /// `The minimum ticket price is 20 PLN`
  String get priceTooLow {
    return Intl.message(
      'The minimum ticket price is 20 PLN',
      name: 'priceTooLow',
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

  /// `Rate us`
  String get rateUs {
    return Intl.message(
      'Rate us',
      name: 'rateUs',
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

  /// `Raver Scanner`
  String get raverScanner {
    return Intl.message(
      'Raver Scanner',
      name: 'raverScanner',
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

  /// `Reward added successfully`
  String get rewardAddedSuccessfully {
    return Intl.message(
      'Reward added successfully',
      name: 'rewardAddedSuccessfully',
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

  /// `Please select dress code`
  String get selectDressCode {
    return Intl.message(
      'Please select dress code',
      name: 'selectDressCode',
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

  /// `Start date`
  String get startDate {
    return Intl.message(
      'Start date',
      name: 'startDate',
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

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
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

  /// `TikTok`
  String get tikTok {
    return Intl.message(
      'TikTok',
      name: 'tikTok',
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

  /// `Update username`
  String get updateUsernameTitle {
    return Intl.message(
      'Update username',
      name: 'updateUsernameTitle',
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

  /// `Username is too long, use max 20 characters`
  String get usernameTooLong {
    return Intl.message(
      'Username is too long, use max 20 characters',
      name: 'usernameTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Username is too short`
  String get usernameTooShort {
    return Intl.message(
      'Username is too short',
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

  /// `A verification link has been sent to the e-mail address provided`
  String get verificationLinkSent {
    return Intl.message(
      'A verification link has been sent to the e-mail address provided',
      name: 'verificationLinkSent',
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
