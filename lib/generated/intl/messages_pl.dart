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
      "${Intl.plural(count, zero: 'Brak selekcjonerów', one: 'Selekcjoner', few: 'Selekcjonerzy', many: 'Selekcjonerów', other: 'Selekcjonerów')}";

  static String m8(count) =>
      "${Intl.plural(count, zero: 'Brak biletów', one: 'Bilet', few: 'Bilety', many: 'Biletów', other: 'Biletu')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("O nas"),
        "accessCode": MessageLookupByLibrary.simpleMessage("Kod dostępu"),
        "accessCodeEmpty":
            MessageLookupByLibrary.simpleMessage("Proszę podaj kod dostępu"),
        "accountExists": MessageLookupByLibrary.simpleMessage(
            "Konto dla tego adresu e-mail już istnieje"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Ustawienia konta"),
        "accountSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ustawienia Konta"),
        "add": MessageLookupByLibrary.simpleMessage("Dodaj"),
        "addAtLeastOneTicketPool": MessageLookupByLibrary.simpleMessage(
            "Należy dodać co najmniej jedną pulę biletów"),
        "addClubToFavoritesAndReceiveNotifications":
            MessageLookupByLibrary.simpleMessage(
                "Dodaj klub do ulubionych i otrzymuj powiadomienia jak tylko doda nowe wydarzenie lub nagrodę"),
        "addDescription": MessageLookupByLibrary.simpleMessage("Dodaj opis"),
        "addDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Dodaj link do kanału DJ-a na YouTube"),
        "addEvent": MessageLookupByLibrary.simpleMessage("Dodaj wydarzenie"),
        "addFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Dodaj link URL wydarzenia na Facebooku"),
        "addPromotionCode":
            MessageLookupByLibrary.simpleMessage("Dodaj kod promocyjny"),
        "addReward": MessageLookupByLibrary.simpleMessage("Dodaj nagrodę"),
        "addTicketPool":
            MessageLookupByLibrary.simpleMessage("Dodaj pulę biletów"),
        "additionalInfo":
            MessageLookupByLibrary.simpleMessage("Dodatkowe informacje"),
        "age": MessageLookupByLibrary.simpleMessage("Wiek"),
        "allowVipTickets":
            MessageLookupByLibrary.simpleMessage("Zezwól na bilety VIP"),
        "anyCurrency": MessageLookupByLibrary.simpleMessage("Dowolna"),
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
        "availableSoon":
            MessageLookupByLibrary.simpleMessage("Wkrótce dostępne"),
        "back": MessageLookupByLibrary.simpleMessage("Wróć"),
        "backToEventList":
            MessageLookupByLibrary.simpleMessage("Wróć do listy wydarzeń"),
        "backToHomePage":
            MessageLookupByLibrary.simpleMessage("Wróć do strony głównej"),
        "backToMainMenu":
            MessageLookupByLibrary.simpleMessage("Wróć do głównego menu"),
        "backToSummary":
            MessageLookupByLibrary.simpleMessage("Wróć do podsumowania"),
        "buyTicket": MessageLookupByLibrary.simpleMessage("Kup wejściówkę"),
        "cancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "cancelEvent":
            MessageLookupByLibrary.simpleMessage("Odwołaj wydarzenie"),
        "cancelTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Czas na odwołanie wydarzenia upłynął"),
        "canceled": MessageLookupByLibrary.simpleMessage("Odwołano"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Anulowano"),
        "cancelledByUser": MessageLookupByLibrary.simpleMessage(
            "Operacja anulowana przez użytkownika"),
        "changePasswordTitle":
            MessageLookupByLibrary.simpleMessage("Zmień Hasło"),
        "changeUsername":
            MessageLookupByLibrary.simpleMessage("Zmień nazwę użytkownika"),
        "checkout": MessageLookupByLibrary.simpleMessage("Kasa"),
        "city": MessageLookupByLibrary.simpleMessage("Miasto"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Wyczyść filtry"),
        "clubDoesNotOfferRewards": MessageLookupByLibrary.simpleMessage(
            "Klub nie posiada systemu nagród"),
        "clubName": MessageLookupByLibrary.simpleMessage("Nazwa klubu"),
        "clubReviewsLoadingError": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd podczas ładowania opinii klubu"),
        "clubs": m1,
        "company": MessageLookupByLibrary.simpleMessage("Firma"),
        "companyName": MessageLookupByLibrary.simpleMessage("Nazwa firmy"),
        "concert": MessageLookupByLibrary.simpleMessage("Koncert"),
        "concertInfo":
            MessageLookupByLibrary.simpleMessage("Informacje o koncercie"),
        "confirm": MessageLookupByLibrary.simpleMessage("Zatwierdź"),
        "confirmDeleteMessage": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz usunąć ten element?"),
        "confirmEventCancelation": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz anulować wydarzenie? Możesz ponieść opłaty związane z przetwarzaniem dotychczasowych płatności"),
        "confirmEventPostpone": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz przełożyć wydarzenie? Możesz ponieść opłaty związane z przetwarzaniem dotychczasowych płatności"),
        "confirmLeavingPage": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz opuścić bieżącą stronę? Zmiany nie zostaną zapisane"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Potwierdź hasło"),
        "confirmReviewReport": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz zgłosić tę opinię jako niewłaściwą?"),
        "confirmSelectorDeletion": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz usunąć tego selekcjonera?"),
        "confirmSignOut": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz się wylogować?"),
        "confirmTicketReturn": MessageLookupByLibrary.simpleMessage(
            "Czy na pewno chcesz zwrócić bilet?"),
        "contact": MessageLookupByLibrary.simpleMessage("Kontakt"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Skopiowano do schowka"),
        "currency": MessageLookupByLibrary.simpleMessage("Waluta"),
        "currentPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Aktualne Hasło"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("Ciemny motyw"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Panel"),
        "date": MessageLookupByLibrary.simpleMessage("Data"),
        "dateAndTime": MessageLookupByLibrary.simpleMessage("Data i czas"),
        "delete": MessageLookupByLibrary.simpleMessage("Usuń"),
        "deletedAllTicketPools": MessageLookupByLibrary.simpleMessage(
            "Nie można usunąć jedynej puli biletów"),
        "deletedTicketPoolAfterTicketWasSold":
            MessageLookupByLibrary.simpleMessage(
                "Nie można usunąć puli po rozpoczęciu sprzedaży biletów"),
        "descTooLong": MessageLookupByLibrary.simpleMessage(
            "Opis może zawierać maksymalnie 1000 znaków"),
        "description": MessageLookupByLibrary.simpleMessage("Opis"),
        "details": MessageLookupByLibrary.simpleMessage("Szczegóły"),
        "discoverClubs": MessageLookupByLibrary.simpleMessage(
            "Odkrywaj pobliskie kluby i znajdź imprezę dla siebie"),
        "djYoutubeChannel":
            MessageLookupByLibrary.simpleMessage("Kanał DJ-a na YouTube"),
        "dressCode": MessageLookupByLibrary.simpleMessage("Dress code"),
        "edit": MessageLookupByLibrary.simpleMessage("Edytuj"),
        "editDescription": MessageLookupByLibrary.simpleMessage("Edytuj opis"),
        "editDjChannelYoutubeUrl": MessageLookupByLibrary.simpleMessage(
            "Edytuj link do kanału DJ-a na YouTube"),
        "editEventName":
            MessageLookupByLibrary.simpleMessage("Edytuj nazwę wydarzenia"),
        "editFacebookUrl": MessageLookupByLibrary.simpleMessage(
            "Edytuj link URL wydarzenia na Facebooku"),
        "editReward": MessageLookupByLibrary.simpleMessage("Edytuj nagrodę"),
        "editTicketPool":
            MessageLookupByLibrary.simpleMessage("Edytuj pulę biletów"),
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
        "enterAccessCode":
            MessageLookupByLibrary.simpleMessage("Wprowadź kod dostępu"),
        "enterArtistName": MessageLookupByLibrary.simpleMessage(
            "Proszę podać nazwę wykonawcy"),
        "enterDesc": MessageLookupByLibrary.simpleMessage("Proszę podać opis"),
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
        "enterInvoiceData": MessageLookupByLibrary.simpleMessage(
            "Proszę podać dane do faktury"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Proszę wprowadź hasło"),
        "enterPrice": MessageLookupByLibrary.simpleMessage("Proszę podać cenę"),
        "enterQuantity":
            MessageLookupByLibrary.simpleMessage("Proszę podać ilość"),
        "enterRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Proszę podać wymaganą liczbę wejść"),
        "enterStartDateTime": MessageLookupByLibrary.simpleMessage(
            "Proszę wprowadzić datę i godzinę rozpoczęcia"),
        "enterUsername":
            MessageLookupByLibrary.simpleMessage("Wprowadź nazwę użytkownika"),
        "enterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Wprowadź prawidłowy adres e-mail"),
        "enterVatNumber":
            MessageLookupByLibrary.simpleMessage("Podaj numer NIP"),
        "enterYoutubeLink": MessageLookupByLibrary.simpleMessage(
            "Proszę podać link do YouTube"),
        "entries": m2,
        "entry": MessageLookupByLibrary.simpleMessage("Wejście"),
        "errorAddingEvent": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania wydarzenia"),
        "errorAddingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania nagrody"),
        "errorChangingClubStatus": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas zmiany statusu klubu"),
        "errorChangingEventStatus": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas zmiany statusu zdarzenia"),
        "errorCheckInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Sprawdź połączenie z internetem"),
        "errorDeletingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania nagrody"),
        "errorDeletingSelector": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas usuwania selekcjonera"),
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
        "errorLoadingSelectors": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania selekcjonerów"),
        "errorLoadingTickets": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas ładowania biletów"),
        "errorMakingCall": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas wykonywania połączenia"),
        "errorOpeningLink": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas otwierania linku"),
        "errorOpeningMaps":
            MessageLookupByLibrary.simpleMessage("Błąd podczas otwierania map"),
        "errorReportingReview": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas zgłaszania opinii"),
        "errorUpdatingEvent": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas aktualizacji wydarzenia"),
        "errorUpdatingReward": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas aktualizacji nagrody "),
        "eventAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie zostało dodane pomyślnie"),
        "eventBeingPostponed": MessageLookupByLibrary.simpleMessage(
            "Sprzedaż biletów została wstrzymana"),
        "eventCanceledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie odwołano pomyślnie"),
        "eventCancelled": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie zostało odwołane przez klub"),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Szczegóły wydarzenia"),
        "eventDurationTooLong": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie może trwać maksymalnie 24 godziny"),
        "eventEditedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie edytowano pomyślnie"),
        "eventExistsInDateRange": MessageLookupByLibrary.simpleMessage(
            "W podanym zakresie dat istnieje już wydarzenie"),
        "eventName": MessageLookupByLibrary.simpleMessage("Nazwa wydarzenia"),
        "eventOverview":
            MessageLookupByLibrary.simpleMessage("Przegląd wydarzenia"),
        "eventPlace":
            MessageLookupByLibrary.simpleMessage("Miejsce wydarzenia"),
        "eventPostponedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie przełożono pomyślnie"),
        "eventRevenue":
            MessageLookupByLibrary.simpleMessage("Przychód z imprezy"),
        "eventTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Wydarzenie powinno trwać co najmniej godzinę"),
        "events": m3,
        "exitButtonTitle": MessageLookupByLibrary.simpleMessage("Wyjdź"),
        "facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "facebookEvent":
            MessageLookupByLibrary.simpleMessage("Wydarzenie na Facebooku"),
        "favoriteClubs": MessageLookupByLibrary.simpleMessage("Ulubione kluby"),
        "favoriteClubsInfo": MessageLookupByLibrary.simpleMessage(
            "Dodaj kluby do ulubionych i otrzymuj powiadomienia o nowych wydarzeniach"),
        "favoriteEvents":
            MessageLookupByLibrary.simpleMessage("Ulubione wydarzenia"),
        "favoriteEventsInfo": MessageLookupByLibrary.simpleMessage(
            "Dodaj wydarzenia do ulubionych i otrzymuj powiadomienia kiedy pojawią się nowe bilety"),
        "favorites": MessageLookupByLibrary.simpleMessage("Ulubione"),
        "fieldShouldNotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Pole nie powinno być puste"),
        "filters": MessageLookupByLibrary.simpleMessage("Filtry"),
        "findByCity": MessageLookupByLibrary.simpleMessage("Mieście"),
        "findByMaxDistance":
            MessageLookupByLibrary.simpleMessage("Maksymalnej odległości"),
        "findEventPlaceBy": MessageLookupByLibrary.simpleMessage(
            "Znajdź miejsce wydarzenia po"),
        "findInMap": MessageLookupByLibrary.simpleMessage("Znajdź na mapie"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Zapomniałeś hasła?"),
        "from": MessageLookupByLibrary.simpleMessage("Od"),
        "fullName": MessageLookupByLibrary.simpleMessage("Imię i nazwisko"),
        "generateAccessCode":
            MessageLookupByLibrary.simpleMessage("Wygeneruj kod dostępu"),
        "home": MessageLookupByLibrary.simpleMessage("Główna"),
        "iWantInvoice":
            MessageLookupByLibrary.simpleMessage("Chcę fakturę VAT"),
        "income": MessageLookupByLibrary.simpleMessage("Dochód"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "invalidAccessCode": MessageLookupByLibrary.simpleMessage(
            "Kod dostępu jest nieprawidłowy lub wygasł"),
        "invalidCountryCode":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowy kraj"),
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
        "invalidSignInLink": MessageLookupByLibrary.simpleMessage(
            "Link jest nieprawidłowy lub wygasł"),
        "invalidTicket":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowy bilet"),
        "invalidUrl": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy format adresu URL"),
        "invalidVatNumber":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowy numer NIP"),
        "invalidVerificationCode": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy kod weryfikacyjny"),
        "invalidVerificationId": MessageLookupByLibrary.simpleMessage(
            "Nieprawidłowy identyfikator weryfikacji"),
        "inviteSelector":
            MessageLookupByLibrary.simpleMessage("Zaproś selekcjonera"),
        "invoiceData": MessageLookupByLibrary.simpleMessage("Dane do faktury"),
        "invoiceDataUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Pomyślnie zaaktualizowano dane do faktury"),
        "invoiceWillBeSentToEmail": MessageLookupByLibrary.simpleMessage(
            "Faktura zostanie wysłana na Twój adres email"),
        "isConcert": MessageLookupByLibrary.simpleMessage("Koncert"),
        "language": MessageLookupByLibrary.simpleMessage("Język"),
        "lastTicketsInPool":
            MessageLookupByLibrary.simpleMessage("Ostatnie bilety w puli"),
        "live": MessageLookupByLibrary.simpleMessage("W trakcie"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "lostNetworkConnectionDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utracono połączenie z internetem"),
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
        "nameCannotContainSpecialCharacters":
            MessageLookupByLibrary.simpleMessage(
                "Nazwa nie może zawierać znaków specjalnych"),
        "nameTooLong": MessageLookupByLibrary.simpleMessage(
            "Nazwa może zawierać maksymalnie 50 znaków"),
        "nameTooShort": MessageLookupByLibrary.simpleMessage(
            "Nazwa powinna zawierać co najmniej 8 znaków"),
        "naturalPerson": MessageLookupByLibrary.simpleMessage("Osoba fizyczna"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nowe hasło"),
        "next": MessageLookupByLibrary.simpleMessage("Dalej"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noAccessToClub": MessageLookupByLibrary.simpleMessage(
            "Nie masz dostępu do tego klubu"),
        "noData": MessageLookupByLibrary.simpleMessage("Brak danych"),
        "noDressCode":
            MessageLookupByLibrary.simpleMessage("Brak dress code\'u"),
        "noEventsInClub":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w tym klubie"),
        "noEventsNearYou":
            MessageLookupByLibrary.simpleMessage("Brak wydarzeń w pobliżu"),
        "noLiveEvent": MessageLookupByLibrary.simpleMessage(
            "Brak wydarzenia na żywo w twoim klubie"),
        "noOpinions": MessageLookupByLibrary.simpleMessage("Brak opinii"),
        "notifications": MessageLookupByLibrary.simpleMessage("Powiadomienia"),
        "numberOfTickets":
            MessageLookupByLibrary.simpleMessage("Liczba biletów"),
        "oneTimeAccessCode": MessageLookupByLibrary.simpleMessage(
            "Jednorazowy kod dostępu dla selekcjonera"),
        "operationNotAllowed":
            MessageLookupByLibrary.simpleMessage("Operacja nie jest dozwolona"),
        "opinions": m4,
        "orContinueWith":
            MessageLookupByLibrary.simpleMessage("Lub kontynuuj za pomocą"),
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
        "payConveniently": MessageLookupByLibrary.simpleMessage(
            "Zapłać w wygodny sposób, korzystając z karty, Google Pay, Apple Pay, BLIK-a lub innej metody dostępnej w Przelewy24"),
        "paymentConfirmed":
            MessageLookupByLibrary.simpleMessage("Płatność potwierdzona"),
        "paymentError": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas płatności, proszę skontaktuj się z obsługą"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Numer telefonu"),
        "photos": m5,
        "pool": MessageLookupByLibrary.simpleMessage("Pula"),
        "poolNo": MessageLookupByLibrary.simpleMessage("Pula Nr."),
        "poolPriceHigherThanNextPool": MessageLookupByLibrary.simpleMessage(
            "Cena biletów w puli powinna być niższa niż cena następnej puli"),
        "poolPriceLowerThanPreviousPools": MessageLookupByLibrary.simpleMessage(
            "Cena biletów w puli powinna być wyższa niż najwyższa cena z poprzednich puli"),
        "postpone": MessageLookupByLibrary.simpleMessage("Przełóż"),
        "postponeEvent":
            MessageLookupByLibrary.simpleMessage("Przełóż wydarzenie"),
        "postponeTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Czas na przełożenie wydarzenia upłynął"),
        "postponeTimeTooShort": MessageLookupByLibrary.simpleMessage(
            "Minimalny czas o który można przełożyć wydarzenie wynosi 24 godziny"),
        "postponed": MessageLookupByLibrary.simpleMessage("Przełożono"),
        "previousTicketPoolAvailable": MessageLookupByLibrary.simpleMessage(
            "Poprzednia pula biletów znowu jest dostępna!"),
        "price": MessageLookupByLibrary.simpleMessage("Cena"),
        "priceChangedAfterTicketWasSold": MessageLookupByLibrary.simpleMessage(
            "Nie można zmienić ceny po rozpoczęciu sprzedaży biletów"),
        "priceRange": MessageLookupByLibrary.simpleMessage("Zakres cen"),
        "proceedToCheckout":
            MessageLookupByLibrary.simpleMessage("Przejdź do kasy"),
        "proceedToPay":
            MessageLookupByLibrary.simpleMessage("Przejdź do płatności"),
        "profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "promotionCodeHasExpired":
            MessageLookupByLibrary.simpleMessage("Kod promocyjny wygasł"),
        "quantityChangedToLessThanTicketsSold":
            MessageLookupByLibrary.simpleMessage(
                " Nie można zmienić ilości biletów w puli poniżej ilości sprzedanych biletów"),
        "quantityTooHigh": MessageLookupByLibrary.simpleMessage(
            "Maksymalna ilość biletów to 100000"),
        "quantityTooLow": MessageLookupByLibrary.simpleMessage(
            "Minimalna ilość biletów to 1"),
        "rateAddingError": MessageLookupByLibrary.simpleMessage(
            "Błąd podczas dodawania opinii do wydarzenia"),
        "rateButtonTitle":
            MessageLookupByLibrary.simpleMessage("Wystaw opinię"),
        "rateEvent": MessageLookupByLibrary.simpleMessage("Oceń wydarzenie"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Oceń nas"),
        "refresh": MessageLookupByLibrary.simpleMessage("Odśwież"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "report": MessageLookupByLibrary.simpleMessage("Zgłoś"),
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
        "returned": MessageLookupByLibrary.simpleMessage("Zwrócono"),
        "reviewAdded": MessageLookupByLibrary.simpleMessage("Opinia dodana"),
        "reviewAlreadyReported": MessageLookupByLibrary.simpleMessage(
            "Ta opinia została już przez Ciebie zgłoszona"),
        "reviewAvg": MessageLookupByLibrary.simpleMessage("Średnia opinii"),
        "reviewContent": MessageLookupByLibrary.simpleMessage("Twoja opinia"),
        "reviewContentTooLong": MessageLookupByLibrary.simpleMessage(
            "Opinia może zawierać maksymalnie 1000 znaków"),
        "reviewLoadError": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd podczas ładowania opinii"),
        "reviewLoadingFormFailure": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd podczas wczytywania formularza opinii"),
        "reviewReportedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Opinia zgłoszona pomyślnie"),
        "reviewsQuantity": MessageLookupByLibrary.simpleMessage("Ilość opinii"),
        "rewardAddedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Nagroda została dodana pomyślnie"),
        "rewardDescTooLong": MessageLookupByLibrary.simpleMessage(
            "Opis może zawierać maksymalnie 100 znaków"),
        "rewardUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Nagroda została zaaktualizowana pomyślnie"),
        "rewards": m6,
        "scanAnotherTicket":
            MessageLookupByLibrary.simpleMessage("Zeskanuj kolejny bilet"),
        "scanTicket": MessageLookupByLibrary.simpleMessage("Zeskanuj bilet"),
        "scanner": MessageLookupByLibrary.simpleMessage("Skaner"),
        "select": MessageLookupByLibrary.simpleMessage("Wybierz"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Wybierz kraj"),
        "selectDressCode":
            MessageLookupByLibrary.simpleMessage("Proszę wybrać dress code"),
        "selectMinAge": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać minimalny wiek"),
        "selectMusicalGenres": MessageLookupByLibrary.simpleMessage(
            "Proszę wybrać gatunki muzyczne"),
        "selectNumberOfStars": MessageLookupByLibrary.simpleMessage(
            "Należy wybrać ilość gwiazdek"),
        "selectors": m7,
        "sendPasswordResetLink": MessageLookupByLibrary.simpleMessage(
            "Wyślij link do resetowania hasła"),
        "serverError": MessageLookupByLibrary.simpleMessage(
            "Wystąpił nieoczekiwany błąd, zostaliśmy o nim powiadomieni i postaramy się go jak najszybciej naprawić. Spróbuj ponownie lub zrestartuj aplikację."),
        "serviceFee": MessageLookupByLibrary.simpleMessage("Opłata serwisowa"),
        "setYourUsername": MessageLookupByLibrary.simpleMessage(
            "Ustaw swoją nazwę użytkownika"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "showTicket": MessageLookupByLibrary.simpleMessage("Pokaż bilet"),
        "showTicketQrCode":
            MessageLookupByLibrary.simpleMessage("Pokaż kod QR biletu"),
        "signIn": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
            "Zaloguj się za pomocą Google"),
        "signOut": MessageLookupByLibrary.simpleMessage("Wyloguj się"),
        "signUp": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "skipTheLine": MessageLookupByLibrary.simpleMessage("Omiń kolejkę"),
        "socialMedia":
            MessageLookupByLibrary.simpleMessage("Media społecznościowe"),
        "soldOut": MessageLookupByLibrary.simpleMessage("Wyprzedane"),
        "sport": MessageLookupByLibrary.simpleMessage("Sport"),
        "start": MessageLookupByLibrary.simpleMessage("Rozpocznij!"),
        "startDate": MessageLookupByLibrary.simpleMessage("Data rozpoczęcia"),
        "startDateBeforeNow": MessageLookupByLibrary.simpleMessage(
            "Data rozpoczęcia nie może być przed aktualną datą"),
        "startDateTooLate": MessageLookupByLibrary.simpleMessage(
            "Maksymalny czas daty rozpoczęcia wynosi 150 dni od dzisiaj"),
        "startScanning":
            MessageLookupByLibrary.simpleMessage("Rozpocznij skanowanie"),
        "startSearching":
            MessageLookupByLibrary.simpleMessage("Rozpocznij wyszukiwanie..."),
        "statistics": MessageLookupByLibrary.simpleMessage("Statystyki"),
        "stayUpdated": MessageLookupByLibrary.simpleMessage("Bądź na bieżąco"),
        "submit": MessageLookupByLibrary.simpleMessage("Zatwierdź"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Cena podstawowa"),
        "summary": MessageLookupByLibrary.simpleMessage("Podsumowanie"),
        "termsOfService": MessageLookupByLibrary.simpleMessage("Warunki usług"),
        "theme": MessageLookupByLibrary.simpleMessage("Motyw"),
        "ticketAlreadyHasVipStatus":
            MessageLookupByLibrary.simpleMessage("Bilet ma już status VIP"),
        "ticketExpired":
            MessageLookupByLibrary.simpleMessage("Bilet stracił ważność"),
        "ticketForAnotherEvent": MessageLookupByLibrary.simpleMessage(
            "Bilet jest na inne wydarzenie"),
        "ticketPoolHasSoldOut": MessageLookupByLibrary.simpleMessage(
            "Pula biletów została wyprzedana!"),
        "ticketPools": MessageLookupByLibrary.simpleMessage("Pule biletów"),
        "ticketPrice": MessageLookupByLibrary.simpleMessage("Cena biletu"),
        "ticketPriceHasChanged":
            MessageLookupByLibrary.simpleMessage("Cena biletu zmieniła się"),
        "ticketPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("Maksymalna cena biletu to"),
        "ticketPriceTooLow":
            MessageLookupByLibrary.simpleMessage("Minimalna cena biletu to"),
        "ticketReturned":
            MessageLookupByLibrary.simpleMessage("Bilet został zwrócony"),
        "ticketReturnedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Bilet zwrócono pomyślnie"),
        "tickets": m8,
        "ticketsSold":
            MessageLookupByLibrary.simpleMessage("Sprzedanych biletów"),
        "tikTok": MessageLookupByLibrary.simpleMessage("TikTok"),
        "to": MessageLookupByLibrary.simpleMessage("Do"),
        "tonight": MessageLookupByLibrary.simpleMessage("Tonight"),
        "tonightPartners":
            MessageLookupByLibrary.simpleMessage("Tonight Partners"),
        "tonightScanner":
            MessageLookupByLibrary.simpleMessage("Tonight Scanner"),
        "tooMuchRequiredEntries": MessageLookupByLibrary.simpleMessage(
            "Maksymalna liczba wymaganych wejść wynosi 1000"),
        "total": MessageLookupByLibrary.simpleMessage("Suma"),
        "totalRevenue":
            MessageLookupByLibrary.simpleMessage("Całkowity przychód"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Spróbuj ponownie"),
        "typeEventClubOrArtistName": MessageLookupByLibrary.simpleMessage(
            "Wpisz nazwę wydarzenia, klubu lub artysty"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Nieoczekiwany błąd"),
        "upcoming": MessageLookupByLibrary.simpleMessage("Nadchodzące"),
        "upcomingAndLive":
            MessageLookupByLibrary.simpleMessage("Nadchodzące i na żywo"),
        "upcomingEvents":
            MessageLookupByLibrary.simpleMessage("Nadchodzące wydarzenia"),
        "upgradeTicketToVipAndEnterClub": MessageLookupByLibrary.simpleMessage(
            "Ulepsz swój bilet do VIP-a i wejdź do klubu bez kolejki"),
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
            "Nazwa użytkownika powinna zawierać co najmniej 3 znaki"),
        "usernameUpdatedMessage": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika została zaktualizowana!"),
        "validTicket": MessageLookupByLibrary.simpleMessage("Ważny bilet"),
        "vatNumber": MessageLookupByLibrary.simpleMessage("Numer NIP"),
        "verificationLinkSent": MessageLookupByLibrary.simpleMessage(
            "Wysłano link weryfikacyjny na podany adres e-mail"),
        "vip": MessageLookupByLibrary.simpleMessage("VIP"),
        "vipAvailableAgain":
            MessageLookupByLibrary.simpleMessage("VIP znowu jest dostępny!"),
        "vipInfo": MessageLookupByLibrary.simpleMessage(
            "Bilet VIP umożliwia wejście do klubu bez kolejki"),
        "vipNoLongerAvailable":
            MessageLookupByLibrary.simpleMessage("VIP nie jest już dostępny"),
        "vipPrice": MessageLookupByLibrary.simpleMessage("Cena VIP-a"),
        "vipPriceHasChanged":
            MessageLookupByLibrary.simpleMessage("Cena VIP-a zmieniła się"),
        "vipPriceTooHigh":
            MessageLookupByLibrary.simpleMessage("Maksymalna cena VIP-a to"),
        "vipPriceTooLow":
            MessageLookupByLibrary.simpleMessage("Minimalna cena VIP-a to"),
        "vipValidTicket":
            MessageLookupByLibrary.simpleMessage("VIP, ważny bilet"),
        "vipVertical": MessageLookupByLibrary.simpleMessage("V\nI\nP"),
        "vipsSold": MessageLookupByLibrary.simpleMessage("Sprzedane VIP-y"),
        "weakPassword":
            MessageLookupByLibrary.simpleMessage("Hasło jest za słabe"),
        "welcomeToTonight":
            MessageLookupByLibrary.simpleMessage("Witamy w Tonight!"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowe hasło"),
        "yes": MessageLookupByLibrary.simpleMessage("Tak"),
        "yourNumberOfEntries":
            MessageLookupByLibrary.simpleMessage("Twoja liczba wejść"),
        "yourRate": MessageLookupByLibrary.simpleMessage("Twoja ocena")
      };
}
