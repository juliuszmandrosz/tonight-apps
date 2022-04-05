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
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Ustawienia konta"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Dodaj wydarzenie"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Dodaj kod promocyjny"),
        "addReward": MessageLookupByLibrary.simpleMessage("Dodaj nagrodę"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Dodatkowe informacje"),
        "age": MessageLookupByLibrary.simpleMessage("Wiek"),
        "appVersion": MessageLookupByLibrary.simpleMessage("Wersja aplikacji"),
        "appliedPromotionCode":
            MessageLookupByLibrary.simpleMessage("Zastosowany kod promocyjny"),
        "apply": MessageLookupByLibrary.simpleMessage("Zastosuj"),
        "applyFilters":
            MessageLookupByLibrary.simpleMessage("Zatwierdź filtry"),
        "applySelectedDate":
            MessageLookupByLibrary.simpleMessage("Zatwierdź wybraną datę"),
        "artistName": MessageLookupByLibrary.simpleMessage("Nazwa artysty"),
        "attending": m0,
        "back": MessageLookupByLibrary.simpleMessage("Wróć"),
        "backToEventList":
            MessageLookupByLibrary.simpleMessage("Wróć do listy wydarzeń"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Wróć do podsumowania"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Kup bilet"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Anulowano"),
        "cancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Operacja anulowana przez użytkownika"),
        "checkout": MessageLookupByLibrary.simpleMessage("Kasa"),
        "city": MessageLookupByLibrary.simpleMessage("Miasto"),
        "clubs": m1,
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Informacje o koncercie"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Potwierdź hasło"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Panel"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Data i czas"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Opis może zawierać maksymalnie 1000 znaków"),
        "description": MessageLookupByLibrary.simpleMessage("Opis"),
        "details": MessageLookupByLibrary.simpleMessage("Szczegóły"),
        "djChannel": MessageLookupByLibrary.simpleMessage("Kanał DJ\'a"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-mail jest już w użyciu"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Włącz lokalizację"),
        "endDate": MessageLookupByLibrary.simpleMessage("Data zakończenia"),
        "endDateBeforeStart": MessageLookupByLibrary.simpleMessage(
            "Data zakończenia nie może być przed datą rozpoczęcia"),
        "enterArtistName": MessageLookupByLibrary.simpleMessage(
            "Proszę podać nazwę wykonawcy"),
        "enterDjChannelUrl": MessageLookupByLibrary.simpleMessage(
            "Proszę podać link do kanału dj\'a"),
        "enterEmail": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadź adres e-mail"),
        "enterEndDateTime": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadzić datę i godzinę zakończenia"),
        "enterEventName": MessageLookupByLibrary.simpleMessage(
            "Proszę podać nazwę wydarzenia"),
        "enterFacebookLink": MessageLookupByLibrary.simpleMessage(
            "Porszę podać link do Facebooka"),
        "enterFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Proszę podać link do wydarzenia na Facebooku"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Proszę wprowadź hasło"),
        "enterPrice": MessageLookupByLibrary.simpleMessage("Proszę podać cenę"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadzić datę i godzinę rozpoczęcia"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Wprowadź prawidłowy adres e-mail"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Proszę podać link do Youtube"),
        "errorAddingEvent": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania wydarzenia"),
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
        "errorLoadingProfile": MessageLookupByLibrary.simpleMessage(
            "Wystapił błąd podczas ładowania danych profilu"),
        "errorLoadingTickets": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania biletów"),
        "errorMakingCall": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas wykonywania połączenia"),
        "errorOpeningLink": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas otwierania linku"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Błąd podczas otwierania map"),
        "eventAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie zostało dodane pomyślnie"),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Szczegóły wydarzenia"),
        "eventName": MessageLookupByLibrary.simpleMessage("Nazwa wydarzenia"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie powinno trwać co najmniej godzinę"),
        "events": m2,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Wyjdź"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
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
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidCredential": MessageLookupByLibrary.simpleMessage(
            "Otrzymane poświadczenia są nieprawidłowe lub wygasły"),
        "invalidEmail": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy format adresu e-mail"),
        "invalidEvent": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie zostało usunięte przez klub"),
        "invalidPromotionCode": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy kod promocyjny"),
        "invalidUrl": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy format adresu URL"),
        "invalidVerificationCode": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy kod weryfikacyjny"),
        "invalidVerificationId": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy identyfikator weryfikacji"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Koncert"),
        "live": MessageLookupByLibrary.simpleMessage("Na żywo"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "lostNetworkConnectionDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utraciłeś połączenie z internetem"),
        "map": MessageLookupByLibrary.simpleMessage("Mapa"),
        "maxDistance":
            MessageLookupByLibrary.simpleMessage("Maksymalna odległość"),
        "maxThreeMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać maksymalnie 3 gatunki muzyczne"),
        "milestones": MessageLookupByLibrary.simpleMessage("Kamienie milowe"),
        "minAge": MessageLookupByLibrary.simpleMessage("Minimalny wiek"),
        "music": MessageLookupByLibrary.simpleMessage("Muzyka"),
        "musicalGenres":
            MessageLookupByLibrary.simpleMessage("Gatunki muzyczne"),
        "nameAndDesc": MessageLookupByLibrary.simpleMessage("Nazwa i opis"),
        "nameTooLong": MessageLookupByLibrary.simpleMessage(
            "Nazwa może zawierać maksymalnie 50 znaków"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Nazwa powinna zawierać co najmniej 8 znaków"),
        "next": MessageLookupByLibrary.simpleMessage("Dalej"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noDressCode":
            MessageLookupByLibrary.simpleMessage("Brak dress code\'u"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w tym klubie"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w pobliżu"),
        "notifications": MessageLookupByLibrary.simpleMessage("Powiadomienia"),
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
        "paymentConfirmed":
            MessageLookupByLibrary.simpleMessage("Płatność potwierdzona"),
        "paymentError": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas płatności, proszę skontaktuj się z obsługą"),
        "photos": m4,
        "price": MessageLookupByLibrary.simpleMessage("Cena"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Zakres cen"),
        "priceTooLow": MessageLookupByLibrary.simpleMessage(
            "Minimalna cena biletu to 20 złotych"),
        "proceedToPay":
            MessageLookupByLibrary.simpleMessage("Przejdź do płatności"),
        "profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "promotionCodeHasExpired":
            MessageLookupByLibrary.simpleMessage("Kod promocyjny wygasł"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Oceń nas"),
        "raver": MessageLookupByLibrary.simpleMessage("Raver"),
        "raverPartners": MessageLookupByLibrary.simpleMessage("Raver Partners"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "resetFilters": MessageLookupByLibrary.simpleMessage("Zresetuj filtry"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Zresetuj hasło"),
        "resetSelectedDate":
            MessageLookupByLibrary.simpleMessage("Zresetuj wybraną datę"),
        "retryConnection":
            MessageLookupByLibrary.simpleMessage("Ponów Połączenie"),
        "rewards": m5,
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Proszę wybrać dress code"),
        "selectMinAge": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać minimalny wiek"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać gatunki muzyczne"),
        "sendPasswordResetLink": MessageLookupByLibrary.simpleMessage(
            "Wyślij link do resetowania hasła"),
        "serverError": MessageLookupByLibrary.simpleMessage("Błąd serwera"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Pokaż bilet"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Pokaż kod QR biletu"),
        "signIn": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
            "Zaloguj się za pomocą Google"),
        "signUp": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "socialMedia":
            MessageLookupByLibrary.simpleMessage("Media społecznościowe"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "startDate": MessageLookupByLibrary.simpleMessage("Data rozpoczęcia"),
        "submit": MessageLookupByLibrary.simpleMessage("Zatwierdź"),
        "summary": MessageLookupByLibrary.simpleMessage("Podsumowanie"),
        "termsOfService": MessageLookupByLibrary.simpleMessage("Warunki usług"),
        "tickets": m6,
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Nieoczekiwany błąd"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Nadchodzące wydarzenia"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("Linki URL"),
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
