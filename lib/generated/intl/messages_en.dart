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
      "${Intl.plural(count, zero: 'No selectors', one: 'Selector', other: 'Selectors')}";

  static String m8(count) =>
      "${Intl.plural(count, zero: 'No tickets', one: 'Ticket', other: 'Tickets')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("About us"),
        "accessCode": MessageLookupByLibrary.simpleMessage("Access code"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "An account already exists for that email"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account settings"),
        "accountSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Account Settings"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addAtLeastOneTicketPool": MessageLookupByLibrary.simpleMessage(
            "At least one pool of tickets must be added"),
        "addDescription":
            MessageLookupByLibrary.simpleMessage("Add description"),
        "addDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Add link to DJ channel on YouTube"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Add event"),
        "addFacebookUrl":
            MessageLookupByLibrary.simpleMessage("Add Facebook event URL link"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Add promotion code"),
        "addReward": MessageLookupByLibrary.simpleMessage("Add reward"),
        "addTicketPool":
            MessageLookupByLibrary.simpleMessage("Add ticket pool"),
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
        "backToMainMenu":
            MessageLookupByLibrary.simpleMessage("Back to main menu"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Back to summary"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Buy ticket"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cancelledByUser":
            MessageLookupByLibrary.simpleMessage("Operation cancelled by user"),
        "changePasswordTitle":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clubReviewsLoadingError": MessageLookupByLibrary.simpleMessage(
            "Error while loading club reviews"),
        "clubs": m1,
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Concert information"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmDeleteMessage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you wish to delete this item?"),
        "confirmLeavingPage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to exit the current page? Changes will not be saved"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "confirmTicketReturn": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to return the ticket?"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
        "currency": MessageLookupByLibrary.simpleMessage("Currency"),
        "currentPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dark theme"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Date and time"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deletedTicketPoolAfterTicketWasSold":
            MessageLookupByLibrary.simpleMessage(
                "The pool cannot be removed once the sale of tickets has started"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Description may contain up to 1000 characters"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "djYoutubeChannel":
            MessageLookupByLibrary.simpleMessage("DJ YouTube channel"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editDescription":
            MessageLookupByLibrary.simpleMessage("Edit description"),
        "editDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Edit link to Dj channel on Youtube"),
        "editEventName":
            MessageLookupByLibrary.simpleMessage("Edit event name"),
        "editFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Edit Facebook event URL link"),
        "editReward": MessageLookupByLibrary.simpleMessage("Edit reward"),
        "editTicketPool":
            MessageLookupByLibrary.simpleMessage("Edit ticket pool"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Email already in use"),
        "emptyFavoriteClubsMessage": MessageLookupByLibrary.simpleMessage(
            "Your favorite clubs will be shown here"),
        "emptyFavoriteEventsMessage": MessageLookupByLibrary.simpleMessage(
            "Your favorite events will be shown here"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Enable location"),
        "endDate": MessageLookupByLibrary.simpleMessage("End date"),
        "endDateBeforeStart": MessageLookupByLibrary.simpleMessage(
            "The end date cannot be before the start date"),
        "enterAccessCode":
            MessageLookupByLibrary.simpleMessage("Please enter access code"),
        "enterArtistName":
            MessageLookupByLibrary.simpleMessage("Please enter artist name"),
        "enterDesc":
            MessageLookupByLibrary.simpleMessage("Please enter description"),
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
        "enterQuantity":
            MessageLookupByLibrary.simpleMessage("Please enter quantity"),
        "enterRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Please enter required number of entries"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Please enter start date time"),
        "enterUsername":
            MessageLookupByLibrary.simpleMessage("Please enter a username"),
        "enterValidEmail":
            MessageLookupByLibrary.simpleMessage("Enter valid email address"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Please enter link to YouTube"),
        "entries": m2,
        "entry": MessageLookupByLibrary.simpleMessage("Entry"),
        "errorAddingEvent":
            MessageLookupByLibrary.simpleMessage("Error adding event"),
        "errorAddingReward":
            MessageLookupByLibrary.simpleMessage("Error adding reward"),
        "errorChangingClubStatus": MessageLookupByLibrary.simpleMessage(
            "Error while changing club status"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Error while changing event status"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection"),
        "errorDeletingReward":
            MessageLookupByLibrary.simpleMessage("Error deleting reward"),
        "errorDeletingSelector":
            MessageLookupByLibrary.simpleMessage("Error deleting selector"),
        "errorDialogTitle":
            MessageLookupByLibrary.simpleMessage("Raver passed out!"),
        "errorLoadingClubs":
            MessageLookupByLibrary.simpleMessage("Error loading clubs"),
        "errorLoadingEventDetails":
            MessageLookupByLibrary.simpleMessage("Error loading event details"),
        "errorLoadingEvents":
            MessageLookupByLibrary.simpleMessage("Error loading events"),
        "errorLoadingFavoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Error loading information about favorite clubs"),
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
        "errorLoadingSelectors":
            MessageLookupByLibrary.simpleMessage("Error loading selectors"),
        "errorLoadingTickets":
            MessageLookupByLibrary.simpleMessage("Error loading tickets"),
        "errorMakingCall":
            MessageLookupByLibrary.simpleMessage("Error making a call"),
        "errorOpeningLink":
            MessageLookupByLibrary.simpleMessage("Error opening link"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Error opening maps"),
        "errorUpdatingEvent":
            MessageLookupByLibrary.simpleMessage("Error updating event"),
        "errorUpdatingReward":
            MessageLookupByLibrary.simpleMessage("Error updating reward"),
        "eventAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event added successfully"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event details"),
        "eventDurationTooLong": MessageLookupByLibrary.simpleMessage(
            "The event may last a maximum of 24 hours"),
        "eventExistsInDateRange": MessageLookupByLibrary.simpleMessage(
            "An event already exists in the given date range"),
        "eventName": MessageLookupByLibrary.simpleMessage("Event name"),
        "eventOverview": MessageLookupByLibrary.simpleMessage("Event overview"),
        "eventRevenue": MessageLookupByLibrary.simpleMessage("Event revenue"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "The event should last at least one hour"),
        "events": m3,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Exit"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent": MessageLookupByLibrary.simpleMessage("Facebook event"),
        "favoriteClubs": MessageLookupByLibrary.simpleMessage("Favorite clubs"),
        "favoriteEvents":
            MessageLookupByLibrary.simpleMessage("Favorite events"),
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
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "generateAccessCode":
            MessageLookupByLibrary.simpleMessage("Generate access code"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "income": MessageLookupByLibrary.simpleMessage("Income"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidAccessCode": MessageLookupByLibrary.simpleMessage(
            "Access code is invalid or has expired"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "The credential received are invalid or has expired"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Invalid email format"),
        "invalidEvent": MessageLookupByLibrary.simpleMessage(
            "The event has been deleted by the club"),
        "invalidPromotionCode":
            MessageLookupByLibrary.simpleMessage("Invalid promotion code"),
        "invalidQrCode":
            MessageLookupByLibrary.simpleMessage("Invalid QR code"),
        "invalidUrl":
            MessageLookupByLibrary.simpleMessage("Invalid URL format"),
        "invalidVerificationCode":
            MessageLookupByLibrary.simpleMessage("Invalid verification code"),
        "invalidVerificationId":
            MessageLookupByLibrary.simpleMessage("Invalid verification ID"),
        "inviteSelector":
            MessageLookupByLibrary.simpleMessage("Invite selector"),
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
        "nameCannotContainSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Name cannot contain special characters"),
        "nameTooLong": MessageLookupByLibrary.simpleMessage(
            "Name can contain up to 50 characters"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Name should be at least 3 characters"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAccessToClub": MessageLookupByLibrary.simpleMessage(
            "You have no access to this club"),
        "noDressCode": MessageLookupByLibrary.simpleMessage("No dress code"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("No events at this club yet"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("No events near you"),
        "noLiveEvent":
            MessageLookupByLibrary.simpleMessage("No live event in your club"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "numberOfTickets":
            MessageLookupByLibrary.simpleMessage("Number of tickets"),
        "onboardingWelcomeSubtitle": MessageLookupByLibrary.simpleMessage(
            "Firstly lets set your username"),
        "onboardingWelcomeTitle":
            MessageLookupByLibrary.simpleMessage("Welcome on board!"),
        "oneTimeAccessCode": MessageLookupByLibrary.simpleMessage(
            "One-time access code for selector"),
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
        "passwordUpdatedMessage":
            MessageLookupByLibrary.simpleMessage("Password has been updated!"),
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
        "pool": MessageLookupByLibrary.simpleMessage("Pool"),
        "poolPriceHigherThanNextPool": MessageLookupByLibrary.simpleMessage(
            "The price of tickets in the pool should be lower than price of the next pool"),
        "poolPriceLowerThanPreviousPools": MessageLookupByLibrary.simpleMessage(
            "The price of tickets in the pool should be higher than the highest price of the previous pools"),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "priceChangedAfterTicketWasSold": MessageLookupByLibrary.simpleMessage(
            "The price cannot be changed after the sale of tickets has started"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Price range"),
        "proceedToPay": MessageLookupByLibrary.simpleMessage("Proceed to pay"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "promotionCodeHasExpired":
            MessageLookupByLibrary.simpleMessage("Promotion code has expired"),
        "quantityChangedToLessThanTicketsSold":
            MessageLookupByLibrary.simpleMessage(
                "Number of tickets in the pool cannot be changed below the number of tickets sold"),
        "quantityTooHigh": MessageLookupByLibrary.simpleMessage(
            "The maximum number of tickets is 100000"),
        "quantityTooLow": MessageLookupByLibrary.simpleMessage(
            "The minimum number of tickets is 1"),
        "rateAddingError": MessageLookupByLibrary.simpleMessage(
            "Error while adding review to event"),
        "rateButtonTitle": MessageLookupByLibrary.simpleMessage("Rate"),
        "rateEvent": MessageLookupByLibrary.simpleMessage("Rate the event"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Rate us"),
        "raver": MessageLookupByLibrary.simpleMessage("Raver"),
        "raverPartners": MessageLookupByLibrary.simpleMessage("Raver Partners"),
        "raverScanner": MessageLookupByLibrary.simpleMessage("Raver Scanner"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "requiredNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Required number of entries"),
        "resetFilters": MessageLookupByLibrary.simpleMessage("Reset filters"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Reset password"),
        "resetSelectedDate":
            MessageLookupByLibrary.simpleMessage("Reset selected date"),
        "retryConnection":
            MessageLookupByLibrary.simpleMessage("Retry Connection"),
        "returnTicket": MessageLookupByLibrary.simpleMessage("Return ticket"),
        "returnTimeIsOver":
            MessageLookupByLibrary.simpleMessage("Time for a return is over"),
        "reviewAdded": MessageLookupByLibrary.simpleMessage("Review added"),
        "reviewLoadError":
            MessageLookupByLibrary.simpleMessage("Error while loading review"),
        "reviewLoadingFormFailure":
            MessageLookupByLibrary.simpleMessage("Error loading review form"),
        "rewardAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reward added successfully"),
        "rewardUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reward updated successfully"),
        "rewards": m6,
        "scanAnotherTicket":
            MessageLookupByLibrary.simpleMessage("Scan another ticket"),
        "scanTicket": MessageLookupByLibrary.simpleMessage("Scan ticket"),
        "scanner": MessageLookupByLibrary.simpleMessage("Scanner"),
        "select": MessageLookupByLibrary.simpleMessage("Select"),
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Please select dress code"),
        "selectMinAge":
            MessageLookupByLibrary.simpleMessage("Please select minumum age"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Please select musical genres"),
        "selectors": m7,
        "sendPasswordResetLink":
            MessageLookupByLibrary.simpleMessage("Send password reset link"),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "An unexpected error has occurred, please contact support"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Show ticket"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Show ticket QR code"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "socialMedia": MessageLookupByLibrary.simpleMessage("Social media"),
        "soldOut": MessageLookupByLibrary.simpleMessage("Sold out"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start date"),
        "startDateBeforeNow": MessageLookupByLibrary.simpleMessage(
            "The start date cannot be before the current date"),
        "startScanning": MessageLookupByLibrary.simpleMessage("Start scanning"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "summary": MessageLookupByLibrary.simpleMessage("Summary"),
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "ticketAlreadyHasVipStatus": MessageLookupByLibrary.simpleMessage(
            "Ticket already has VIP status"),
        "ticketExpired": MessageLookupByLibrary.simpleMessage("Ticket expired"),
        "ticketForAnotherEvent":
            MessageLookupByLibrary.simpleMessage("Ticket is for another event"),
        "ticketPrice": MessageLookupByLibrary.simpleMessage("Ticket price"),
        "ticketPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("The maximum ticket price is"),
        "ticketPriceTooLow":
            MessageLookupByLibrary.simpleMessage("The minimum ticket price is"),
        "ticketReturnedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ticket returned successfully"),
        "tickets": m8,
        "ticketsSold": MessageLookupByLibrary.simpleMessage("Tickets sold"),
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "The maximum number of required entries is 1000"),
        "totalRevenue": MessageLookupByLibrary.simpleMessage("Total revenue"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Unexpected error"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Upcoming events"),
        "updateUsernameTitle":
            MessageLookupByLibrary.simpleMessage("Update username"),
        "upgradeToVip": MessageLookupByLibrary.simpleMessage("Upgrade to VIP"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("URL links"),
        "userDisabled": MessageLookupByLibrary.simpleMessage(
            "This account has been disabled"),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Email not found, please create an account"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("Username already in use"),
        "usernameContainsSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Username cannot contain special characters"),
        "usernameTooLong": MessageLookupByLibrary.simpleMessage(
            "Username is too long, use max 20 characters"),
        "usernameTooShort":
            MessageLookupByLibrary.simpleMessage("Username is too short"),
        "usernameUpdatedMessage":
            MessageLookupByLibrary.simpleMessage("Username has been updated!"),
        "validTicket": MessageLookupByLibrary.simpleMessage("Valid ticket"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "A verification link has been sent to the e-mail address provided"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipPrice": MessageLookupByLibrary.simpleMessage("VIP price"),
        "vipPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("The maximum VIP price is"),
        "vipPriceTooLow":
            MessageLookupByLibrary.simpleMessage("The minimum VIP price is"),
        "vipValidTicket":
            MessageLookupByLibrary.simpleMessage("VIP, valid ticket"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "vipsSold": MessageLookupByLibrary.simpleMessage("VIPs sold"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Password is too weak"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Wrong password"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourRate": MessageLookupByLibrary.simpleMessage("Your rate")
      };
}
