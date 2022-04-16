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
      "${Intl.plural(count, zero: 'wejść', one: 'wejście', few: 'wejścia', many: 'wejść', other: 'wejścia')}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'Brak wydarzeń', one: 'Wydarzenie', few: 'Wydarzenia', many: 'Wydarzeń', other: 'Wydarzenia')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Opinii', one: 'Opinia', few: 'Opinie', many: 'Opinii', other: 'Opinie')}";

  static String m5(count) =>
      "${Intl.plural(count, zero: 'Brak zdjęć', one: 'Zdjęcie', few: 'Zdjęcia', many: 'Zdjęć', other: 'Zdjęcia')}";

  static String m6(count) =>
      "${Intl.plural(count, zero: 'Brak nagród', one: 'Nagroda', few: 'Nagrody', many: 'Nagród', other: 'Nagrody')}";

  static String m7(count) =>
      "${Intl.plural(count, zero: 'Brak biletów', one: 'Bilet', few: 'Bilety', many: 'Biletów', other: 'Biletu')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("O nas"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "Konto dla tego adresu e-mail już istnieje"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Ustawienia konta"),
        "accountSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ustawienia Konta"),
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
        "backToMainMenu":
            MessageLookupByLibrary.simpleMessage("Wróć do głównego menu"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Wróć do podsumowania"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Kup bilet"),
        "cancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Anulowano"),
        "cancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Operacja anulowana przez użytkownika"),
        "changePasswordTitle":
            MessageLookupByLibrary.simpleMessage("Zmień Hasło"),
        "checkout": MessageLookupByLibrary.simpleMessage("Kasa"),
        "city": MessageLookupByLibrary.simpleMessage("Miasto"),
        "clubs": m1,
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Informacje o koncercie"),
        "confirm": MessageLookupByLibrary.simpleMessage("Potwierdź"),
        "confirmDeleteMessage": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz usunąć ten element?"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Potwierdź hasło"),
        "confirmTicketReturn": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz zwrócić bilet?"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "currentPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Aktualne Hasło"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Ciemny motyw"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Panel"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Data i czas"),
        "delete": MessageLookupByLibrary.simpleMessage("Usuń"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Opis może zawierać maksymalnie 1000 znaków"),
        "description": MessageLookupByLibrary.simpleMessage("Opis"),
        "details": MessageLookupByLibrary.simpleMessage("Szczegóły"),
        "djChannel": MessageLookupByLibrary.simpleMessage("Kanał DJ\'a"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "editReward": MessageLookupByLibrary.simpleMessage("Edytuj nagrodę"),
        "elegant": MessageLookupByLibrary.simpleMessage("Elegant"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "emailAlreadyInUse":
            MessageLookupByLibrary.simpleMessage("E-mail jest już w użyciu"),
        "emptyFavoriteClubsMessage": MessageLookupByLibrary.simpleMessage(
            "Twoje ulubione kluby pojawią się tutaj"),
        "emptyFavoriteEventsMessage": MessageLookupByLibrary.simpleMessage(
            "Twoje ulubione wydarzenia pojawią się tutaj"),
        "enableLocation":
            MessageLookupByLibrary.simpleMessage("Włącz lokalizację"),
        "endDate": MessageLookupByLibrary.simpleMessage("Data zakończenia"),
        "endDateBeforeStart": MessageLookupByLibrary.simpleMessage(
            "Data zakończenia nie może być przed datą rozpoczęcia"),
        "enterArtistName": MessageLookupByLibrary.simpleMessage(
            "Proszę podać nazwę wykonawcy"),
        "enterDesc": MessageLookupByLibrary.simpleMessage("Proszę podać opis"),
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
        "enterRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Proszę podać wymaganą liczbę wejść"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadzić datę i godzinę rozpoczęcia"),
        "enterUsername":
            MessageLookupByLibrary.simpleMessage("Wprowadź nazwę użytkownika"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Wprowadź prawidłowy adres e-mail"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Proszę podać link do Youtube"),
        "entries": m2,
        "errorAddingEvent": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania wydarzenia"),
        "errorAddingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania nagrody"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas zmiany statusu zdarzenia"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Sprawdź połączenie z internetem"),
        "errorDeletingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania nagrody"),
        "errorDialogTitle":
            MessageLookupByLibrary.simpleMessage("Raver się wykrzaczył!"),
        "errorLoadingClubs": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania klubów"),
        "errorLoadingEventDetails": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania szczegółów wydarzenia"),
        "errorLoadingEvents": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania wydarzeń"),
        "errorLoadingFavoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania informacji o ulubionych klubach"),
        "errorLoadingFavoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania informacji o ulubionych wydarzeniach"),
        "errorLoadingFilters": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania filtrów"),
        "errorLoadingPhotos": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania zdjęć"),
        "errorLoadingProfile": MessageLookupByLibrary.simpleMessage(
            "Wystapił błąd podczas ładowania danych profilu"),
        "errorLoadingRewards": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania nagród"),
        "errorLoadingTickets": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania biletów"),
        "errorMakingCall": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas wykonywania połączenia"),
        "errorOpeningLink": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas otwierania linku"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Błąd podczas otwierania map"),
        "errorUpdatingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas aktualizacji nagrody "),
        "eventAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie zostało dodane pomyślnie"),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Szczegóły wydarzenia"),
        "eventName": MessageLookupByLibrary.simpleMessage("Nazwa wydarzenia"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie powinno trwać co najmniej godzinę"),
        "events": m3,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Wyjdź"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent":
            MessageLookupByLibrary.simpleMessage("Wydarzenie na Facebooku"),
        "favoriteClubs": MessageLookupByLibrary.simpleMessage("Ulubione kluby"),
        "favoriteEvents":
            MessageLookupByLibrary.simpleMessage("Ulubione wydarzenia"),
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
        "invalidQrCode":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowy kod QR"),
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
        "newPassword": MessageLookupByLibrary.simpleMessage("Nowe hasło"),
        "next": MessageLookupByLibrary.simpleMessage("Dalej"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noDressCode":
            MessageLookupByLibrary.simpleMessage("Brak dress code\'u"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w tym klubie"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w pobliżu"),
        "noLiveEvent": MessageLookupByLibrary.simpleMessage(
            "Brak wydarzenia na żywo w twoim klubie"),
        "notifications": MessageLookupByLibrary.simpleMessage("Powiadomienia"),
        "onboardingWelcomeSubtitle": MessageLookupByLibrary.simpleMessage(
            "Na początek ustawmy Twoją nazwę użytkownika"),
        "onboardingWelcomeTitle":
            MessageLookupByLibrary.simpleMessage("Witaj na pokładzie!"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Operacja nie jest dozwolona"),
        "opinions": m4,
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
        "passwordUpdatedMessage": MessageLookupByLibrary.simpleMessage(
            "Hasło zostało zaktualizowane!"),
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
        "photos": m5,
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
        "raverScanner": MessageLookupByLibrary.simpleMessage("Raver Scanner"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "requiredNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Wymagana liczba wejść"),
        "resetFilters": MessageLookupByLibrary.simpleMessage("Zresetuj filtry"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Zresetuj hasło"),
        "resetSelectedDate":
            MessageLookupByLibrary.simpleMessage("Zresetuj wybraną datę"),
        "retryConnection":
            MessageLookupByLibrary.simpleMessage("Ponów Połączenie"),
        "returnTicket": MessageLookupByLibrary.simpleMessage("Zwróć bilet"),
        "returnTimeIsOver":
            MessageLookupByLibrary.simpleMessage("Czas na zwrot minął"),
        "rewardAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Nagroda została dodana pomyślnie"),
        "rewardUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Nagroda została zaaktualizowana pomyślnie"),
        "rewards": m6,
        "scanAnotherTicket":
            MessageLookupByLibrary.simpleMessage("Zeskanuj kolejny bilet"),
        "scanTicket": MessageLookupByLibrary.simpleMessage("Zeskanuj bilet"),
        "scanner": MessageLookupByLibrary.simpleMessage("Skaner"),
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Proszę wybrać dress code"),
        "selectMinAge": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać minimalny wiek"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać gatunki muzyczne"),
        "sendPasswordResetLink": MessageLookupByLibrary.simpleMessage(
            "Wyślij link do resetowania hasła"),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "Wystąpił nieoczekiwany błąd, proszę skontaktować się z pomocą"),
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
        "startScanning":
            MessageLookupByLibrary.simpleMessage("Rozpocznij skanowanie"),
        "submit": MessageLookupByLibrary.simpleMessage("Zatwierdź"),
        "summary": MessageLookupByLibrary.simpleMessage("Podsumowanie"),
        "termsOfService": MessageLookupByLibrary.simpleMessage("Warunki usług"),
        "theme": MessageLookupByLibrary.simpleMessage("Motyw"),
        "ticketAlreadyHasVipStatus":
            MessageLookupByLibrary.simpleMessage("Bilet ma już status VIP"),
        "ticketExpired":
            MessageLookupByLibrary.simpleMessage("Bilet stracił ważność"),
        "ticketForAnotherEvent": MessageLookupByLibrary.simpleMessage(
            "Bilet jest na inne wydarzenie"),
        "ticketReturnedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Bilet zwrócono pomyślnie"),
        "tickets": m7,
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Maksymalna liczba wymaganych wejść wynosi 1000"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Nieoczekiwany błąd"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Nadchodzące wydarzenia"),
        "updateUsernameTitle": MessageLookupByLibrary.simpleMessage(
            "Zaktualizuj nazwę użytkownika"),
        "upgradeToVip": MessageLookupByLibrary.simpleMessage("Ulepsz do VIP-a"),
        "urlLinks": MessageLookupByLibrary.simpleMessage("Linki URL"),
        "userDisabled":
            MessageLookupByLibrary.simpleMessage("To konto zostało wyłączone"),
        "userNotFound": MessageLookupByLibrary.simpleMessage(
            "Nie znaleziono e-maila, utwórz konto"),
        "username": MessageLookupByLibrary.simpleMessage("Nazwa użytkownika"),
        "usernameAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika jest już w użyciu"),
        "usernameContainsSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Nazwa użytkownika nie może posiadać znaków specjalnych"),
        "usernameTooLong": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika jest za długa, użyj maksymalnie 20 znaków"),
        "usernameTooShort": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika jest za krótka"),
        "usernameUpdatedMessage": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika została zaktualizowana!"),
        "validTicket": MessageLookupByLibrary.simpleMessage("Ważny bilet"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "Wysłano link weryfikacyjny na podany adres e-mail"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipValidTicket":
            MessageLookupByLibrary.simpleMessage("VIP, ważny bilet"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło jest za słabe"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowe hasło"),
        "yes": MessageLookupByLibrary.simpleMessage("Tak")
      };
}
