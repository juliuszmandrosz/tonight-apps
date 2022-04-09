// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'Attending', one: 'Attending', other: 'Attending')}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'No clubs', one: 'Club', other: 'Clubs')}";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'entries', one: 'entry', other: 'entries')}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'No events', one: 'Event', other: 'Events')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Opinions', one: 'Opinion', other: 'Opinions')}";

  static String m5(count) =>
      "${Intl.plural(count, zero: 'No photos', one: 'Photo', other: 'Photos')}";

  static String m6(count) =>
      "${Intl.plural(count, zero: 'No rewards', one: 'Reward', other: 'Rewards')}";

  static String m7(count) =>
      "${Intl.plural(count, zero: 'No tickets', one: 'Ticket', other: 'Tickets')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("About us"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "An account already exists for that email"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account settings"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Add event"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Add promotion code"),
        "addReward": MessageLookupByLibrary.simpleMessage("Add reward"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Additional info"),
        "age": MessageLookupByLibrary.simpleMessage("Age"),
        "appVersion": MessageLookupByLibrary.simpleMessage("App version"),
        "appliedPromotionCode":
            MessageLookupByLibrary.simpleMessage("Applied promotion code"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "applyFilters": MessageLookupByLibrary.simpleMessage("Apply filters"),
        "applySelectedDate":
            MessageLookupByLibrary.simpleMessage("Apply selected date"),
        "artistName": MessageLookupByLibrary.simpleMessage("Artist name"),
        "attending": m0,
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "backToEventList":
            MessageLookupByLibrary.simpleMessage("Back to event list"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Back to summary"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Buy ticket"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cancelledByUser":
            MessageLookupByLibrary.simpleMessage("Operation cancelled by user"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clubs": m1,
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Concert information"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Date and time"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Description may contain up to 1000 characters"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "djChannel": MessageLookupByLibrary.simpleMessage("Dj channel"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Email already in use"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Enable location"),
        "endDate": MessageLookupByLibrary.simpleMessage("End date"),
        "endDateBeforeStart": MessageLookupByLibrary.simpleMessage(
            "The end date cannot be before the start date"),
        "enterArtistName":
            MessageLookupByLibrary.simpleMessage("Please enter artist name"),
        "enterDesc":
            MessageLookupByLibrary.simpleMessage("Please enter description"),
        "enterDjChannelUrl": MessageLookupByLibrary.simpleMessage(
            "Please enter link to dj channel"),
        "enterEmail": MessageLookupByLibrary.simpleMessage(
            "Please enter your e-mail address"),
        "enterEndDateTime":
            MessageLookupByLibrary.simpleMessage("Please enter end date time"),
        "enterEventName":
            MessageLookupByLibrary.simpleMessage("Please enter event name"),
        "enterFacebookLink": MessageLookupByLibrary.simpleMessage(
            "Please enter link to Facebook"),
        "enterFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Please enter link to Facebook event"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Please enter a password"),
        "enterPrice":
            MessageLookupByLibrary.simpleMessage("Please give the price"),
        "enterRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Please enter required number of entries"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Please enter start date time"),
        "enterValidEmail":
            MessageLookupByLibrary.simpleMessage("Enter valid email address"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Please enter link to Youtube"),
        "entries": m2,
        "errorAddingEvent":
            MessageLookupByLibrary.simpleMessage("Error adding event"),
        "errorAddingReward":
            MessageLookupByLibrary.simpleMessage("Error adding reward"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Error while changing event status"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection"),
        "errorDialogTitle":
            MessageLookupByLibrary.simpleMessage("Raver passed out!"),
        "errorLoadingClubs":
            MessageLookupByLibrary.simpleMessage("Error loading clubs"),
        "errorLoadingEventDetails":
            MessageLookupByLibrary.simpleMessage("Error loading event details"),
        "errorLoadingEvents":
            MessageLookupByLibrary.simpleMessage("Error loading events"),
        "errorLoadingFavoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Error loading information about favorite events"),
        "errorLoadingFilters":
            MessageLookupByLibrary.simpleMessage("Error loading filters"),
        "errorLoadingPhotos":
            MessageLookupByLibrary.simpleMessage("Error loading photos"),
        "errorLoadingProfile": MessageLookupByLibrary.simpleMessage(
            "Error while loading profile info"),
        "errorLoadingRewards":
            MessageLookupByLibrary.simpleMessage("Error loading rewards"),
        "errorLoadingTickets":
            MessageLookupByLibrary.simpleMessage("Error loading tickets"),
        "errorMakingCall":
            MessageLookupByLibrary.simpleMessage("Error making a call"),
        "errorOpeningLink":
            MessageLookupByLibrary.simpleMessage("Error opening link"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Error opening maps"),
        "eventAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event added successfully"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event details"),
        "eventName": MessageLookupByLibrary.simpleMessage("Event name"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "The event should last at least one hour"),
        "events": m3,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Exit"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent": MessageLookupByLibrary.simpleMessage("Facebook event"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "findByCity": MessageLookupByLibrary.simpleMessage("City"),
        "findByMaxDistance":
            MessageLookupByLibrary.simpleMessage("Maximum distance"),
        "findEventPlaceBy":
            MessageLookupByLibrary.simpleMessage("Find event place by"),
        "findInMap": MessageLookupByLibrary.simpleMessage("Find in map"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "The credential received are invalid or has expired"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Invalid email format"),
        "invalidEvent": MessageLookupByLibrary.simpleMessage(
            "The event has been deleted by the club"),
        "invalidPromotionCode":
            MessageLookupByLibrary.simpleMessage("Invalid promotion code"),
        "invalidUrl":
            MessageLookupByLibrary.simpleMessage("Invalid URL format"),
        "invalidVerificationCode":
            MessageLookupByLibrary.simpleMessage("Invalid verification code"),
        "invalidVerificationId":
            MessageLookupByLibrary.simpleMessage("Invalid verification ID"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Is concert"),
        "live": MessageLookupByLibrary.simpleMessage("Live"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "lostNetworkConnectionDescription":
            MessageLookupByLibrary.simpleMessage(
                "Seems you\'ve lost connection to internet"),
        "map": MessageLookupByLibrary.simpleMessage("Map"),
        "maxDistance": MessageLookupByLibrary.simpleMessage("Maximum distance"),
        "maxThreeMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Please select up to 3 musical genres"),
        "milestones": MessageLookupByLibrary.simpleMessage("Milestones"),
        "minAge": MessageLookupByLibrary.simpleMessage("Minimum age"),
        "music": MessageLookupByLibrary.simpleMessage("Music"),
        "musicalGenres": MessageLookupByLibrary.simpleMessage("Musical genres"),
        "nameAndDesc":
            MessageLookupByLibrary.simpleMessage("Name and description"),
        "nameTooLong": MessageLookupByLibrary.simpleMessage(
            "Name can contain up to 50 characters"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Name should be at least 3 characters"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noDressCode": MessageLookupByLibrary.simpleMessage("No dress code"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("No events at this club yet"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("No events near you"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Operation is not allowed"),
        "opinions": m4,
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordDigit": MessageLookupByLibrary.simpleMessage(
            "Password should contain at least one digit"),
        "passwordLowerCase": MessageLookupByLibrary.simpleMessage(
            "Password should contain at least one lower case"),
        "passwordResetLinkSent":
            MessageLookupByLibrary.simpleMessage("Password reset link sent"),
        "passwordSpecialCharacter": MessageLookupByLibrary.simpleMessage(
            "Password should contain at least one special character"),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "Password should be at least 8 characters"),
        "passwordUpperCase": MessageLookupByLibrary.simpleMessage(
            "Password should contain at least one upper case"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "past": MessageLookupByLibrary.simpleMessage("Past"),
        "pastTickets": MessageLookupByLibrary.simpleMessage("Past tickets"),
        "paymentConfirmed":
            MessageLookupByLibrary.simpleMessage("Payment confirmed"),
        "paymentError": MessageLookupByLibrary.simpleMessage(
            "Error during payment, please contact support"),
        "photos": m5,
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Price range"),
        "priceTooLow": MessageLookupByLibrary.simpleMessage(
            "The minimum ticket price is 20 PLN"),
        "proceedToPay": MessageLookupByLibrary.simpleMessage("Proceed to pay"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "promotionCodeHasExpired":
            MessageLookupByLibrary.simpleMessage("Promotion code has expired"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Rate us"),
        "raver": MessageLookupByLibrary.simpleMessage("Raver"),
        "raverPartners": MessageLookupByLibrary.simpleMessage("Raver Partners"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "requiredNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Required number of entries"),
        "resetFilters": MessageLookupByLibrary.simpleMessage("Reset filters"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Reset password"),
        "resetSelectedDate":
            MessageLookupByLibrary.simpleMessage("Reset selected date"),
        "retryConnection":
            MessageLookupByLibrary.simpleMessage("Retry Connection"),
        "rewardAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reward added successfully"),
        "rewards": m6,
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Please select dress code"),
        "selectMinAge":
            MessageLookupByLibrary.simpleMessage("Please select minumum age"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Please select musical genres"),
        "sendPasswordResetLink":
            MessageLookupByLibrary.simpleMessage("Send password reset link"),
        "serverError": MessageLookupByLibrary.simpleMessage("Server error"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Show ticket"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Show ticket QR code"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "socialMedia": MessageLookupByLibrary.simpleMessage("Social media"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start date"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "summary": MessageLookupByLibrary.simpleMessage("Summary"),
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "tickets": m7,
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "The maximum number of required entries is 1000"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Unexpected error"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Upcoming events"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("URL links"),
        "userDisabled": MessageLookupByLibrary.simpleMessage(
            "This account has been disabled"),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Email not found, please create an account"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "A verification link has been sent to the e-mail address provided"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Password is too weak"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Wrong password"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
