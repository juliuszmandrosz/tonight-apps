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
        "accessCodeEmpty":
            MessageLookupByLibrary.simpleMessage("Please enter access code"),
        "accessCodeInfo": MessageLookupByLibrary.simpleMessage(
            "The access code is only required when signing in for the first time"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "An account already exists for that email"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account settings"),
        "accountSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Account Settings"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addAtLeastOneTicketPool": MessageLookupByLibrary.simpleMessage(
            "At least one pool of tickets must be added"),
        "addClubToFavoritesAndReceiveNotifications":
            MessageLookupByLibrary.simpleMessage(
                "Add a club to your favorites and receive notifications as soon as it adds a new event or reward"),
        "addDescription":
            MessageLookupByLibrary.simpleMessage("Add description"),
        "addDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Add link to DJ channel on YouTube"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Add event"),
        "addFacebookUrl":
            MessageLookupByLibrary.simpleMessage("Add Facebook event URL link"),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Add photo"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Add promotion code"),
        "addReward": MessageLookupByLibrary.simpleMessage("Add reward"),
        "addTicketPool":
            MessageLookupByLibrary.simpleMessage("Add ticket pool"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Additional info"),
        "age": MessageLookupByLibrary.simpleMessage("Age"),
        "allowVipTickets":
            MessageLookupByLibrary.simpleMessage("Allow VIP tickets"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "anyCurrency": MessageLookupByLibrary.simpleMessage("Any"),
        "appVersion": MessageLookupByLibrary.simpleMessage("App version"),
        "appliedPromotionCode":
            MessageLookupByLibrary.simpleMessage("Applied promotion code"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "applyDiscount": MessageLookupByLibrary.simpleMessage("Apply discount"),
        "applyFilters": MessageLookupByLibrary.simpleMessage("Apply filters"),
        "applySelectedDate":
            MessageLookupByLibrary.simpleMessage("Apply selected date"),
        "artistName": MessageLookupByLibrary.simpleMessage("Artist name"),
        "attending": m0,
        "availableDiscounts":
            MessageLookupByLibrary.simpleMessage("Available discounts"),
        "availableSoon": MessageLookupByLibrary.simpleMessage("Available soon"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "backToEventList":
            MessageLookupByLibrary.simpleMessage("Back to event list"),
        "backToHomePage":
            MessageLookupByLibrary.simpleMessage("Back to home page"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Back to summary"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Buy ticket"),
        "byContinuingYouAgreeTo":
            MessageLookupByLibrary.simpleMessage("By continuing, you agree to"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancel event"),
        "cancelTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Time to cancel the event has expired"),
        "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cancelledByUser":
            MessageLookupByLibrary.simpleMessage("Operation cancelled by user"),
        "casual": MessageLookupByLibrary.simpleMessage("Casual"),
        "changePasswordTitle":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "changePhoto": MessageLookupByLibrary.simpleMessage("Change photo"),
        "changeUsername":
            MessageLookupByLibrary.simpleMessage("Change username"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Clear filters"),
        "closeTicketPool":
            MessageLookupByLibrary.simpleMessage("Close ticket pool"),
        "clubDoesNotOfferRewards":
            MessageLookupByLibrary.simpleMessage("Club does not offer rewards"),
        "clubName": MessageLookupByLibrary.simpleMessage("Club name"),
        "clubReviewsLoadingError": MessageLookupByLibrary.simpleMessage(
            "Error while loading club reviews"),
        "clubs": m1,
        "collectBenefitsInClubs": MessageLookupByLibrary.simpleMessage(
            "Collect benefits in clubs by collecting attendance for participating in events"),
        "company": MessageLookupByLibrary.simpleMessage("Company"),
        "companyName": MessageLookupByLibrary.simpleMessage("Company name"),
        "concert": MessageLookupByLibrary.simpleMessage("Concert"),
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Concert information"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? The operation is irreversible, all your tickets and rewards will be deleted."),
        "confirmDeleteMessage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you wish to delete this item?"),
        "confirmEventCancelation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel the event? The current cost of canceling the event related to payment processing is"),
        "confirmEventPostpone": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to postpone the event? The current cost of postponing the event related to payment processing is"),
        "confirmLeavingPage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to exit the current page? Changes will not be saved"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "confirmReviewReport": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to report this opinion as inappropriate?"),
        "confirmSelectorDeletion": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this selector?"),
        "confirmSignOut": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "confirmTicketReturn": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to return the ticket?"),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
        "cost": MessageLookupByLibrary.simpleMessage("Cost"),
        "currency": MessageLookupByLibrary.simpleMessage("Currency"),
        "currentFee": MessageLookupByLibrary.simpleMessage("Current fee"),
        "currentPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dark theme"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Date and time"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete account"),
        "deletedAllTicketPools": MessageLookupByLibrary.simpleMessage(
            "The only pool of tickets cannot be removed"),
        "deletedTicketPoolAfterTicketWasSold":
            MessageLookupByLibrary.simpleMessage(
                "The pool cannot be removed once the sale of tickets has started"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Description may contain up to 1000 characters"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "discountHasBeenUsed": MessageLookupByLibrary.simpleMessage(
            "Discount has already been used"),
        "discounts": MessageLookupByLibrary.simpleMessage("Discounts"),
        "discountsInfo": MessageLookupByLibrary.simpleMessage(
            "Discounts are added to the total amount of tickets sold and vips on exclusive events"),
        "discoverClubs": MessageLookupByLibrary.simpleMessage(
            "Explore nearby clubs and find a party for yourself"),
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
            MessageLookupByLibrary.simpleMessage("Enter access code"),
        "enterArtistName":
            MessageLookupByLibrary.simpleMessage("Please enter artist name"),
        "enterDesc":
            MessageLookupByLibrary.simpleMessage("Please enter description"),
        "enterDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Please add link to DJ channel on YouTube"),
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
        "enterInvoiceData":
            MessageLookupByLibrary.simpleMessage("Please enter invoice data"),
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
        "enterVatNumber":
            MessageLookupByLibrary.simpleMessage("Enter VAT number"),
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
        "errorReportingReview":
            MessageLookupByLibrary.simpleMessage("Error reporting review"),
        "errorUpdatingEvent":
            MessageLookupByLibrary.simpleMessage("Error updating event"),
        "errorUpdatingReward":
            MessageLookupByLibrary.simpleMessage("Error updating reward"),
        "eventAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event added successfully"),
        "eventBeingPostponed": MessageLookupByLibrary.simpleMessage(
            "Ticket sales has been suspended"),
        "eventCanceledSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event canceled successfully"),
        "eventCancelled": MessageLookupByLibrary.simpleMessage(
            "Event has been cancelled by club"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event details"),
        "eventDurationTooLong": MessageLookupByLibrary.simpleMessage(
            "The event may last a maximum of 24 hours"),
        "eventEditedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event edited successfully"),
        "eventExistsInDateRange": MessageLookupByLibrary.simpleMessage(
            "An event already exists in the given date range"),
        "eventHasEnded":
            MessageLookupByLibrary.simpleMessage("The event has ended"),
        "eventName": MessageLookupByLibrary.simpleMessage("Event name"),
        "eventOverview": MessageLookupByLibrary.simpleMessage("Event overview"),
        "eventPlace": MessageLookupByLibrary.simpleMessage("Event place"),
        "eventPostponedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Event postponed successfully"),
        "eventRevenue": MessageLookupByLibrary.simpleMessage("Event revenue"),
        "eventSoldOut": MessageLookupByLibrary.simpleMessage(
            "Tickets for this event have been sold out"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "The event should last at least one hour"),
        "events": m3,
        "exclusive": MessageLookupByLibrary.simpleMessage("Exclusive"),
        "exclusiveEvent":
            MessageLookupByLibrary.simpleMessage("Exclusive event"),
        "exclusiveEventInfo": MessageLookupByLibrary.simpleMessage(
            "Ticket sales only at the gate and in the Tonight app"),
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Exit"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent": MessageLookupByLibrary.simpleMessage("Facebook event"),
        "favoriteClubs": MessageLookupByLibrary.simpleMessage("Favorite clubs"),
        "favoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Add clubs to your favorites and receive notifications about new events and rewards"),
        "favoriteEvents":
            MessageLookupByLibrary.simpleMessage("Favorite events"),
        "favoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Add events to your favorites and receive notifications when new tickets are available"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "fee": MessageLookupByLibrary.simpleMessage("Fee"),
        "fieldShouldNotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Field should not be empty"),
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
        "fullName": MessageLookupByLibrary.simpleMessage("Full name"),
        "generateAccessCode":
            MessageLookupByLibrary.simpleMessage("Generate access code"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "iWantInvoice":
            MessageLookupByLibrary.simpleMessage("I want a VAT invoice"),
        "income": MessageLookupByLibrary.simpleMessage("Income"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidAccessCode": MessageLookupByLibrary.simpleMessage(
            "Access code is invalid or has expired"),
        "invalidCountryCode":
            MessageLookupByLibrary.simpleMessage("Invalid country"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "The credential received are invalid or has expired"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Invalid email format"),
        "invalidEvent": MessageLookupByLibrary.simpleMessage(
            "The event has been deleted by the club"),
        "invalidPriceRange":
            MessageLookupByLibrary.simpleMessage("Invalid price range"),
        "invalidPromotionCode":
            MessageLookupByLibrary.simpleMessage("Invalid promotion code"),
        "invalidQrCode":
            MessageLookupByLibrary.simpleMessage("Invalid QR code"),
        "invalidSignInLink": MessageLookupByLibrary.simpleMessage(
            "Link is invalid or has expired"),
        "invalidTicket": MessageLookupByLibrary.simpleMessage("Invalid ticket"),
        "invalidUrl":
            MessageLookupByLibrary.simpleMessage("Invalid URL format"),
        "invalidVatNumber":
            MessageLookupByLibrary.simpleMessage("Invalid VAT number"),
        "invalidVerificationCode":
            MessageLookupByLibrary.simpleMessage("Invalid verification code"),
        "invalidVerificationId":
            MessageLookupByLibrary.simpleMessage("Invalid verification ID"),
        "inviteSelector":
            MessageLookupByLibrary.simpleMessage("Invite selector"),
        "invoiceData": MessageLookupByLibrary.simpleMessage("Invoice data"),
        "invoiceDataUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Invoice data updated successfully"),
        "invoiceWillBeSentToEmail": MessageLookupByLibrary.simpleMessage(
            "The invoice will be sent to your email address"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Concert"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastTicketsInPool":
            MessageLookupByLibrary.simpleMessage("Last tickets"),
        "live": MessageLookupByLibrary.simpleMessage("Live"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "lostNetworkConnectionDescription":
            MessageLookupByLibrary.simpleMessage(
                "Seems you\'ve lost connection to internet"),
        "map": MessageLookupByLibrary.simpleMessage("Map"),
        "maxDistance": MessageLookupByLibrary.simpleMessage("Maximum distance"),
        "maxNumberOfTicketPools": MessageLookupByLibrary.simpleMessage(
            "The maximum number of ticket pools is 5"),
        "maxPhotoSize": MessageLookupByLibrary.simpleMessage(
            "The maximum size of the photo is 1MB"),
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
            "Name can contain up to 100 characters"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Name should be at least 3 characters"),
        "naturalPerson": MessageLookupByLibrary.simpleMessage("Natural person"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAccessToClub": MessageLookupByLibrary.simpleMessage(
            "You have no access to this club"),
        "noData": MessageLookupByLibrary.simpleMessage("No data"),
        "noDressCode": MessageLookupByLibrary.simpleMessage("No dress code"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("No events at this club yet"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("No events near you"),
        "noLiveEvent":
            MessageLookupByLibrary.simpleMessage("No live event in your club"),
        "noOpinions": MessageLookupByLibrary.simpleMessage("No opinions"),
        "noRevenue": MessageLookupByLibrary.simpleMessage("No revenue"),
        "noSport": MessageLookupByLibrary.simpleMessage("No sport"),
        "noTicketsSold":
            MessageLookupByLibrary.simpleMessage("No tickets sold"),
        "noVipsSold": MessageLookupByLibrary.simpleMessage("No VIPs sold"),
        "normal": MessageLookupByLibrary.simpleMessage("Normal"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "numberOfTickets":
            MessageLookupByLibrary.simpleMessage("Number of tickets"),
        "onPrivacyPolicy":
            MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "oneTimeAccessCode": MessageLookupByLibrary.simpleMessage(
            "One-time access code for selector"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Operation is not allowed"),
        "opinions": m4,
        "orContinueWith":
            MessageLookupByLibrary.simpleMessage("Or continue with"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
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
        "payConveniently": MessageLookupByLibrary.simpleMessage(
            "Pay conveniently using a card, Google Pay, Apple Pay, BLIK or another method available at Przelewy24"),
        "paymentConfirmed":
            MessageLookupByLibrary.simpleMessage("Payment confirmed"),
        "paymentError": MessageLookupByLibrary.simpleMessage(
            "Error during payment, please contact support"),
        "paymentHasAlreadyBeenMade": MessageLookupByLibrary.simpleMessage(
            "Payment has already been made"),
        "paymentSessionExpired": MessageLookupByLibrary.simpleMessage(
            "Your payment session has expired"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
        "photos": m5,
        "pleaseAddPhoto":
            MessageLookupByLibrary.simpleMessage("Please add a photo"),
        "pool": MessageLookupByLibrary.simpleMessage("Pool"),
        "poolNo": MessageLookupByLibrary.simpleMessage("Pool No."),
        "poolPriceHigherThanNextPool": MessageLookupByLibrary.simpleMessage(
            "The price of tickets in the pool should be lower than price of the next pool"),
        "poolPriceLowerThanPreviousPools": MessageLookupByLibrary.simpleMessage(
            "The price of tickets in the pool should be higher than the highest price of the previous pools"),
        "postpone": MessageLookupByLibrary.simpleMessage("Postpone"),
        "postponeDateTooLate": MessageLookupByLibrary.simpleMessage(
            "The maximum start date time is 150 days from original start date"),
        "postponeEvent": MessageLookupByLibrary.simpleMessage("Postpone event"),
        "postponeTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Time to postpone the event has expired"),
        "postponeTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "The minimum time by which an event can be postponed is 24 hours"),
        "postponed": MessageLookupByLibrary.simpleMessage("Postponed"),
        "previousTicketPoolAvailable": MessageLookupByLibrary.simpleMessage(
            "The previous ticket pool is available again!"),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "priceChangedAfterTicketWasSold": MessageLookupByLibrary.simpleMessage(
            "The price cannot be changed after the sale of tickets has started"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Price range"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "proceedToCheckout":
            MessageLookupByLibrary.simpleMessage("Proceed to checkout"),
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
        "receiveRewards":
            MessageLookupByLibrary.simpleMessage("Collect rewards"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
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
        "returned": MessageLookupByLibrary.simpleMessage("Returned"),
        "revenue": MessageLookupByLibrary.simpleMessage("Revenue"),
        "reviewAdded": MessageLookupByLibrary.simpleMessage("Review added"),
        "reviewAlreadyReported": MessageLookupByLibrary.simpleMessage(
            "You have already reported this opinion"),
        "reviewAvg": MessageLookupByLibrary.simpleMessage("Opinions average"),
        "reviewContent": MessageLookupByLibrary.simpleMessage("Your review"),
        "reviewContentTooLong": MessageLookupByLibrary.simpleMessage(
            "Review content may contain up to 1000 characters"),
        "reviewLoadError":
            MessageLookupByLibrary.simpleMessage("Error while loading review"),
        "reviewLoadingFormFailure":
            MessageLookupByLibrary.simpleMessage("Error loading review form"),
        "reviewReportedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Opinion reported successfully"),
        "reviewsQuantity":
            MessageLookupByLibrary.simpleMessage("Opinions quantity"),
        "rewardAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reward added successfully"),
        "rewardDescTooLong": MessageLookupByLibrary.simpleMessage(
            "Description may contain up to 100 characters"),
        "rewardUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reward updated successfully"),
        "rewards": m6,
        "sales": MessageLookupByLibrary.simpleMessage("Sales"),
        "scanAnotherTicket":
            MessageLookupByLibrary.simpleMessage("Scan another ticket"),
        "scanTicket": MessageLookupByLibrary.simpleMessage("Scan ticket"),
        "scanner": MessageLookupByLibrary.simpleMessage("Scanner"),
        "select": MessageLookupByLibrary.simpleMessage("Select"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Select country"),
        "selectDiscount":
            MessageLookupByLibrary.simpleMessage("Select discount"),
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Please select dress code"),
        "selectEventPhoto":
            MessageLookupByLibrary.simpleMessage("Select event photo"),
        "selectMinAge":
            MessageLookupByLibrary.simpleMessage("Please select minumum age"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Please select musical genres"),
        "selectNumberOfStars":
            MessageLookupByLibrary.simpleMessage("Select the number of stars"),
        "selectors": m7,
        "sendPasswordResetLink":
            MessageLookupByLibrary.simpleMessage("Send password reset link"),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "An unexpected error has occurred, we have been notified of it and we will try to fix it as soon as possible. Try again or restart the application."),
        "serviceFee": MessageLookupByLibrary.simpleMessage("Service fee"),
        "setYourUsername":
            MessageLookupByLibrary.simpleMessage("Set your username"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Show ticket"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Show ticket QR code"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "signOut": MessageLookupByLibrary.simpleMessage("Sign out"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "skipTheLine": MessageLookupByLibrary.simpleMessage("Skip the line"),
        "socialMedia": MessageLookupByLibrary.simpleMessage("Social media"),
        "sold": MessageLookupByLibrary.simpleMessage("Sold"),
        "soldOut": MessageLookupByLibrary.simpleMessage("Sold out"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "start": MessageLookupByLibrary.simpleMessage("Start!"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start date"),
        "startDateBeforeNow": MessageLookupByLibrary.simpleMessage(
            "The start date cannot be before the current date"),
        "startDateTooLate": MessageLookupByLibrary.simpleMessage(
            "The maximum start date time is 150 days from today"),
        "startScanning": MessageLookupByLibrary.simpleMessage("Start scanning"),
        "startSearching":
            MessageLookupByLibrary.simpleMessage("Start searching..."),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistics"),
        "statisticsUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Statistics are updating after the event ends"),
        "stayUpdated": MessageLookupByLibrary.simpleMessage("Stay updated"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "summary": MessageLookupByLibrary.simpleMessage("Summary"),
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "ticketAlreadyHasVipStatus": MessageLookupByLibrary.simpleMessage(
            "Ticket already has VIP status"),
        "ticketExpired": MessageLookupByLibrary.simpleMessage("Ticket expired"),
        "ticketForAnotherEvent":
            MessageLookupByLibrary.simpleMessage("Ticket is for another event"),
        "ticketPoolHasBeenAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticket pool has been added successfully"),
        "ticketPoolHasBeenDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticket pool has been deleted successfully"),
        "ticketPoolHasBeenUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticket pool has been updated successfully"),
        "ticketPoolHasSoldOut":
            MessageLookupByLibrary.simpleMessage("Ticket pool has sold out!"),
        "ticketPools": MessageLookupByLibrary.simpleMessage("Ticket Pools"),
        "ticketPrice": MessageLookupByLibrary.simpleMessage("Ticket price"),
        "ticketPriceHasChanged":
            MessageLookupByLibrary.simpleMessage("Ticket price has changed"),
        "ticketPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("The maximum ticket price is"),
        "ticketPriceTooLow":
            MessageLookupByLibrary.simpleMessage("The minimum ticket price is"),
        "ticketReturned":
            MessageLookupByLibrary.simpleMessage("Ticket has been returned"),
        "ticketReturnedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ticket returned successfully"),
        "ticketScanned": MessageLookupByLibrary.simpleMessage("Ticket scanned"),
        "tickets": m8,
        "ticketsSold": MessageLookupByLibrary.simpleMessage("Tickets sold"),
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "tonight": MessageLookupByLibrary.simpleMessage("Tonight"),
        "tonightPartners":
            MessageLookupByLibrary.simpleMessage("Tonight Partners"),
        "tonightScanner":
            MessageLookupByLibrary.simpleMessage("Tonight Scanner"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "The maximum number of required entries is 1000"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalRevenue": MessageLookupByLibrary.simpleMessage("Total revenue"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "typeClubCityOrStreet": MessageLookupByLibrary.simpleMessage(
            "Enter the name of the club, city or street"),
        "typeEventClubOrArtistName": MessageLookupByLibrary.simpleMessage(
            "Enter the name of the event, club or artist"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Unexpected error"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "upcomingAndLive":
            MessageLookupByLibrary.simpleMessage("Upcoming and live"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Upcoming events"),
        "upgradeTicketToVipAndEnterClub": MessageLookupByLibrary.simpleMessage(
            "Upgrade your ticket to VIP and skip the line to the club"),
        "upgradeToVip": MessageLookupByLibrary.simpleMessage("Upgrade to VIP"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("URL links"),
        "userAlreadyHasTicket": MessageLookupByLibrary.simpleMessage(
            "You already have a ticket for this event"),
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
            "Username should contain up to 20 characters"),
        "usernameTooShort": MessageLookupByLibrary.simpleMessage(
            "Username should contain at least 3 characters"),
        "usernameUpdatedMessage":
            MessageLookupByLibrary.simpleMessage("Username has been updated!"),
        "validTicket": MessageLookupByLibrary.simpleMessage("Valid ticket"),
        "vatNumber": MessageLookupByLibrary.simpleMessage("VAT number"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "A verification link has been sent to the e-mail address provided, it must be confirmed by phone"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipAvailableAgain":
            MessageLookupByLibrary.simpleMessage("VIP is available again!"),
        "vipInfo": MessageLookupByLibrary.simpleMessage(
            "VIP ticket allows to skip the line to the club"),
        "vipNoLongerAvailable":
            MessageLookupByLibrary.simpleMessage("VIP no longer available"),
        "vipNotEnabledInfo": MessageLookupByLibrary.simpleMessage(
            "VIP ticket is not currently available for this event"),
        "vipPrice": MessageLookupByLibrary.simpleMessage("VIP price"),
        "vipPriceHasChanged":
            MessageLookupByLibrary.simpleMessage("VIP price has changed"),
        "vipPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("The maximum VIP price is"),
        "vipPriceTooLow":
            MessageLookupByLibrary.simpleMessage("The minimum VIP price is"),
        "vipValidTicket":
            MessageLookupByLibrary.simpleMessage("VIP, valid ticket"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "vips": MessageLookupByLibrary.simpleMessage("VIPs"),
        "vipsSold": MessageLookupByLibrary.simpleMessage("VIPs sold"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Password is too weak"),
        "welcomeToTonight":
            MessageLookupByLibrary.simpleMessage("Welcome to Tonight!"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Wrong password"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Your number of entries"),
        "yourOpinion": MessageLookupByLibrary.simpleMessage("Your opinion"),
        "yourRate": MessageLookupByLibrary.simpleMessage("Your rate")
      };
}
