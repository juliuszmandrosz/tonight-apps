// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'Teilnehmer', one: 'Teilnehmer', other: 'Teilnehmer')}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'Keine Clubs', one: 'Club', other: 'Clubs')}";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'Eintritte', one: 'Eintritt', other: 'Eintritte')}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'Keine Events', one: 'Event', other: 'Events')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Meinungen', one: 'Meinung', other: 'Meinungen')}";

  static String m5(count) =>
      "${Intl.plural(count, zero: 'Keine Fotos', one: 'Foto', other: 'Fotos')}";

  static String m6(count) =>
      "${Intl.plural(count, zero: 'Keine Prämien', one: 'Prämie', other: 'Prämien')}";

  static String m7(count) =>
      "${Intl.plural(count, zero: 'keine Türsteher', one: 'Türsteher', other: 'Türsteher')}";

  static String m8(count) =>
      "${Intl.plural(count, zero: 'Keine Tickets', one: 'Ticket', other: 'Tickets')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("Über uns"),
        "accessCode": MessageLookupByLibrary.simpleMessage("Zugangscode"),
        "accessCodeEmpty":
            MessageLookupByLibrary.simpleMessage("Bitte Zugangscode eingeben"),
        "accessCodeInfo": MessageLookupByLibrary.simpleMessage(
            "Der Zugangscode wird nur bei der erstmaligen Anmeldung benötigt"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "Für diese E-Mail existiert bereits ein Konto"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account Einstellungen"),
        "accountSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Account Einstellungen"),
        "add": MessageLookupByLibrary.simpleMessage("Hinzufüge"),
        "addAtLeastOneTicketPool": MessageLookupByLibrary.simpleMessage(
            "Mindestens ein Ticketspool muss hinzugefügt werden"),
        "addClubToFavoritesAndReceiveNotifications":
            MessageLookupByLibrary.simpleMessage(
                "Füge den Club zu Favoriten hinzu und erhalte Benachrichtigungen, sobald ein neues Event oder eine neue Prämie hinzugefügt wird"),
        "addDescription": MessageLookupByLibrary.simpleMessage(
            "Füge eine Beschreibung hinzu"),
        "addDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Link zum DJ-Kanal auf YouTube hinzufügen"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Event hinzufügen"),
        "addFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "URL-Link für Facebook-Event hinzufügen"),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Foto hinzufügen"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Aktionscode hinzufügen"),
        "addReward": MessageLookupByLibrary.simpleMessage("Prämie hinzufügen"),
        "addTicketPool":
            MessageLookupByLibrary.simpleMessage("Ticketpool hinzufügen"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Zusatzinformationen"),
        "age": MessageLookupByLibrary.simpleMessage("Alter"),
        "allowVipTickets":
            MessageLookupByLibrary.simpleMessage("VIP-Tickets zulassen"),
        "and": MessageLookupByLibrary.simpleMessage("und"),
        "anyCurrency": MessageLookupByLibrary.simpleMessage("Alle"),
        "appVersion": MessageLookupByLibrary.simpleMessage("App Version"),
        "appliedPromotionCode":
            MessageLookupByLibrary.simpleMessage("Angewendeter Aktionscode"),
        "apply": MessageLookupByLibrary.simpleMessage("Anwenden"),
        "applyDiscount":
            MessageLookupByLibrary.simpleMessage("Rabatt anwenden"),
        "applyFilters":
            MessageLookupByLibrary.simpleMessage("Filter bestätigen"),
        "applySelectedDate": MessageLookupByLibrary.simpleMessage(
            "Ausgewähltes Datum übernehmen"),
        "artistName":
            MessageLookupByLibrary.simpleMessage("Name des Künstlers"),
        "attending": m0,
        "availableDiscounts":
            MessageLookupByLibrary.simpleMessage("Verfügbare Rabatte"),
        "availableSoon": MessageLookupByLibrary.simpleMessage("Bald verfügbar"),
        "back": MessageLookupByLibrary.simpleMessage("Zurück"),
        "backToEventList":
            MessageLookupByLibrary.simpleMessage("Zurück zur Eventsliste"),
        "backToHomePage":
            MessageLookupByLibrary.simpleMessage("zurück zur Hauptseite"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Zurück zur Zusammenfassung"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Kaufe Ticket"),
        "byContinuingYouAgreeTo": MessageLookupByLibrary.simpleMessage(
            "Indem du fortfährst, stimmst du zu"),
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Absagen"),
        "cancelTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Die Frist zur Absage des Events ist abgelaufen"),
        "canceled": MessageLookupByLibrary.simpleMessage("Abgesagt"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "cancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Vorgang vom Benutzer abgebrochen"),
        "card": MessageLookupByLibrary.simpleMessage("Karte"),
        "casual": MessageLookupByLibrary.simpleMessage("casual "),
        "changePasswordTitle":
            MessageLookupByLibrary.simpleMessage("Passwort ändern"),
        "changePhoto": MessageLookupByLibrary.simpleMessage("Foto ändern"),
        "changeUsername":
            MessageLookupByLibrary.simpleMessage("Benutzername ändern"),
        "checkout": MessageLookupByLibrary.simpleMessage("Kasse"),
        "city": MessageLookupByLibrary.simpleMessage("Stadt"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Filter löschen"),
        "closeTicketPool":
            MessageLookupByLibrary.simpleMessage("Ticketpool schließen"),
        "clubDoesNotOfferRewards": MessageLookupByLibrary.simpleMessage(
            "Der Club bietet keine Prämien an"),
        "clubName": MessageLookupByLibrary.simpleMessage("Club Name"),
        "clubReviewsLoadingError": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden von Clubbewertungen"),
        "clubs": m1,
        "collectBenefitsInClubs": MessageLookupByLibrary.simpleMessage(
            "Sammele Vorteile in Clubs, indem du die Anwesenheit für die Teilnahme an Events sammelst"),
        "company": MessageLookupByLibrary.simpleMessage("Firma"),
        "companyName": MessageLookupByLibrary.simpleMessage("Name der Firma"),
        "concert": MessageLookupByLibrary.simpleMessage("Konzert"),
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Informationen über Konzert"),
        "confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "confirmDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Möchtest du dein Konto wirklich löschen? Der Vorgang ist unwiderruflich, alle deine Tickets und Prämien werden gelöscht."),
        "confirmDeleteMessage": MessageLookupByLibrary.simpleMessage(
            "Möchtest du dieses Element wirklich löschen?"),
        "confirmEventCancelation": MessageLookupByLibrary.simpleMessage(
            "Möchtest du das Event wirklich absagen? Die aktuellen Kosten für die Stornierung des Events im Zusammenhang mit der Zahlungsabwicklung betragen"),
        "confirmEventPostpone": MessageLookupByLibrary.simpleMessage(
            "Möchtest du das Event wirklich verschieben? Die aktuellen Kosten für die Verschiebung des Events im Zusammenhang mit der Zahlungsabwicklung betragen"),
        "confirmLeavingPage": MessageLookupByLibrary.simpleMessage(
            "Möchtest du die aktuelle Seite wirklich verlassen? Änderungen werden nicht gespeichert"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Passwort bestätigen"),
        "confirmReviewReport": MessageLookupByLibrary.simpleMessage(
            "Möchtest du diese Meinung wirklich als unpassend melden?"),
        "confirmSelectorDeletion": MessageLookupByLibrary.simpleMessage(
            "Möchtest du diese Auswahl wirklich löschen?"),
        "confirmSignOut": MessageLookupByLibrary.simpleMessage(
            "Möchtest du dich wirklich abmelden?"),
        "confirmTicketReturn": MessageLookupByLibrary.simpleMessage(
            "Möchtest du dein Ticket wirklich zurückgeben?"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "copiedToClipboard": MessageLookupByLibrary.simpleMessage(
            "In die Zwischenablage kopiert"),
        "cost": MessageLookupByLibrary.simpleMessage("Preis"),
        "currency": MessageLookupByLibrary.simpleMessage("Währung"),
        "currentFee": MessageLookupByLibrary.simpleMessage("aktuelle Gebühr"),
        "currentPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Aktuelles Passwort"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Dunkles Thema"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "date": MessageLookupByLibrary.simpleMessage("Datum"),
        "dateAndTime":
            MessageLookupByLibrary.simpleMessage("Datum und Uhrzeit"),
        "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Konto löschen"),
        "deletedAllTicketPools": MessageLookupByLibrary.simpleMessage(
            "Der einzige Pool von Tickets kann nicht entfernt werden"),
        "deletedTicketPoolAfterTicketWasSold": MessageLookupByLibrary.simpleMessage(
            "Der Pool kann nach Beginn des Ticketverkaufs nicht mehr entfernt werden"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Die Beschreibung kann bis zu 1000 Zeichen enthalten"),
        "description": MessageLookupByLibrary.simpleMessage("Beschreibung"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "discountHasBeenUsed": MessageLookupByLibrary.simpleMessage(
            "Der Rabatt wurde bereits verwendet"),
        "discounts": MessageLookupByLibrary.simpleMessage("Rabatte"),
        "discountsInfo": MessageLookupByLibrary.simpleMessage(
            "Rabatte werden zur Gesamtzahl der verkauften Tickets und VIPs bei exklusiven Events hinzugefügt"),
        "discoverClubs": MessageLookupByLibrary.simpleMessage(
            "Entdecke die Clubs in der Nähe und finde eine Party für dich"),
        "djYoutubeChannel":
            MessageLookupByLibrary.simpleMessage("DJ YouTube-Kanal"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Kleiderordnung"),
        "edit": MessageLookupByLibrary.simpleMessage("Bearbeite"),
        "editDescription":
            MessageLookupByLibrary.simpleMessage("Bearbeite Beschreibung"),
        "editDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Bearbeite Link zum DJ Kanal auf YouTube"),
        "editEventName":
            MessageLookupByLibrary.simpleMessage("Eventnamen bearbeiten"),
        "editFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Bearbeite URL Link des Facebook Events"),
        "editReward": MessageLookupByLibrary.simpleMessage("Prämie bearbeiten"),
        "editTicketPool":
            MessageLookupByLibrary.simpleMessage("Bearbeite Ticketspool"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Email wird bereits verwendet"),
        "emptyFavoriteClubsMessage": MessageLookupByLibrary.simpleMessage(
            "Hier werden deine Lieblingsclubs angezeigt"),
        "emptyFavoriteEventsMessage": MessageLookupByLibrary.simpleMessage(
            "Hier werden deine Lieblingsevents angezeigt"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Aktiviere Standort"),
        "endDate": MessageLookupByLibrary.simpleMessage("Enddatum"),
        "endDateBeforeStart": MessageLookupByLibrary.simpleMessage(
            "Das Enddatum darf nicht vor dem Startdatum liegen"),
        "enterAccessCode":
            MessageLookupByLibrary.simpleMessage("Gib den Zugangscode ein"),
        "enterArtistName": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe den Namen des Künstlers ein"),
        "enterDesc": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe eine Beschreibung ein "),
        "enterDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Bitte füge einen Link zum DJ-Kanal auf YouTube hinzu"),
        "enterEmail": MessageLookupByLibrary.simpleMessage(
            "Bitte E-mail Adresse eingeben"),
        "enterEndDateTime": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe das Enddatum und die Uhrezit ein"),
        "enterEventName": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe den Event Namen ein"),
        "enterFacebookLink": MessageLookupByLibrary.simpleMessage(
            "Bitte Link zu Facebook eingeben"),
        "enterFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe den Link zur Facebook-Event ein"),
        "enterInvoiceData": MessageLookupByLibrary.simpleMessage(
            "Bitte füge die Daten für die Rechnung hinzu"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Bitte Passwort eingeben"),
        "enterPrice":
            MessageLookupByLibrary.simpleMessage("Bitte gebe den Preis an"),
        "enterQuantity":
            MessageLookupByLibrary.simpleMessage("Bitte Menge eingeben"),
        "enterRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe die gewünschte Anzahl an Eintritte ein"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Bitte gebe das Startdatum und die Uhrzeit ein "),
        "enterUsername":
            MessageLookupByLibrary.simpleMessage("Benutzernamen eingeben"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Gebe eine gültige Email-Adresse ein"),
        "enterVatNumber":
            MessageLookupByLibrary.simpleMessage("UID Nummer eingeben"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Bitte Link zu YouTube eingeben"),
        "entries": m2,
        "entry": MessageLookupByLibrary.simpleMessage("Eingang"),
        "errorAddingEvent": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Hinzufügen des Events "),
        "errorAddingReward": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Hinzufügen der Prämie "),
        "errorChangingClubStatus": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Ändern des Clubstatus"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Ändern des Eventsstatus"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Bitte überprüfe deine Internetverbindung"),
        "errorDeletingReward": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Löschen der Prämie"),
        "errorDeletingSelector": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Löschen des Türstehers"),
        "errorLoadingClubs":
            MessageLookupByLibrary.simpleMessage("Fehler beim Laden von Clubs"),
        "errorLoadingEventDetails": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Eventsdetails"),
        "errorLoadingEvents": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden von Events "),
        "errorLoadingFavoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden von Informationen über Lieblingsclubs"),
        "errorLoadingFavoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden von Informationen zu bevorzugten Events"),
        "errorLoadingFilters": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Filter"),
        "errorLoadingPhotos":
            MessageLookupByLibrary.simpleMessage("Fehler beim Laden der Fotos"),
        "errorLoadingProfile": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Profilinformationen"),
        "errorLoadingRewards": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Prämien"),
        "errorLoadingSelectors": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Türsteher"),
        "errorLoadingTickets": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden der Tickets"),
        "errorMakingCall":
            MessageLookupByLibrary.simpleMessage("Fehler beim Anrufen"),
        "errorOpeningLink": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Öffnen des Links"),
        "errorOpeningMaps": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Öffnen von Karten"),
        "errorReportingReview": MessageLookupByLibrary.simpleMessage(
            "Fehler während der Meinung Übermittlung"),
        "errorUpdatingEvent": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Aktualisieren des Events"),
        "errorUpdatingReward": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Aktualisieren der Prämie"),
        "eventAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Event wurde erfolgreich hinzugefügt"),
        "eventBeingPostponed": MessageLookupByLibrary.simpleMessage(
            "Der Ticketverkauf wurde angehalten"),
        "eventCanceledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Event wurde erfolgreich abgesagt"),
        "eventCancelled": MessageLookupByLibrary.simpleMessage(
            "Event wurde vom Club abgesagt"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Eventsdetails"),
        "eventDurationTooLong": MessageLookupByLibrary.simpleMessage(
            "Event darf maximal 24 Stunden dauern"),
        "eventEditedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Event erfolgreich bearbeitet"),
        "eventExistsInDateRange": MessageLookupByLibrary.simpleMessage(
            "Im angegebenen Zeitraum ein Event existiert bereits "),
        "eventHasEnded":
            MessageLookupByLibrary.simpleMessage("Das Event wurde beendet"),
        "eventName": MessageLookupByLibrary.simpleMessage("Eventsname"),
        "eventOverview":
            MessageLookupByLibrary.simpleMessage("Event Übersicht"),
        "eventPlace": MessageLookupByLibrary.simpleMessage("Veranstaltungsort"),
        "eventPostponedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Event erfolgreich verschoben"),
        "eventRevenue": MessageLookupByLibrary.simpleMessage("Event Umsatz"),
        "eventSoldOut": MessageLookupByLibrary.simpleMessage(
            "Tickets für diesen Event sind ausverkauft. "),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Event sollte mindestens eine Stunde dauern"),
        "events": m3,
        "exclusive": MessageLookupByLibrary.simpleMessage("Exclusiv"),
        "exclusiveEvent":
            MessageLookupByLibrary.simpleMessage("Exklusives Event"),
        "exclusiveEventInfo": MessageLookupByLibrary.simpleMessage(
            "Ticketverkauf nur an der Abendkasse und in Tonight-App"),
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Ausgang"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent":
            MessageLookupByLibrary.simpleMessage("Events auf Facebook"),
        "favoriteClubs": MessageLookupByLibrary.simpleMessage("Lieblingsclub"),
        "favoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Füge die Clubs zu Favoriten hinzu und erhalte Benachrichtigungen über neue Events und Prämien"),
        "favoriteEvents":
            MessageLookupByLibrary.simpleMessage("Lieblingsevents"),
        "favoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Füge Events zu Favoriten hinzu und erhalte Benachrichtigungen, wenn neue Tickets verfügbar sind"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favoriten"),
        "fee": MessageLookupByLibrary.simpleMessage("Gebühr"),
        "fieldShouldNotBeEmpty": MessageLookupByLibrary.simpleMessage(
            "Feld kann nicht leer bleiben"),
        "filters": MessageLookupByLibrary.simpleMessage("Filter"),
        "findByCity": MessageLookupByLibrary.simpleMessage("Stadt"),
        "findByMaxDistance":
            MessageLookupByLibrary.simpleMessage("Maximale Entfernung"),
        "findEventPlaceBy": MessageLookupByLibrary.simpleMessage(
            "Veranstaltungsort finden nach"),
        "findInMap":
            MessageLookupByLibrary.simpleMessage("Auf der Karte finden"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Passwort vergessen?"),
        "from": MessageLookupByLibrary.simpleMessage("Von"),
        "fullName":
            MessageLookupByLibrary.simpleMessage("Vorname und Nachname"),
        "generateAccessCode":
            MessageLookupByLibrary.simpleMessage("Zugangscode generieren"),
        "home": MessageLookupByLibrary.simpleMessage("Hauptseite"),
        "iWantInvoice": MessageLookupByLibrary.simpleMessage(
            "Ich möchte eine Rechnung mit ausgewiesener Mehrwertsteuer"),
        "income": MessageLookupByLibrary.simpleMessage("Einkommen"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidAccessCode": MessageLookupByLibrary.simpleMessage(
            "Der Zugangscode ist ungültig oder abgelaufen"),
        "invalidCountryCode":
            MessageLookupByLibrary.simpleMessage("Ungültiges Land"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "Die erhaltenen Anmeldeinformationen sind ungültig oder abgelaufen"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("ungültiges Email-Format"),
        "invalidEvent": MessageLookupByLibrary.simpleMessage(
            "Club hat das Event gelöscht "),
        "invalidPriceRange":
            MessageLookupByLibrary.simpleMessage("falsche Preisspanne"),
        "invalidPromotionCode":
            MessageLookupByLibrary.simpleMessage("Aktionscode ist ungültig"),
        "invalidQrCode":
            MessageLookupByLibrary.simpleMessage("QR Code ungültig"),
        "invalidSignInLink": MessageLookupByLibrary.simpleMessage(
            "Link ist ungültig oder abgelaufen"),
        "invalidTicket":
            MessageLookupByLibrary.simpleMessage("Ungültiger Ticket"),
        "invalidUrl":
            MessageLookupByLibrary.simpleMessage("Ungültiges URL-Format"),
        "invalidVatNumber":
            MessageLookupByLibrary.simpleMessage("Falsche UID Nummer"),
        "invalidVerificationCode":
            MessageLookupByLibrary.simpleMessage("Ungültiger Bestätigungscode"),
        "invalidVerificationId":
            MessageLookupByLibrary.simpleMessage("Ungültige ID-Bestätigung"),
        "inviteSelector":
            MessageLookupByLibrary.simpleMessage("Türsteher einladen"),
        "invoiceData": MessageLookupByLibrary.simpleMessage("Rechnungsdaten"),
        "invoiceDataUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Rechnungsdaten wurden erfolgreich aktualisiert"),
        "invoiceWillBeSentToEmail": MessageLookupByLibrary.simpleMessage(
            "Die Rechnung wird auf deine email Adresse gesendet"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Konzert"),
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "lastTicketsInPool":
            MessageLookupByLibrary.simpleMessage("Letzte Tickets"),
        "live": MessageLookupByLibrary.simpleMessage("Live"),
        "location": MessageLookupByLibrary.simpleMessage("Lage"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "lostNetworkConnectionDescription":
            MessageLookupByLibrary.simpleMessage(
                "Scheint, als hättest du die Internetverbindung verloren"),
        "map": MessageLookupByLibrary.simpleMessage("Karte"),
        "maxDistance":
            MessageLookupByLibrary.simpleMessage("Maximale Entfernung"),
        "maxNumberOfTicketPools": MessageLookupByLibrary.simpleMessage(
            "die maximale Anzahl an Tickets beträgt 5"),
        "maxPhotoSize": MessageLookupByLibrary.simpleMessage(
            "maximale Fotogröße beträgt 1 MB"),
        "maxThreeMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Bitte wähle bis zu 3 Musik Genres aus"),
        "milestones": MessageLookupByLibrary.simpleMessage("Meilensteine"),
        "minAge": MessageLookupByLibrary.simpleMessage("Mindestalter"),
        "music": MessageLookupByLibrary.simpleMessage("Musik"),
        "musicalGenres": MessageLookupByLibrary.simpleMessage("Musik Genres"),
        "nameAndDesc":
            MessageLookupByLibrary.simpleMessage("Name und Beschreibung"),
        "nameCannotContainSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Name darf keine Sonderzeichen enthalten"),
        "nameTooLong": MessageLookupByLibrary.simpleMessage(
            "Der Name kann bis zu 100 Zeichen enthalten"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Der Name sollte mindestens 3 Zeichen lang sein"),
        "naturalPerson":
            MessageLookupByLibrary.simpleMessage("natürliche Person"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Neues Passwort"),
        "next": MessageLookupByLibrary.simpleMessage("Weiter"),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "noAccessToClub": MessageLookupByLibrary.simpleMessage(
            "Du hast keinen Zugang zu diesem Club"),
        "noData": MessageLookupByLibrary.simpleMessage("keine Daten vorhanden"),
        "noDressCode":
            MessageLookupByLibrary.simpleMessage("Keine Kleiderordnung"),
        "noEventsInClub": MessageLookupByLibrary.simpleMessage(
            "Noch keine Veranstaltungen in diesem Club"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("Keine Events in deiner Nähe"),
        "noLiveEvent": MessageLookupByLibrary.simpleMessage(
            "Kein Live-Event in deinem Club"),
        "noOpinions": MessageLookupByLibrary.simpleMessage("Keine Meinungen "),
        "noRevenue": MessageLookupByLibrary.simpleMessage("Keine Einnahmen"),
        "noSport": MessageLookupByLibrary.simpleMessage("kein Sport"),
        "noTicketsSold":
            MessageLookupByLibrary.simpleMessage("Keine Tickets verkauft"),
        "noVipsSold":
            MessageLookupByLibrary.simpleMessage("Keine VIPs verkauft"),
        "normal": MessageLookupByLibrary.simpleMessage("Normal "),
        "notifications":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "numberOfTickets":
            MessageLookupByLibrary.simpleMessage("Anzahl der Tickets "),
        "onPrivacyPolicy":
            MessageLookupByLibrary.simpleMessage("Datenschutz-Bestimmungen"),
        "oneTimeAccessCode": MessageLookupByLibrary.simpleMessage(
            "Einmaliger Zugangscode für Türsteher"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Funktion nicht erlaubt"),
        "opinions": m4,
        "orContinueWith":
            MessageLookupByLibrary.simpleMessage("Oder weiter mit"),
        "overview": MessageLookupByLibrary.simpleMessage("Übersicht"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "passwordDigit": MessageLookupByLibrary.simpleMessage(
            "Das Passwort sollte mindestens eine Ziffer enthalten"),
        "passwordLowerCase": MessageLookupByLibrary.simpleMessage(
            "Das Passwort sollte mindestens einen Kleinbuchstaben enthalten"),
        "passwordResetLinkSent": MessageLookupByLibrary.simpleMessage(
            "Link zum Zurücksetzen des Passworts wurde gesendet"),
        "passwordSpecialCharacter": MessageLookupByLibrary.simpleMessage(
            "Das Passwort sollte mindestens ein Sonderzeichen enthalten"),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "Das Passwort sollte mindestens 8 Zeichen lang sein"),
        "passwordUpdatedMessage":
            MessageLookupByLibrary.simpleMessage("Passwort wurde aktualisiert"),
        "passwordUpperCase": MessageLookupByLibrary.simpleMessage(
            "Das Passwort sollte mindestens einen Großbuchstaben enthalten"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Passwörter stimmen nicht überein"),
        "past": MessageLookupByLibrary.simpleMessage("Vergangene"),
        "pastTickets":
            MessageLookupByLibrary.simpleMessage("Vergangene Tickets "),
        "payConveniently":
            MessageLookupByLibrary.simpleMessage("Bequem per App bezahlen"),
        "paymentConfirmed":
            MessageLookupByLibrary.simpleMessage("Zahlung wurde bestätigt"),
        "paymentError": MessageLookupByLibrary.simpleMessage(
            "Fehler bei der Zahlung, bitte kontaktiere den Support"),
        "paymentHasAlreadyBeenMade": MessageLookupByLibrary.simpleMessage(
            "Die Zahlung ist bereits erfolgt. "),
        "paymentMethod":
            MessageLookupByLibrary.simpleMessage("Zahlungsmethode"),
        "paymentMethodUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Zahlungsmethode erfolgreich aktualisiert"),
        "paymentSessionExpired": MessageLookupByLibrary.simpleMessage(
            "Deine Zahlungssitzung ist abgelaufen"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Telefonnummer"),
        "photos": m5,
        "pleaseAddPhoto":
            MessageLookupByLibrary.simpleMessage("Bitte füge ein Foto hinzu "),
        "pool": MessageLookupByLibrary.simpleMessage("Pool"),
        "poolNo": MessageLookupByLibrary.simpleMessage("Pool Nr. "),
        "poolPriceHigherThanNextPool": MessageLookupByLibrary.simpleMessage(
            "Der Preis der Tickets im Ticketspool sollte niedriger sein als der Preis des nächsten Ticketspool"),
        "poolPriceLowerThanPreviousPools": MessageLookupByLibrary.simpleMessage(
            "Der Ticketspreis im Pool soll höher sein als der Höchstpreis der bisherigen Pools"),
        "postpone": MessageLookupByLibrary.simpleMessage("Verschiebe"),
        "postponeDateTooLate": MessageLookupByLibrary.simpleMessage(
            "Das maximale Startdatum beträgt 150 Tage ab dem ursprünglichen Startdatum"),
        "postponeEvent": MessageLookupByLibrary.simpleMessage("Verschieben"),
        "postponeTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Die Frist zur Verschiebung des Events ist abgelaufen"),
        "postponeTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Die Mindestzeit, um die ein Event verschoben werden kann, beträgt 24 Stunden"),
        "postponed": MessageLookupByLibrary.simpleMessage("Verschoben"),
        "previousTicketPoolAvailable": MessageLookupByLibrary.simpleMessage(
            "Der bisherige Ticketpool ist wieder verfügbar!"),
        "price": MessageLookupByLibrary.simpleMessage("Preis"),
        "priceChangedAfterTicketWasSold": MessageLookupByLibrary.simpleMessage(
            "Der Preis kann nach Beginn des Ticketverkaufs nicht mehr geändert werden"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Preisklasse"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Datenschutz-Bestimmungen"),
        "proceedToCheckout":
            MessageLookupByLibrary.simpleMessage("Gehe zur Kassa"),
        "proceedToPay":
            MessageLookupByLibrary.simpleMessage("Weiter zur Zahlung"),
        "profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "promotionCodeHasExpired":
            MessageLookupByLibrary.simpleMessage("Aktionscode ist abgelaufen"),
        "quantityChangedToLessThanTicketsSold":
            MessageLookupByLibrary.simpleMessage(
                "Die Anzahl der Tickets im Pool kann nicht unter die Anzahl der verkauften Tickets geändert werden"),
        "quantityTooHigh": MessageLookupByLibrary.simpleMessage(
            "Die Maximale Anzahl an Tickets beträgt 100000"),
        "quantityTooLow": MessageLookupByLibrary.simpleMessage(
            "Die Mindestanzahl an Tickets beträgt 1"),
        "rateAddingError": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Hinzufügen von Bewertung des Events"),
        "rateButtonTitle": MessageLookupByLibrary.simpleMessage("Bewerte"),
        "rateEvent": MessageLookupByLibrary.simpleMessage("Bewerte Event "),
        "rateUs": MessageLookupByLibrary.simpleMessage("Bewerte uns"),
        "receiveRewards":
            MessageLookupByLibrary.simpleMessage("Prämien sammeln"),
        "refresh": MessageLookupByLibrary.simpleMessage("Aktualisiere"),
        "register": MessageLookupByLibrary.simpleMessage("Registrieren"),
        "report": MessageLookupByLibrary.simpleMessage("Meldung"),
        "requiredNumberOfEntries": MessageLookupByLibrary.simpleMessage(
            "Erforderliche Anzahl von Eintritten"),
        "resetFilters":
            MessageLookupByLibrary.simpleMessage("Filter zurücksetzen"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Passwort zurücksetzen"),
        "resetSelectedDate": MessageLookupByLibrary.simpleMessage(
            "Ausgewähltes Datum zurücksetzen"),
        "retryConnection":
            MessageLookupByLibrary.simpleMessage("Verbindung erneut versuchen"),
        "returnTicket":
            MessageLookupByLibrary.simpleMessage("Ticket zurückgeben"),
        "returnTimeIsOver":
            MessageLookupByLibrary.simpleMessage("Rückgabezeit ist abgelaufen"),
        "returned": MessageLookupByLibrary.simpleMessage("Erstattet"),
        "revenue": MessageLookupByLibrary.simpleMessage("Einnahmen"),
        "reviewAdded":
            MessageLookupByLibrary.simpleMessage("Bewertung hinzugefügt"),
        "reviewAlreadyReported": MessageLookupByLibrary.simpleMessage(
            "Du hast diese Meinung bereits gemeldet"),
        "reviewAvg":
            MessageLookupByLibrary.simpleMessage("Meinungen durchschnittlich"),
        "reviewContent": MessageLookupByLibrary.simpleMessage("Deine Meinung"),
        "reviewContentTooLong": MessageLookupByLibrary.simpleMessage(
            "Deine Mienung darf bis zu 1000 Zeichen enthalten"),
        "reviewLoadError": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden von Bewertungen"),
        "reviewLoadingFormFailure": MessageLookupByLibrary.simpleMessage(
            "Fehler beim Laden des Bewertungsformulars"),
        "reviewReportedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Meinung erfolgreich gemeldet"),
        "reviewsQuantity":
            MessageLookupByLibrary.simpleMessage("Meinungen Anzahl "),
        "rewardAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Prämien wurden erfolgreich hinzugefügt"),
        "rewardDescTooLong": MessageLookupByLibrary.simpleMessage(
            "Die Beschreibung kann bis zu 100 Zeichen enthalten"),
        "rewardUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Prämie wurde erfolgreich aktualisiert "),
        "rewards": m6,
        "sales": MessageLookupByLibrary.simpleMessage("Verkauf"),
        "scanAnotherTicket":
            MessageLookupByLibrary.simpleMessage("Scanne anderen Ticket"),
        "scanTicket": MessageLookupByLibrary.simpleMessage("Ticket scannen"),
        "scanner": MessageLookupByLibrary.simpleMessage("Scanner"),
        "select": MessageLookupByLibrary.simpleMessage("Wähle"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Land auswählen"),
        "selectDiscount":
            MessageLookupByLibrary.simpleMessage("Rabatt auswählen"),
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Bitte Dresscode auswählen"),
        "selectEventPhoto":
            MessageLookupByLibrary.simpleMessage("Eventsfoto auswählen"),
        "selectMinAge": MessageLookupByLibrary.simpleMessage(
            "Bitte Mindestalter auswählen"),
        "selectMusicalGenres":
            MessageLookupByLibrary.simpleMessage("Bitte Musikgenres auswählen"),
        "selectNumberOfStars":
            MessageLookupByLibrary.simpleMessage("Wähle die Anzahl der Sterne"),
        "selectors": m7,
        "sendPasswordResetLink": MessageLookupByLibrary.simpleMessage(
            "Sende Link zum Zurücksetzen des Passworts "),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "Ein unerwarteter Fehler ist aufgetreten, wir wurden darüber informiert und wir werden versuchen, ihn so schnell wie möglich zu beheben. Versuche es erneut oder starte die Anwendung neu."),
        "serviceFee": MessageLookupByLibrary.simpleMessage("Servicegebühr"),
        "setYourUsername": MessageLookupByLibrary.simpleMessage(
            "Lege deinen Benutzername fest"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Zeige Ticket"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Ticket-QR-Code anzeigen"),
        "signIn": MessageLookupByLibrary.simpleMessage("Einloggen"),
        "signInWithGoogle":
            MessageLookupByLibrary.simpleMessage("Anmeldung mit Google"),
        "signOut": MessageLookupByLibrary.simpleMessage("Ausloggen"),
        "signUp": MessageLookupByLibrary.simpleMessage("Registriere dich "),
        "skipTheLine":
            MessageLookupByLibrary.simpleMessage("Ohne Warteschlange "),
        "socialMedia": MessageLookupByLibrary.simpleMessage("Sozialen Medien"),
        "sold": MessageLookupByLibrary.simpleMessage("verkauft"),
        "soldOut": MessageLookupByLibrary.simpleMessage("Ausverkauft"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "startDate": MessageLookupByLibrary.simpleMessage("Anfangsdatum"),
        "startDateBeforeNow": MessageLookupByLibrary.simpleMessage(
            "Das Startdatum darf nicht vor dem aktuellen Datum liegen"),
        "startDateTooLate": MessageLookupByLibrary.simpleMessage(
            "Das maximale Startdatum beträgt 150 Tage ab heute"),
        "startScanning":
            MessageLookupByLibrary.simpleMessage("Scannen beginnen"),
        "startSearching":
            MessageLookupByLibrary.simpleMessage("Fang an zu suchen..."),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistiken"),
        "statisticsUpdateInfo": MessageLookupByLibrary.simpleMessage(
            "Die Statistiken werden nach Ende des Events aktualisiert"),
        "stayUpdated":
            MessageLookupByLibrary.simpleMessage("Bleib auf dem Laufenden"),
        "submit": MessageLookupByLibrary.simpleMessage("Bestätige"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Zwischensumme"),
        "summary": MessageLookupByLibrary.simpleMessage("Zusammenfassung"),
        "termsOfService": MessageLookupByLibrary.simpleMessage(
            "Allgemeine Geschäftsbedingungen"),
        "theme": MessageLookupByLibrary.simpleMessage("Thema"),
        "ticketAlreadyHasVipStatus": MessageLookupByLibrary.simpleMessage(
            "Ticket hat bereits VIP-Status"),
        "ticketExpired":
            MessageLookupByLibrary.simpleMessage("Ticket abgelaufen"),
        "ticketForAnotherEvent": MessageLookupByLibrary.simpleMessage(
            "Das Ticket ist für ein anderes Event"),
        "ticketNoLongerAvailable": MessageLookupByLibrary.simpleMessage(
            "das Ticket ist nicht mehr verfügbar"),
        "ticketPoolHasBeenAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticketpool wurde erfolgreich hinzugefügt "),
        "ticketPoolHasBeenDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticketpool wurde erfolgreich gelöscht"),
        "ticketPoolHasBeenUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Ticketpool wurde erfolgreich aktualisiert"),
        "ticketPoolHasSoldOut": MessageLookupByLibrary.simpleMessage(
            "Ticketpool wurde ausverkauft!"),
        "ticketPools": MessageLookupByLibrary.simpleMessage("Ticketpool"),
        "ticketPrice": MessageLookupByLibrary.simpleMessage("Ticket Preis"),
        "ticketPriceHasChanged": MessageLookupByLibrary.simpleMessage(
            "Ticketpreis hat sich geändert"),
        "ticketPriceTooHigh": MessageLookupByLibrary.simpleMessage(
            "Der maximale Ticketspreis beträgt "),
        "ticketPriceTooLow": MessageLookupByLibrary.simpleMessage(
            "Ticket Mindestpreis beträgt "),
        "ticketReturned":
            MessageLookupByLibrary.simpleMessage("Ticket wurde zurückgegeben"),
        "ticketReturnedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Ticket erfolgreich zurückgegeben"),
        "ticketScanned":
            MessageLookupByLibrary.simpleMessage("gescannter Ticket"),
        "tickets": m8,
        "ticketsAvailableOnlyAtGate": MessageLookupByLibrary.simpleMessage(
            "Tickets nur an der Abendkasse erhältlich"),
        "ticketsSold": MessageLookupByLibrary.simpleMessage("Tickets verkauft"),
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "to": MessageLookupByLibrary.simpleMessage("Zu"),
        "tonight": MessageLookupByLibrary.simpleMessage("Tonight"),
        "tonightPartners":
            MessageLookupByLibrary.simpleMessage("Tonight Partner"),
        "tonightScanner":
            MessageLookupByLibrary.simpleMessage("Tonight Scanner"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Die maximale Anzahl erforderlicher Eitritte beträgt 1000"),
        "total": MessageLookupByLibrary.simpleMessage("Summe"),
        "totalRevenue": MessageLookupByLibrary.simpleMessage("Gesamteinnahmen"),
        "tryAgain":
            MessageLookupByLibrary.simpleMessage("Versuche es nochmal "),
        "typeClubCityOrStreet": MessageLookupByLibrary.simpleMessage(
            "Gebe den Namen des Clubs, der Stadt oder der Straße ein"),
        "typeEventClubOrArtistName": MessageLookupByLibrary.simpleMessage(
            "Gib den Namen von Event, Club oder Künstler ein"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Unerwarteter Fehler"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Kommende"),
        "upcomingAndLive":
            MessageLookupByLibrary.simpleMessage("Demnächst und live "),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Kommende Events"),
        "upgradeTicketToVipAndEnterClub": MessageLookupByLibrary.simpleMessage(
            "Upgrade dein Ticket auf VIP und komm zum Club ohne Warteschlange "),
        "upgradeToVip": MessageLookupByLibrary.simpleMessage("Upgrade auf VIP"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("URL-Links"),
        "userAlreadyHasTicket": MessageLookupByLibrary.simpleMessage(
            "Du hast bereits Tickets für diesen Event. "),
        "userDisabled": MessageLookupByLibrary.simpleMessage(
            "Dieses Konto wurde deaktiviert"),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "E-Mail nicht gefunden, bitte erstelle ein Konto"),
        "username": MessageLookupByLibrary.simpleMessage("Benutzername"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Benutzername bereits vergeben"),
        "usernameContainsSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Der Benutzername darf keine Sonderzeichen enthalten"),
        "usernameTooLong": MessageLookupByLibrary.simpleMessage(
            "Der Benutzername sollte bis zu 20 Zeichen enthalten"),
        "usernameTooShort": MessageLookupByLibrary.simpleMessage(
            "Der Benutzername sollte mindestens 3 Zeichen enthalten"),
        "usernameUpdatedMessage": MessageLookupByLibrary.simpleMessage(
            "Benutzername wurde aktualisiert"),
        "validTicket": MessageLookupByLibrary.simpleMessage("Gültiges Ticket"),
        "vatNumber": MessageLookupByLibrary.simpleMessage("UID Nummer"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "Ein Verifizierungslink wurde an die angegebene E-Mail-Adresse gesendet, dieser muss telefonisch bestätigt werden"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipAvailableAgain":
            MessageLookupByLibrary.simpleMessage("VIP ist wieder verfügbar!"),
        "vipInfo": MessageLookupByLibrary.simpleMessage(
            "Mit dem VIP-Ticket kannst du die Warteschlange zum Club überspringen"),
        "vipNoLongerAvailable": MessageLookupByLibrary.simpleMessage(
            "VIP ist nicht mehr verfügbar"),
        "vipNotEnabledInfo": MessageLookupByLibrary.simpleMessage(
            "Für dieses Event ist derzeit kein VIP-Ticket verfügbar"),
        "vipPrice": MessageLookupByLibrary.simpleMessage("VIP Preis"),
        "vipPriceHasChanged":
            MessageLookupByLibrary.simpleMessage("VIP Preis hat sich geändert"),
        "vipPriceTooHigh": MessageLookupByLibrary.simpleMessage(
            "Der maximale VIP Preis beträgt"),
        "vipPriceTooLow": MessageLookupByLibrary.simpleMessage(
            "Der VIP-Mindestpreis beträgt"),
        "vipValidTicket":
            MessageLookupByLibrary.simpleMessage("VIP, gültiges Ticket"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "vips": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipsSold": MessageLookupByLibrary.simpleMessage("Verkaufte VIPs"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Passwort ist zu schwach"),
        "welcomeToTonight":
            MessageLookupByLibrary.simpleMessage("Willkommen in Tonight!"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Falsches Passwort"),
        "yes": MessageLookupByLibrary.simpleMessage("Ja"),
        "yourNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Anzahl der Besuche"),
        "yourOpinion": MessageLookupByLibrary.simpleMessage("Deine Meinung"),
        "yourRate": MessageLookupByLibrary.simpleMessage("Deine Bewertung")
      };
}
