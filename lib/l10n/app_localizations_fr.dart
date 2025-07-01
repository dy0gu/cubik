// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get comingSoon => 'Bientôt...';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Compris';

  @override
  String get nice => 'Bien joué';

  @override
  String get congratulations => 'Félicitations !';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get delete => 'Supprimer';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get system => 'Système';

  @override
  String get light => 'Clair';

  @override
  String get dark => 'Sombre';

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get monday => 'Lundi';

  @override
  String get tuesday => 'Mardi';

  @override
  String get wednesday => 'Mercredi';

  @override
  String get thursday => 'Jeudi';

  @override
  String get friday => 'Vendredi';

  @override
  String get saturday => 'Samedi';

  @override
  String get sunday => 'Dimanche';

  @override
  String get mondayShort => 'Lun';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mer';

  @override
  String get thursdayShort => 'Jeu';

  @override
  String get fridayShort => 'Ven';

  @override
  String get saturdayShort => 'Sam';

  @override
  String get sundayShort => 'Dim';

  @override
  String get settingsResetConfirmationTitle =>
      'Réinitialiser toutes les valeurs ?';

  @override
  String get settingsResetConfirmationBody =>
      'Tous les paramètres seront réinitialisés à leur état initial si vous continuez.';

  @override
  String get shuffle => 'Mélanger';

  @override
  String get cheat => 'Tromper';

  @override
  String get back => 'Retour';

  @override
  String get apply => 'Appliquer';

  @override
  String get color => 'Couleur';

  @override
  String get theme => 'Thème';

  @override
  String get music => 'Musique';

  @override
  String get effects => 'Effets';

  @override
  String get profile => 'Profil';

  @override
  String get statistics => 'Statistiques';

  @override
  String get about => 'À propos de';

  @override
  String get help => 'Aide';

  @override
  String get picture => 'Image';

  @override
  String get username => 'Nom d\'utilisateur';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves mouvements',
      one: 'seulement 1 mouvement',
      zero: 'aucun mouvement',
    );
    return 'Vous avez gagné en utilisant $_temp0 !';
  }

  @override
  String get share => 'Partager';

  @override
  String get shareTitle => 'Ma victoire la plus récente sur Cubik !';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves mouvements',
      one: 'seulement 1 mouvement',
      zero: 'aucun mouvement',
    );
    return 'Je viens de remporter une partie de Cubik en utilisant $_temp0 ! Voyez si vous pouvez faire mieux sur cubik.dy0gu.com, ou en utilisant l\'application.';
  }

  @override
  String get helpTitle => 'Apprenez à jouer à Cubik !';

  @override
  String get helpBodyFirst =>
      'Le but est simple, vous devez trier les pièces dans leur position ordonnée, de haut en bas et de gauche à droite.';

  @override
  String get helpBodySecond =>
      'Déplacez les pièces en utilisant l\'espace vide. Lorsqu\'une pièce est à la bonne position, elle affichera une nouvelle couleur de bordure.';

  @override
  String get pageNotFound =>
      'Nous n\'avons pas pu trouver cette page, peut-être ne devriez-vous pas être ici...';

  @override
  String get pageError =>
      'Une erreur s\'est produite lors du chargement de cette page, veuillez réessayer ultérieurement !';

  @override
  String get localDataWarning =>
      'Toutes les données de l\'application sont stockées localement. Changer d\'appareil ou effacer le cache de l\'application les supprimera !';

  @override
  String get statisticMovesTaken => 'Mouvements par partie';

  @override
  String get statisticGamesPlayed => 'Jeux joués par jour';

  @override
  String get statisticBoardSizesPlayed => 'Taille du plateau par partie';

  @override
  String get seedCopied => 'Graine copiée dans le presse-papiers !';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon jeux de plus',
      one: '1 jeu de plus',
    );
    return 'Gagnez $_temp0 pour voir votre historique de victoires!';
  }

  @override
  String get increase => 'Augmenter';

  @override
  String get decrease => 'Diminuer';

  @override
  String get helpBodyThird =>
      'Vous pouvez également utiliser le bouton de mélange pour randomiser le tableau, ou les boutons d\'augmentation/diminution pour changer sa taille.';

  @override
  String get helpBodyFourth =>
      'Dans votre profil, vous trouverez un graphique de votre historique de victoires. Vous pouvez cliquer sur chaque nœud pour plus de détails sur ce jeu spécifique.';

  @override
  String get date => 'Date';

  @override
  String get time => 'Temps';

  @override
  String get moves => 'Mouvements';

  @override
  String get size => 'Taille';

  @override
  String get board => 'Tableau';
}
