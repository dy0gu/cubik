// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get comingSoon => 'Em breve...';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Entendi';

  @override
  String get nice => 'Fixe';

  @override
  String get congratulations => 'Parabéns!';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get reset => 'Repor';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Escuro';

  @override
  String get settings => 'Definições';

  @override
  String get language => 'Idioma';

  @override
  String get monday => 'Segunda-feira';

  @override
  String get tuesday => 'Terça-feira';

  @override
  String get wednesday => 'Quarta-feira';

  @override
  String get thursday => 'Quinta-feira';

  @override
  String get friday => 'Sexta-feira';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get mondayShort => 'Seg';

  @override
  String get tuesdayShort => 'Ter';

  @override
  String get wednesdayShort => 'Qua';

  @override
  String get thursdayShort => 'Qui';

  @override
  String get fridayShort => 'Sex';

  @override
  String get saturdayShort => 'Sáb';

  @override
  String get sundayShort => 'Dom';

  @override
  String get settingsResetConfirmationTitle => 'Repor todos os valores?';

  @override
  String get settingsResetConfirmationBody =>
      'Todas as definições voltarão ao estado inicial se continuar.';

  @override
  String get shuffle => 'Baralhar';

  @override
  String get cheat => 'Aldrabar';

  @override
  String get back => 'Voltar';

  @override
  String get apply => 'Aplicar';

  @override
  String get color => 'Cor';

  @override
  String get theme => 'Tema';

  @override
  String get music => 'Música';

  @override
  String get effects => 'Efeitos';

  @override
  String get profile => 'Perfil';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get about => 'Sobre';

  @override
  String get help => 'Ajuda';

  @override
  String get picture => 'Imagem';

  @override
  String get username => 'Nome de utilizador';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Ganhaste usando $_temp0!';
  }

  @override
  String get share => 'Partilhar';

  @override
  String get shareTitle => 'A minha última vitória no Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Acabei de ganhar um jogo de Cubik com $_temp0! Vê se consegues fazer melhor em cubik.dy0gu.com, ou usando a aplicação.';
  }

  @override
  String get helpTitle => 'Aprende a jogar Cubik!';

  @override
  String get helpBodyFirst =>
      'O objetivo é simples, tens de ordenar as peças na sua posição correta, da esquerda para a direita e de cima para baixo.';

  @override
  String get helpBodySecond =>
      'Move as peças utilizando o espaço vazio. Quando uma peça está na posição correta, irá mostrar uma nova cor de borda.';

  @override
  String get pageNotFound =>
      'Não conseguimos encontrar esta página, talvez não devesses estar aqui...';

  @override
  String get pageError =>
      'Ocorreu um erro ao carregar esta página, por favor tenta novamente mais tarde!';

  @override
  String get localDataWarning =>
      'Todos os dados da aplicação são armazenados localmente, mudar de dispositivo ou limpar a cache da aplicação irá eliminá-los!';

  @override
  String get statisticMovesTaken => 'Movimentos por jogo';

  @override
  String get statisticGamesPlayed => 'Jogos jogados por dia';

  @override
  String get statisticBoardSizesPlayed => 'Tamanho do tabuleiro por jogo';

  @override
  String get seedCopied => 'Seed copiada para a área de transferência!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: 'mais $gamesWon jogos',
      one: 'mais 1 jogo',
    );
    return 'Ganha $_temp0 para veres o teu histórico de vitórias!';
  }

  @override
  String get increase => 'Aumentar';

  @override
  String get decrease => 'Diminuir';

  @override
  String get helpBodyThird =>
      'Podes também usar o botão de baralhar para aleatorizar o tabuleiro, ou os botões de aumentar/diminuir para mudar o seu tamanho.';

  @override
  String get helpBodyFourth =>
      'No teu perfil encontrarás um gráfico do teu histórico de vitórias. Podes tocar em cada nó para mais detalhes sobre esse jogo específico.';

  @override
  String get date => 'Data';

  @override
  String get time => 'Tempo';

  @override
  String get moves => 'Movimentos';

  @override
  String get size => 'Tamanho';

  @override
  String get board => 'Tabuleiro';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get comingSoon => 'Em breve...';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Entendi';

  @override
  String get nice => 'Legal';

  @override
  String get congratulations => 'Parabéns!';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get delete => 'Excluir';

  @override
  String get reset => 'Redefinir';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Escuro';

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get monday => 'Segunda-feira';

  @override
  String get tuesday => 'Terça-feira';

  @override
  String get wednesday => 'Quarta-feira';

  @override
  String get thursday => 'Quinta-feira';

  @override
  String get friday => 'Sexta-feira';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get mondayShort => 'Seg';

  @override
  String get tuesdayShort => 'Ter';

  @override
  String get wednesdayShort => 'Qua';

  @override
  String get thursdayShort => 'Qui';

  @override
  String get fridayShort => 'Sex';

  @override
  String get saturdayShort => 'Sáb';

  @override
  String get sundayShort => 'Dom';

  @override
  String get settingsResetConfirmationTitle => 'Redefinir todos os valores?';

  @override
  String get settingsResetConfirmationBody =>
      'Todas as configurações serão revertidas para o estado inicial se você continuar.';

  @override
  String get shuffle => 'Embaralhar';

  @override
  String get cheat => 'Trapaça';

  @override
  String get back => 'Voltar';

  @override
  String get apply => 'Aplicar';

  @override
  String get color => 'Cor';

  @override
  String get theme => 'Tema';

  @override
  String get music => 'Música';

  @override
  String get effects => 'Efeitos';

  @override
  String get profile => 'Perfil';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get about => 'Sobre';

  @override
  String get help => 'Ajuda';

  @override
  String get picture => 'Imagem';

  @override
  String get username => 'Nome de usuário';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Você ganhou usando $_temp0!';
  }

  @override
  String get share => 'Compartilhar';

  @override
  String get shareTitle => 'Minha vitória mais recente no Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Acabei de ganhar um jogo de Cubik usando $_temp0! Veja se você consegue fazer melhor em cubik.dy0gu.com, ou usando o aplicativo.';
  }

  @override
  String get helpTitle => 'Aprenda como jogar Cubik!';

  @override
  String get helpBodyFirst =>
      'O objetivo é simples, você precisa ordenar as peças na posição correta, da esquerda para a direita e de cima para baixo.';

  @override
  String get helpBodySecond =>
      'Mova as peças ao redor usando o espaço vazio. Quando uma peça está na posição correta, ela mostrará uma nova cor de borda.';

  @override
  String get pageNotFound =>
      'Não foi possível encontrar esta página, talvez você não devesse estar aqui...';

  @override
  String get pageError =>
      'Houve um erro ao carregar esta página, por favor, tente novamente mais tarde!';

  @override
  String get localDataWarning =>
      'Todos os dados do aplicativo são armazenados localmente, mudar de dispositivo ou limpar o cache do aplicativo irá deletá-los!';

  @override
  String get statisticMovesTaken => 'Movimentos por jogo';

  @override
  String get statisticGamesPlayed => 'Jogos jogados por dia';

  @override
  String get statisticBoardSizesPlayed => 'Tamanho do tabuleiro por jogo';

  @override
  String get seedCopied => 'Seed copiada para a área de transferência!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: 'mais $gamesWon jogos',
      one: 'mais 1 jogo',
    );
    return 'Ganhe $_temp0 para ver seu histórico de vitórias!';
  }

  @override
  String get increase => 'Aumentar';

  @override
  String get decrease => 'Diminuir';

  @override
  String get helpBodyThird =>
      'Você também pode usar o botão de embaralhar para randomizar o tabuleiro, ou os botões de aumentar/diminuir para alterar seu tamanho.';

  @override
  String get helpBodyFourth =>
      'No seu perfil encontrará um gráfico do seu histórico de vitórias. Pode tocar em cada nó para mais detalhes sobre esse jogo específico.';

  @override
  String get date => 'Data';

  @override
  String get time => 'Tempo';

  @override
  String get moves => 'Movimentos';

  @override
  String get size => 'Tamanho';

  @override
  String get board => 'Tabuleiro';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get comingSoon => 'Em breve...';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Entendi';

  @override
  String get nice => 'Fixe';

  @override
  String get congratulations => 'Parabéns!';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get reset => 'Repor';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Escuro';

  @override
  String get settings => 'Definições';

  @override
  String get language => 'Idioma';

  @override
  String get monday => 'Segunda-feira';

  @override
  String get tuesday => 'Terça-feira';

  @override
  String get wednesday => 'Quarta-feira';

  @override
  String get thursday => 'Quinta-feira';

  @override
  String get friday => 'Sexta-feira';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get mondayShort => 'Seg';

  @override
  String get tuesdayShort => 'Ter';

  @override
  String get wednesdayShort => 'Qua';

  @override
  String get thursdayShort => 'Qui';

  @override
  String get fridayShort => 'Sex';

  @override
  String get saturdayShort => 'Sáb';

  @override
  String get sundayShort => 'Dom';

  @override
  String get settingsResetConfirmationTitle => 'Repor todos os valores?';

  @override
  String get settingsResetConfirmationBody =>
      'Todas as definições voltarão ao estado inicial se continuar.';

  @override
  String get shuffle => 'Baralhar';

  @override
  String get cheat => 'Aldrabar';

  @override
  String get back => 'Voltar';

  @override
  String get apply => 'Aplicar';

  @override
  String get color => 'Cor';

  @override
  String get theme => 'Tema';

  @override
  String get music => 'Música';

  @override
  String get effects => 'Efeitos';

  @override
  String get profile => 'Perfil';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get about => 'Sobre';

  @override
  String get help => 'Ajuda';

  @override
  String get picture => 'Imagem';

  @override
  String get username => 'Nome de utilizador';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Ganhaste com $_temp0!';
  }

  @override
  String get share => 'Partilhar';

  @override
  String get shareTitle => 'A minha última vitória no Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves movimentos',
      one: 'apenas 1 movimento',
      zero: 'nenhum movimento',
    );
    return 'Acabei de ganhar um jogo de Cubik com $_temp0! Vê se consegues fazer melhor em cubik.dy0gu.com, ou usando a aplicação.';
  }

  @override
  String get helpTitle => 'Aprende a jogar Cubik!';

  @override
  String get helpBodyFirst =>
      'O objetivo é simples, tens de ordenar as peças na sua posição correta, da esquerda para a direita e de cima para baixo.';

  @override
  String get helpBodySecond =>
      'Move as peças utilizando o espaço vazio. Quando uma peça está na posição correta, irá mostrar uma nova cor de borda.';

  @override
  String get pageNotFound =>
      'Não conseguimos encontrar esta página, talvez não devesses estar aqui...';

  @override
  String get pageError =>
      'Ocorreu um erro ao carregar esta página, por favor tenta novamente mais tarde!';

  @override
  String get localDataWarning =>
      'Todos os dados da aplicação são armazenados localmente, mudar de dispositivo ou limpar a cache da aplicação irá eliminá-los!';

  @override
  String get statisticMovesTaken => 'Movimentos por jogo';

  @override
  String get statisticGamesPlayed => 'Jogos jogados por dia';

  @override
  String get statisticBoardSizesPlayed => 'Tamanho do tabuleiro por jogo';

  @override
  String get seedCopied => 'Seed copiada para a área de transferência!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: 'mais $gamesWon jogos',
      one: 'mais 1 jogo',
    );
    return 'Ganha $_temp0 para veres o teu histórico de vitórias!';
  }

  @override
  String get increase => 'Aumentar';

  @override
  String get decrease => 'Diminuir';

  @override
  String get helpBodyThird =>
      'Podes também usar o botão de baralhar para aleatorizar o tabuleiro, ou os botões de aumentar/diminuir para mudar o seu tamanho.';

  @override
  String get helpBodyFourth =>
      'No teu perfil encontrarás um gráfico do teu histórico de vitórias. Podes tocar em cada nó para mais detalhes sobre esse jogo específico.';

  @override
  String get date => 'Data';

  @override
  String get time => 'Tempo';

  @override
  String get moves => 'Movimentos';

  @override
  String get size => 'Tamanho';

  @override
  String get board => 'Tabuleiro';
}
