// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get comingSoon => 'Prossimamente...';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Capito';

  @override
  String get nice => 'Bene';

  @override
  String get congratulations => 'Congratulazioni!';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get delete => 'Elimina';

  @override
  String get reset => 'Ripristina';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Chiaro';

  @override
  String get dark => 'Scuro';

  @override
  String get settings => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get monday => 'Lunedì';

  @override
  String get tuesday => 'Martedì';

  @override
  String get wednesday => 'Mercoledì';

  @override
  String get thursday => 'Giovedì';

  @override
  String get friday => 'Venerdì';

  @override
  String get saturday => 'Sabato';

  @override
  String get sunday => 'Domenica';

  @override
  String get mondayShort => 'Lun';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mer';

  @override
  String get thursdayShort => 'Gio';

  @override
  String get fridayShort => 'Ven';

  @override
  String get saturdayShort => 'Sab';

  @override
  String get sundayShort => 'Dom';

  @override
  String get settingsResetConfirmationTitle => 'Ripristinare tutti i valori?';

  @override
  String get settingsResetConfirmationBody =>
      'Tutte le impostazioni torneranno al loro stato iniziale se continui.';

  @override
  String get shuffle => 'Mescola';

  @override
  String get cheat => 'Barare';

  @override
  String get back => 'Indietro';

  @override
  String get apply => 'Applica';

  @override
  String get color => 'Colore';

  @override
  String get theme => 'Tema';

  @override
  String get music => 'Musica';

  @override
  String get effects => 'Effetti';

  @override
  String get profile => 'Profilo';

  @override
  String get statistics => 'Statistiche';

  @override
  String get about => 'Informazioni';

  @override
  String get help => 'Aiuto';

  @override
  String get picture => 'Immagine';

  @override
  String get username => 'Nome utente';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves mosse',
      one: 'solo 1 mossa',
      zero: 'nessuna mossa',
    );
    return 'Hai vinto utilizzando $_temp0!';
  }

  @override
  String get share => 'Condividi';

  @override
  String get shareTitle => 'La mia vittoria più recente su Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves mosse',
      one: 'solo 1 mossa',
      zero: 'nessuna mossa',
    );
    return 'Ho appena vinto una partita a Cubik utilizzando $_temp0! Vedi se puoi fare meglio su cubik.dy0gu.com o utilizzando l\'app.';
  }

  @override
  String get helpTitle => 'Impara come giocare a Cubik!';

  @override
  String get helpBodyFirst =>
      'L\'obiettivo è semplice, devi ordinare i pezzi nella loro posizione ordinata, dall\'alto a sinistra in basso a destra.';

  @override
  String get helpBodySecond =>
      'Sposta i pezzi utilizzando lo spazio vuoto. Quando un pezzo è nella posizione corretta, mostrerà un nuovo colore del bordo.';

  @override
  String get pageNotFound =>
      'Non siamo riusciti a trovare questa pagina, forse non dovresti essere qui...';

  @override
  String get pageError =>
      'Si è verificato un errore durante il caricamento di questa pagina, riprova più tardi!';

  @override
  String get localDataWarning =>
      'Tutti i dati dell\'applicazione sono memorizzati localmente, passando a un altro dispositivo o cancellando la cache dell\'app li eliminerà!';

  @override
  String get statisticMovesTaken => 'Mosse effettuate per gioco';

  @override
  String get statisticGamesPlayed => 'Giochi giocati al giorno';

  @override
  String get statisticBoardSizesPlayed =>
      'Dimensione della scacchiera per gioco';

  @override
  String get seedCopied => 'Seme copiato negli appunti!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon giochi in più',
      one: 'un altro gioco',
    );
    return 'Vinci $_temp0 per vedere il tuo storico delle vittorie!';
  }

  @override
  String get increase => 'Aumentare';

  @override
  String get decrease => 'Diminuire';

  @override
  String get helpBodyThird =>
      'Puoi anche usare il pulsante di mescolamento per randomizzare il tabellone, o i pulsanti di aumento/diminuzione per cambiarne le dimensioni.';

  @override
  String get helpBodyFourth =>
      'Nel tuo profilo troverai un grafico del tuo storico di vittorie. Puoi toccare ogni nodo per ulteriori dettagli su quel gioco specifico.';

  @override
  String get date => 'Data';

  @override
  String get time => 'Tempo';

  @override
  String get moves => 'Mosse';

  @override
  String get size => 'Dimensione';

  @override
  String get board => 'Tabellone';
}
