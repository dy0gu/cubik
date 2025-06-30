// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get comingSoon => 'Próximamente...';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Entendido';

  @override
  String get nice => 'Genial';

  @override
  String get congratulations => '¡Felicidades!';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get reset => 'Restablecer';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Oscuro';

  @override
  String get settings => 'Configuración';

  @override
  String get language => 'Idioma';

  @override
  String get monday => 'Lunes';

  @override
  String get tuesday => 'Martes';

  @override
  String get wednesday => 'Miércoles';

  @override
  String get thursday => 'Jueves';

  @override
  String get friday => 'Viernes';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get mondayShort => 'Lun';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mié';

  @override
  String get thursdayShort => 'Jue';

  @override
  String get fridayShort => 'Vie';

  @override
  String get saturdayShort => 'Sáb';

  @override
  String get sundayShort => 'Dom';

  @override
  String get settingsResetConfirmationTitle =>
      '¿Restablecer todos los valores?';

  @override
  String get settingsResetConfirmationBody =>
      'Todas las configuraciones volverán a su estado inicial si continúas.';

  @override
  String get shuffle => 'Barajar';

  @override
  String get cheat => 'Trampa';

  @override
  String get back => 'Atrás';

  @override
  String get apply => 'Aplicar';

  @override
  String get color => 'Color';

  @override
  String get theme => 'Tema';

  @override
  String get music => 'Música';

  @override
  String get effects => 'Efectos';

  @override
  String get profile => 'Perfil';

  @override
  String get statistics => 'Estadísticas';

  @override
  String get about => 'Acerca de';

  @override
  String get help => 'Ayuda';

  @override
  String get picture => 'Imagen';

  @override
  String get username => 'Nombre de usuario';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimientos',
      one: 'solo 1 movimiento',
      zero: 'ningún movimiento',
    );
    return '¡Ganaste usando $_temp0!';
  }

  @override
  String get share => 'Compartir';

  @override
  String get shareTitle => '¡Mi última victoria en Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimientos',
      one: 'solo 1 movimiento',
      zero: 'ningún movimiento',
    );
    return 'Acabo de ganar un juego de Cubik usando $_temp0! ¡Ve si puedes hacerlo mejor en cubik.win, o usando la aplicación.';
  }

  @override
  String get helpTitle => '¡Aprende a jugar a Cubik!';

  @override
  String get helpBodyFirst =>
      'El objetivo es simple, debes ordenar las piezas en su posición correcta, de izquierda a derecha y de arriba abajo.';

  @override
  String get helpBodySecond =>
      'Mueve las piezas utilizando el espacio vacío. Cuando una pieza está en la posición correcta, mostrará un nuevo color de borde.';

  @override
  String get pageNotFound =>
      'No pudimos encontrar esta página, tal vez no deberías estar aquí...';

  @override
  String get pageError =>
      'Hubo un error al cargar esta página, ¡inténtalo de nuevo más tarde!';

  @override
  String get localDataWarning =>
      '¡Todos los datos de la aplicación se almacenan localmente, cambiar de dispositivo o borrar la caché de la aplicación los eliminará!';

  @override
  String get statisticMovesTaken => 'Movimientos por juego';

  @override
  String get statisticGamesPlayed => 'Juegos jugados por día';

  @override
  String get statisticBoardSizesPlayed => 'Tamaño del tablero por juego';

  @override
  String get seedCopied => '¡Semilla copiada al portapapeles!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon juegos más',
      one: '1 juego más',
    );
    return 'Gana $_temp0 para ver tu historial de victorias!';
  }

  @override
  String get increase => 'Aumentar';

  @override
  String get decrease => 'Disminuir';

  @override
  String get helpBodyThird =>
      'También puedes usar el botón de mezcla para aleatorizar el tablero, o los botones de aumentar/disminuir para cambiar su tamaño.';

  @override
  String get helpBodyFourth =>
      'En tu perfil encontrarás un gráfico de tu historial de victorias. Puedes tocar en cada nodo para obtener más detalles sobre ese juego específico.';

  @override
  String get date => 'Fecha';

  @override
  String get time => 'Tiempo';

  @override
  String get moves => 'Movimientos';

  @override
  String get size => 'Tamaño';

  @override
  String get board => 'Tablero';
}
