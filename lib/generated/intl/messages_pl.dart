// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'Uczestników', one: 'Uczestnik', few: 'Uczestników', many: 'Uczestników', other: 'Uczestników')}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'Brak klubów', one: 'Klub', few: 'Kluby', many: 'Klubów', other: 'Klubu')}";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'Brak wydarzeń', one: 'Wydarzenie', few: 'Wydarzenia', many: 'Wydarzeń', other: 'Wydarzenia')}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'Opinii', one: 'Opinia', few: 'Opinie', many: 'Opinii', other: 'Opinie')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Brak zdjęć', one: 'Zdjęcie', few: 'Zdjęcia', many: 'Zdjęć', other: 'Zdjęcia')}";

  static String m5(count) =>
      "${Intl.plural(count, zero: 'Brak nagród', one: 'Nagroda', few: 'Nagrody', many: 'Nagród', other: 'Nagrody')}";

  static String m6(count) =>
      "${Intl.plural(count, zero: 'Brak biletów', one: 'Bilet', few: 'Bilety', many: 'Biletów', other: 'Biletu')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("O nas"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "Konto dla tego adresu e-mail już istnieje"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Dodaj wydarzenie"),
        "addReward": MessageLookupByLibrary.simpleMessage("Dodaj nagrodę"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Dodatkowe informacje"),
        "age": MessageLookupByLibrary.simpleMessage("Wiek"),
        "applyFilters":
            MessageLookupByLibrary.simpleMessage("Zatwierdź filtry"),
        "applySelectedDate":
            MessageLookupByLibrary.simpleMessage("Zatwierdź wybraną datę"),
        "attending": m0,
        "buyTicket": MessageLookupByLibrary.simpleMessage("Kup bilet"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Anulowano"),
        "cancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Operacja anulowana przez użytkownika"),
        "checkout": MessageLookupByLibrary.simpleMessage("Kasa"),
        "city": MessageLookupByLibrary.simpleMessage("Miasto"),
        "clubs": m1,
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Potwierdź hasło"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Panel"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "details": MessageLookupByLibrary.simpleMessage("Szczegóły"),
        "djChannel": MessageLookupByLibrary.simpleMessage("Kanał DJ\'a"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-mail jest już w użyciu"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Włącz lokalizację"),
        "enterEmail": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadź adres e-mail"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Proszę wprowadź hasło"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Wprowadź prawidłowy adres e-mail"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas zmiany statusu zdarzenia"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Sprawdź połączenie z internetem"),
        "errorDialogTitle":
            MessageLookupByLibrary.simpleMessage("Raver się wykrzaczył!"),
        "errorLoadingClubs": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania klubów"),
        "errorLoadingEventDetails": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania szczegółów wydarzenia"),
        "errorLoadingEvents": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania wydarzeń"),
        "errorLoadingFavoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania informacji o ulubionych wydarzeniach"),
        "errorLoadingFilters": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania filtrów"),
        "errorLoadingPhotos": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania zdjęć"),
        "errorLoadingTickets": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania biletów"),
        "errorMakingCall": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas wykonywania połączenia"),
        "errorOpeningLink": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas otwierania linku"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Błąd podczas otwierania map"),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Szczegóły wydarzenia"),
        "events": m2,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Wyjdź"),
        "facebookEvent":
            MessageLookupByLibrary.simpleMessage("Wydarzenie na Facebooku"),
        "favorites": MessageLookupByLibrary.simpleMessage("Ulubione"),
        "filters": MessageLookupByLibrary.simpleMessage("Filtry"),
        "findByCity": MessageLookupByLibrary.simpleMessage("Mieście"),
        "findByMaxDistance":
            MessageLookupByLibrary.simpleMessage("Maksymalnej odległości"),
        "findEventPlaceBy": MessageLookupByLibrary.simpleMessage(
            "Znajdź miejsce wydarzenia po"),
        "findInMap": MessageLookupByLibrary.simpleMessage("Znajdź na mapie"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Zapomniałeś hasła?"),
        "home": MessageLookupByLibrary.simpleMessage("Główna"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "Otrzymane poświadczenia są nieprawidłowe lub wygasły"),
        "invalidEmail": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy format adresu e-mail"),
        "invalidVerificationCode": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy kod weryfikacyjny"),
        "invalidVerificationId": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy identyfikator weryfikacji"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Koncert"),
        "live": MessageLookupByLibrary.simpleMessage("Na żywo"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "maxDistance":
            MessageLookupByLibrary.simpleMessage("Maksymalna odległość"),
        "milestones": MessageLookupByLibrary.simpleMessage("Kamienie milowe"),
        "music": MessageLookupByLibrary.simpleMessage("Muzyka"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noDressCode":
            MessageLookupByLibrary.simpleMessage("Brak dress code\'u"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w tym klubie"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w pobliżu"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Operacja nie jest dozwolona"),
        "opinions": m3,
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "passwordDigit": MessageLookupByLibrary.simpleMessage(
            "Hasło powinno zawierać co najmniej jedną cyfrę"),
        "passwordLowerCase": MessageLookupByLibrary.simpleMessage(
            "Hasło powinno zawierać co najmniej jedną małą literę"),
        "passwordResetLinkSent": MessageLookupByLibrary.simpleMessage(
            "Wysłano link do zresetowania hasła"),
        "passwordSpecialCharacter": MessageLookupByLibrary.simpleMessage(
            "Hasło powinno zawierać co najmniej jeden znak specjalny"),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "Hasło powinno zawierać co najmniej 8 znaków"),
        "passwordUpperCase": MessageLookupByLibrary.simpleMessage(
            "Hasło powinno zawierać co najmniej jedną wielką literę"),
        "passwordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Hasła się nie zgadzają"),
        "past": MessageLookupByLibrary.simpleMessage("Przeszłe"),
        "pastTickets": MessageLookupByLibrary.simpleMessage("Przeszłe bilety"),
        "photos": m4,
        "priceRange": MessageLookupByLibrary.simpleMessage("Zakres cen"),
        "profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "raver": MessageLookupByLibrary.simpleMessage("Raver"),
        "raverPartners": MessageLookupByLibrary.simpleMessage("Raver Partners"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "resetFilters": MessageLookupByLibrary.simpleMessage("Zresetuj filtry"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Zresetuj hasło"),
        "resetSelectedDate":
            MessageLookupByLibrary.simpleMessage("Zresetuj wybraną datę"),
        "rewards": m5,
        "sendPasswordResetLink": MessageLookupByLibrary.simpleMessage(
            "Wyślij link do resetowania hasła"),
        "serverError": MessageLookupByLibrary.simpleMessage("Błąd serwera"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Pokaż bilet"),
        "signIn": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
            "Zaloguj się za pomocą Google"),
        "signUp": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "socialMedia":
            MessageLookupByLibrary.simpleMessage("Media społecznościowe"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "tickets": m6,
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Nieoczekiwany błąd"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Nadchodzące wydarzenia"),
        "userDisabled":
            MessageLookupByLibrary.simpleMessage("To konto zostało wyłączone"),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Nie znaleziono e-maila, utwórz konto"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "Wysłano link weryfikacyjny na podany adres e-mail"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło jest za słabe"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowe hasło"),
        "yes": MessageLookupByLibrary.simpleMessage("Tak")
      };
}
