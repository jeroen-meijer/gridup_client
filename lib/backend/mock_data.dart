import 'dart:ui';

import 'package:gridup_client/backend/models/game_info.dart';
import 'package:meta/meta.dart';

const _playableGameName = 'Minipoly';

GameInfo get playableGame => mockGames.firstWhere((game) => game.title == _playableGameName);

bool isPlayable(GameInfo game) {
  return game.title == _playableGameName;
}

VoidCallback ifPlayable<T>(
  GameInfo game, {
  @required VoidCallback then,
}) {
  if (isPlayable(game)) {
    return then;
  }

  return () {};
}

// ignore_for_file: prefer_single_quotes
const mockGames = [
  GameInfo(
    title: _playableGameName,
    category: 'Strategy',
    description: 'Play Monopoly on the go!\n'
        'Minipoly is a fun board game for those game '
        'nights with friends and family. Featuring Tyrannosaurus Rex, '
        'Penguin, Rubber Ducky into its family tokens, this board game '
        'is a whole lot of fun! The game includes a game board, card holder, '
        'cards, dice, game pieces and paper. Minipoly also makes for the perfect '
        'Birthday or Christmas gift for your kids. Monopoly has never been this fun!',
    imageUrls: [
      'http://media.dmnews.com/images/2015/03/25/monopoly_746355.jpg',
    ],
    score: 4.7538,
    reviewsAmount: 5938,
    downloadsAmount: 9132914,
    playersLowerBound: 2,
    playersUpperBound: 4,
  ),
  GameInfo(
    title: "Gloomhaven",
    category: 'Strategy',
    description:
        'path ate four compound point night later official war onto drew bigger laugh pressure mean using opinion separate ranch wore score walk exactly dull',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/lDN358RgcYvQfYYN6Oy2TXpifyM=/0x0/pic2437871.jpg',
    ],
    score: 4.3538,
    reviewsAmount: 1694,
    downloadsAmount: 8332914,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Pandemic Legacy: Season 1",
    category: 'Strategy',
    description:
        'visitor however column had coat office agree scene under flies having kept popular highway perfectly orbit measure own voice tomorrow book instance sail think',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/P_SwsOtPLqgk2ScCgI2YrI9Rg6I=/0x0/pic2452831.png',
    ],
    score: 4.5856,
    reviewsAmount: 9840,
    downloadsAmount: 3487820,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Through the Ages: A New Story of Civilization",
    category: 'Strategy',
    description:
        'fourth ate pull fought brass welcome bigger social moving clothing fun particles bite pony made gate distance recently finish voice block art famous per',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/1d2h-kr4r_9xsss2Br6iMvjR9q0=/0x0/pic2663291.jpg',
    ],
    score: 3.8747,
    reviewsAmount: 7951,
    downloadsAmount: 3983158,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Terraforming Mars",
    category: 'Strategy',
    description:
        'shoulder explanation nest independent know smoke most pour production joy character inside far flow twelve himself somewhere uncle tobacco song activity education library happily',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/o8z_levBVArPUKI7ZrIysZEs1A0=/0x0/pic3536616.jpg',
    ],
    score: 3.6414,
    reviewsAmount: 6430,
    downloadsAmount: 5880953,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Twilight Struggle",
    category: 'Strategy',
    description:
        'length picture bridge fourth square count do respect express mission tin shown apartment concerned deeply surrounded class plane rhythm doctor corn only potatoes explain',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/ZPnnm7v2RTJ6fAZeeseA5WbC9DU=/0x0/pic361592.jpg',
    ],
    score: 3.524,
    reviewsAmount: 7659,
    downloadsAmount: 6588714,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Star Wars: Rebellion",
    category: 'Strategy',
    description:
        'hurt roll plural stream plates shorter program raw hunter anyway nearer studied excited pencil spider wing these growth stepped flew log improve organization shadow',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/unCB4uE-nBtAH9glFd3FaVxYbIo=/0x0/pic4325841.jpg',
    ],
    score: 4.0148,
    reviewsAmount: 8768,
    downloadsAmount: 4931377,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Gaia Project",
    category: 'Strategy',
    description:
        'apartment rhythm neck talk vegetable current round caught purple radio been curious bee knowledge start information soft earlier nodded country joined report myself highest',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/FpQ2ODFHSgDGfEpskL0Uu2xyYMA=/0x0/pic3763556.jpg',
    ],
    score: 4.7191,
    reviewsAmount: 3638,
    downloadsAmount: 6541147,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Scythe",
    category: 'Strategy',
    description:
        'fast dropped doll grew blow shells hay amount journey due living officer help giant win greatly this fourth nose onto could police nation accurate',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/enxCZt0Cn78-rlvmPvGtOej1ios=/0x0/pic3163924.jpg',
    ],
    score: 3.6131,
    reviewsAmount: 2731,
    downloadsAmount: 8623052,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Twilight Imperium (Fourth Edition)",
    category: 'Strategy',
    description:
        'period wild construction believed people seed proper goes nervous remove smallest nature helpful bill town along country minerals throat pleasant your deal born chosen',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Xe0YAmobS_L0Nlo4YJgyFwOW9EM=/0x0/pic3727516.jpg',
    ],
    score: 4.449,
    reviewsAmount: 8709,
    downloadsAmount: 5085421,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Great Western Trail",
    category: 'Strategy',
    description:
        'basis scale saved once indeed example ear radio plane church rush size powder shore thought serve terrible excitement graph count pilot putting pipe someone',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/U3RnjWjCHNkm4LVps_HNDHeuUI4=/0x0/pic3113247.jpg',
    ],
    score: 3.6521,
    reviewsAmount: 9982,
    downloadsAmount: 5242774,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Terra Mystica",
    category: 'Strategy',
    description:
        'action pull terrible outside column remember sink mix stage president angle shake search party flies rhythm sudden colony careful pool ride selection couple plastic',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/CynjY3GgwPTg34abNIv8eLX1pXs=/0x0/pic1356616.jpg',
    ],
    score: 3.4589,
    reviewsAmount: 6520,
    downloadsAmount: 2509191,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "War of the Ring (Second Edition)",
    category: 'Strategy',
    description:
        'built wolf everyone youth occur right unless independent to wild powerful printed mathematics principal equal vote vessels door into similar length growth avoid teeth',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/sAJOZ0c2_gZqXjn2npRgpFvshKo=/0x0/pic1215633.jpg',
    ],
    score: 4.8189,
    reviewsAmount: 7773,
    downloadsAmount: 6585261,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Brass: Birmingham",
    category: 'Strategy',
    description:
        'harder ruler step public arrow hit written grass mud enter verb shelf shown city worry monkey hot running hand whose thick flies let determine',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/SED341dmM5mGVVbLvwcvTjvUbIA=/0x0/pic3490053.jpg',
    ],
    score: 4.6215,
    reviewsAmount: 1672,
    downloadsAmount: 7811682,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "The Castles of Burgundy",
    category: 'Strategy',
    description:
        'river family pride bowl thee cow surface central appropriate religious mile engine result wheel husband prevent social food trip fall trap company break well',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/w3EsrbF6-Gvr5_qBeF7YL1Rslnk=/0x0/pic1176894.jpg',
    ],
    score: 3.7084,
    reviewsAmount: 6952,
    downloadsAmount: 5290318,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Spirit Island",
    category: 'Strategy',
    description:
        'down move never fact asleep plane chemical instead needle compass fly will various progress religious yard sight eventually consider pattern soil occasionally indeed union',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/RmP2yBDA0LE-ZFWrEXAkgRuYjn0=/0x0/pic3615739.png',
    ],
    score: 3.3587,
    reviewsAmount: 1293,
    downloadsAmount: 5689465,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "7 Wonders Duel",
    category: 'Strategy',
    description:
        'similar done magnet out around hollow film strip ship choose job door manufacturing spoken circle weak loose father talk we locate development simply silver',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/M6wL1YFgW-PsdtJ328m2QiJf1K8=/0x0/pic3376065.jpg',
    ],
    score: 4.5524,
    reviewsAmount: 4533,
    downloadsAmount: 1272927,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "The 7th Continent",
    category: 'Strategy',
    description:
        'add mile tall nose sell tears business real bread left everything clock myself clothes score get liquid noon piece syllable paint plus just party',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/iQDBaRJ2LxJba_M7gPZj24eHwBc=/0x0/pic2648303.jpg',
    ],
    score: 3.1844,
    reviewsAmount: 7963,
    downloadsAmount: 8172746,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Concordia",
    category: 'Strategy',
    description:
        'lay modern island second official ask replied slip earlier round growth mine now distance habit contrast nervous heat train but above audience sheep involved',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/abKLQBfHHaouqsLx7GGiIzqXBu8=/0x0/pic3453267.jpg',
    ],
    score: 4.1492,
    reviewsAmount: 3226,
    downloadsAmount: 9953088,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Viticulture Essential Edition",
    category: 'Strategy',
    description:
        'couple within order position trip neck certainly sky bridge battle various collect chart manufacturing similar top dropped date direction ill pound exciting whom bowl',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/6KQbzbjV6HlxDZeqPwmrmR3gn6w=/0x0/pic2649952.jpg',
    ],
    score: 3.8422,
    reviewsAmount: 4721,
    downloadsAmount: 7840491,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Arkham Horror: The Card Game",
    category: 'Strategy',
    description:
        'plain machine carefully yesterday wood actual seed spider cutting effect remember hair bread comfortable saw wet load cloth valley heard promised copy piano broad',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/EQ0Kl-bH9RCI5aJWVLnAlAfo00E=/0x0/pic3122349.jpg',
    ],
    score: 4.923,
    reviewsAmount: 6689,
    downloadsAmount: 7575476,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Puerto Rico",
    category: 'Strategy',
    description:
        'able unusual while warn highway asleep fire difficult key room fast disappear height shoe shells fifth kill simply alphabet hold ourselves grew train completely',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/RvdWBkmDks7AN8sodR4PyVcponA=/0x0/pic158548.jpg',
    ],
    score: 3.0717,
    reviewsAmount: 4510,
    downloadsAmount: 2539006,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Brass: Lancashire",
    category: 'Strategy',
    description:
        'border did product master rubber sheet rice gray fact hung whistle paint rocket fought needle author distant canal type fuel equally sleep should sheep',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/l4dwCcl4Vz0r4TD-2RgQ_uoHvWM=/0x0/pic3469216.jpg',
    ],
    score: 4.5266,
    reviewsAmount: 5539,
    downloadsAmount: 6676359,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Caverna: The Cave Farmers",
    category: 'Strategy',
    description:
        'rock mind single distance shade crowd bound burn meal dried eye happy throat more slope exist easy balance wash lead gate bare proud industry',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/xLuIh5VNsD57GXfcBox_ZF1jH4o=/0x0/pic1790789.jpg',
    ],
    score: 4.5711,
    reviewsAmount: 6911,
    downloadsAmount: 9965063,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Mage Knight Board Game",
    category: 'Strategy',
    description:
        'weather empty standard tomorrow fat layers composition at fresh farther struck lot harbor remember taught uncle own putting spell teacher knife trip draw poor',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/AGyvx6NYd6Kq4HUztAObQVLEFWY=/0x0/pic1083380.jpg',
    ],
    score: 3.8223,
    reviewsAmount: 5560,
    downloadsAmount: 5012974,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Agricola",
    category: 'Strategy',
    description:
        'day farm official little gone clothes afraid club fill at volume warn design fifty making speed fort aboard wore wolf morning just them fast',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/L-UBO3rBOmvIrZHZLSXOypyAUPw=/0x0/pic259085.jpg',
    ],
    score: 4.6651,
    reviewsAmount: 7798,
    downloadsAmount: 3799032,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Orléans",
    category: 'Strategy',
    description:
        'take tone ten come too along sky old pupil park deep new duty citizen suddenly tax exactly through close further modern company audience prove',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/RLjWKyzXimMFiQOa8uwo9ZWWOGM=/0x0/pic2578828.png',
    ],
    score: 3.9816,
    reviewsAmount: 8538,
    downloadsAmount: 6247338,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Mansions of Madness: Second Edition",
    category: 'Strategy',
    description:
        'fast yard recognize attack ago slowly market gone food pitch means sentence wait noon gently disease general evening beginning public atmosphere idea torn capital',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/0jncNnMHVZqa4u3oMwVm2Zn84q8=/0x0/pic3118622.jpg',
    ],
    score: 4.8763,
    reviewsAmount: 6732,
    downloadsAmount: 4098378,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "A Feast for Odin",
    category: 'Strategy',
    description:
        'care native kids planning silent hour office powerful seems unusual military choose cattle stretch away slept greatest consist scene anybody street store who apple',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/h0P5NRuVBu0GuDrJo7CHAiSJo3U=/0x0/pic3146943.png',
    ],
    score: 3.9985,
    reviewsAmount: 8779,
    downloadsAmount: 6255704,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Food Chain Magnate",
    category: 'Strategy',
    description:
        'of improve eight additional crowd donkey against lay trap send laugh taste tears word film dozen back slave shine among independent slip weigh zero',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/wYRsC32bPDRShIYzWs2hUglfcTc=/0x0/pic2649434.png',
    ],
    score: 3.2822,
    reviewsAmount: 6678,
    downloadsAmount: 7470217,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Blood Rage",
    category: 'Strategy',
    description:
        'bus egg give game shake porch charge examine noise combination who when worry instrument it coming all require leaf free grade drive cake baseball',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/p4IovYzLVXqxY40lbGUu92VxaIQ=/0x0/pic2439223.jpg',
    ],
    score: 4.8521,
    reviewsAmount: 5819,
    downloadsAmount: 8241619,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Pandemic Legacy: Season 2",
    category: 'Strategy',
    description:
        'son negative sure transportation speech movement excitement hunt wish pictured mass social pond addition throat strong house information let correctly planning behind again suddenly',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/DbXh4TeZPoJ_tSlX2KRGdVcBd8s=/0x0/pic3763549.jpg',
    ],
    score: 3.1076,
    reviewsAmount: 8586,
    downloadsAmount: 3325070,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Mechs vs. Minions",
    category: 'Strategy',
    description:
        'itself constantly metal room rate salmon poor remarkable scared buffalo mysterious useful cheese immediately broke past buy evidence explore floating kids star thing only',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/WhHdMb8GiMY-RhHddEByDyPkrWo=/0x0/pic3184103.jpg',
    ],
    score: 3.4164,
    reviewsAmount: 1487,
    downloadsAmount: 2791961,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Kingdom Death: Monster",
    category: 'Strategy',
    description:
        'pony solid sell plate light lonely tool nails pitch belt bet surface tears youth trouble frozen bone parts person circus unusual jet split memory',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/AtA42fNGhdthAAP3Y5QZiwlFcv8=/0x0/pic2931007.jpg',
    ],
    score: 3.3956,
    reviewsAmount: 7207,
    downloadsAmount: 1308454,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Power Grid",
    category: 'Strategy',
    description:
        'buy treated straw organization combination ability possible plastic audience battle merely important about natural meal handsome flame dirt live gone frame oldest problem term',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/h8UWt217vzbMWSla-r8O86a6fDc=/0x0/pic4459753.jpg',
    ],
    score: 4.9598,
    reviewsAmount: 3413,
    downloadsAmount: 3123889,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Star Wars: Imperial Assault",
    category: 'Strategy',
    description:
        'spell put method cabin structure table throughout powerful mass equator slope paint somehow apartment than try excited you sheet species known herd iron thank',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/wWTlEaPbVoUybefxFpFVTv1OU74=/0x0/pic2247647.jpg',
    ],
    score: 3.8101,
    reviewsAmount: 9270,
    downloadsAmount: 9976609,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Through the Ages: A Story of Civilization",
    category: 'Strategy',
    description:
        'rush dig clothes naturally ring by victory cloth soldier fireplace larger instance bite children pull fish birthday lost zero airplane produce pile cook successful',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/xeBBIO9BN7HGMxQdTw5zk5Hxou8=/0x0/pic236169.jpg',
    ],
    score: 4.8428,
    reviewsAmount: 4150,
    downloadsAmount: 8785586,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Tzolk'in: The Mayan Calendar",
    category: 'Strategy',
    description:
        'said moon college strike compound business science shadow would wide load finish fresh present camp sat globe stood vertical noise rays huge determine club',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/b_3SHZiUpcmrIT5hU8wVF0SDX8k=/0x0/pic1413480.jpg',
    ],
    score: 4.6552,
    reviewsAmount: 7117,
    downloadsAmount: 4023606,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Azul",
    category: 'Strategy',
    description:
        'key youth bow husband sign baseball origin worried shape able best chamber border our house brick differ oxygen section free army himself tonight greatest',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/9-SR48jyfxs4At6255sjHoly2sw=/0x0/pic3718275.jpg',
    ],
    score: 3.4443,
    reviewsAmount: 5881,
    downloadsAmount: 6704325,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Eclipse",
    category: 'Strategy',
    description:
        'rocket grade worse beneath discover rising history motion thread shine mad swimming blood reader could seed structure like how young itself machine each season',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/583Qqo-5M56np8LqnFKcCuUfn7A=/0x0/pic1974056.jpg',
    ],
    score: 4.8746,
    reviewsAmount: 3076,
    downloadsAmount: 1560887,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Le Havre",
    category: 'Strategy',
    description:
        'machine explain roll spread first view ill driven further book personal solve excited tried mass government earth split brief mission somewhere affect make planet',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Fs2MqRUBPQzORmEZbiVqSnBvHDg=/0x0/pic3330230.jpg',
    ],
    score: 4.9543,
    reviewsAmount: 8107,
    downloadsAmount: 6409665,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Robinson Crusoe: Adventures on the Cursed Island",
    category: 'Strategy',
    description:
        'stick pocket after habit rocky sand shape quiet south sink adjective pride stood wolf center mathematics ever closer indicate none eat top cloth flame',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/i1d3Zbbw5iYJ5_Bd0unqwgM8CI0=/0x0/pic3165731.jpg',
    ],
    score: 3.9992,
    reviewsAmount: 3238,
    downloadsAmount: 4792199,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "The Voyages of Marco Polo",
    category: 'Strategy',
    description:
        'stay captured for leaf pole from on talk letter shout bread die indicate favorite range radio shorter hour eventually song information rising cent active',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/ewdBaa31ROM_gOmpYwp4xszuAHk=/0x0/pic2461346.png',
    ],
    score: 3.7573,
    reviewsAmount: 6252,
    downloadsAmount: 8774116,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Clans of Caledonia",
    category: 'Strategy',
    description:
        'time vertical minerals money similar myself port fall brush jet wherever taught hollow actual none chair caught already neighborhood low carried cake determine continent',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/wMBrwd-ZnHVV_XvVT3Tc6LtD0Ng=/0x0/pic3511783.png',
    ],
    score: 4.8401,
    reviewsAmount: 4174,
    downloadsAmount: 3536764,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Wingspan",
    category: 'Strategy',
    description:
        'neighbor touch sudden death basic discuss wide five course degree policeman similar rather from up son surprise clock close cast skill planned biggest poem',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/V_R5oe5Huj5guJaBhgbQkZR1PLE=/0x0/pic4458123.jpg',
    ],
    score: 3.221,
    reviewsAmount: 5096,
    downloadsAmount: 2455204,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Android: Netrunner",
    category: 'Strategy',
    description:
        'yellow golden courage experiment society crowd collect done am fed capital useful skill continued cloud lovely world loud glad bet round sad entirely specific',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Wbp__Fl6QDKqzealhK2SDpoEk_g=/0x0/pic3738560.jpg',
    ],
    score: 3.5226,
    reviewsAmount: 1893,
    downloadsAmount: 9630288,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "7 Wonders",
    category: 'Strategy',
    description:
        'glad draw here harder continued electricity sharp minute double fireplace water we favorite forget citizen tree bow particular crop slowly old some knowledge money',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/3DP_RW5lTX0WrV67s8qi8CsiXoQ=/0x0/pic860217.jpg',
    ],
    score: 4.935,
    reviewsAmount: 4607,
    downloadsAmount: 3509747,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Anachrony",
    category: 'Strategy',
    description:
        'steel rhythm hunt at tree corn spend phrase stand this ice brick night north cream involved poem serve sink stood smile signal butter wild',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/HwoXcAIvX44tc_CDgcQ6I0Rztg8=/0x0/pic3499707.jpg',
    ],
    score: 3.4411,
    reviewsAmount: 1066,
    downloadsAmount: 9676031,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Root",
    category: 'Strategy',
    description:
        'theory wife respect imagine nails describe colony film principle book tightly balloon village long cell distant way spend traffic your effect planning community wooden',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/dKjbqIjkFvlDt8OH01LtFqk-A8Q=/0x0/pic4254509.jpg',
    ],
    score: 3.9456,
    reviewsAmount: 5062,
    downloadsAmount: 3736814,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Keyflower",
    category: 'Strategy',
    description:
        'wrapped through chapter sign hide scared exercise if tank quietly income engine piano table greatly slept rule activity owner early white rubber trap involved',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/t6AnEi2l5tiHgWRjglwSfRsYy6E=/0x0/pic2278942.jpg',
    ],
    score: 4.0864,
    reviewsAmount: 2474,
    downloadsAmount: 5875126,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Race for the Galaxy",
    category: 'Strategy',
    description:
        'cage same corner earlier almost than under porch forth taken five won snow key leg cut very nation public battle wind buy wheat happened',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/-2F-mPR0ssTm2IAsMAvnZzR0dn4=/0x0/pic236327.jpg',
    ],
    score: 4.9015,
    reviewsAmount: 5017,
    downloadsAmount: 8376212,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Caylus",
    category: 'Strategy',
    description:
        'nine massage wherever citizen thought attached clean so examine bee lovely headed growth fog shop beneath gun ruler fifth seven worried operation military enter',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/90BzC8_Dgc9uDswnZsu7Qa3oHvI=/0x0/pic1638795.jpg',
    ],
    score: 3.7616,
    reviewsAmount: 6222,
    downloadsAmount: 4963542,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Dominant Species",
    category: 'Strategy',
    description:
        'tired principle value produce part plane he folks chair degree plural pay cutting name weak youth bare won length interest damage clothes truth floating',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/dpHznpiPiv8biNvE_P9RCkXaOx4=/0x0/pic784193.jpg',
    ],
    score: 4.78,
    reviewsAmount: 4016,
    downloadsAmount: 6273925,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Fields of Arle",
    category: 'Strategy',
    description:
        'action claws white eye section knew sang swimming circus bush passage factor summer decide world final path dot muscle shelf mission aid adult century',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/xlgiqGRKx6LZuhjh5iR-dtbMrJQ=/0x0/pic2225968.png',
    ],
    score: 3.6332,
    reviewsAmount: 8248,
    downloadsAmount: 5013186,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Lords of Waterdeep",
    category: 'Strategy',
    description:
        'immediately brass birds coast slabs history brief giving dish needle yes farther particular importance tool very breakfast partly note sky somehow post pitch cream',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/PTVnjG9ersdKq6feZTpq5SkiPPw=/0x0/pic1116080.jpg',
    ],
    score: 4.0786,
    reviewsAmount: 3106,
    downloadsAmount: 4666461,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Five Tribes",
    category: 'Strategy',
    description:
        'tea popular planned still queen then bowl brother southern beauty page leaving damage think those as cat college golden for couple canal stomach stand',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/ysxyEQPPbio1xvtx56l_8P8BkYs=/0x0/pic2055255.jpg',
    ],
    score: 3.4623,
    reviewsAmount: 9732,
    downloadsAmount: 6828702,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Rising Sun",
    category: 'Strategy',
    description:
        'stairs worried cutting swam mine alike about report perfect degree forgotten clay score shop outer youth sent shout scared pleasure railroad see purpose early',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/B_QnVCi18kIQBPNajLjJkpXpW2s=/0x0/pic3880340.jpg',
    ],
    score: 3.7452,
    reviewsAmount: 1749,
    downloadsAmount: 7006883,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Twilight Imperium (Third Edition)",
    category: 'Strategy',
    description:
        'weigh fuel join please chance capital statement attempt bush girl report putting news teach table sugar location mysterious hidden too factor meant sit quick',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/60YjBskGAQNmZP7sedVoXneBjZg=/0x0/pic4128153.jpg',
    ],
    score: 4.9545,
    reviewsAmount: 8030,
    downloadsAmount: 3098458,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Eldritch Horror",
    category: 'Strategy',
    description:
        'success hunt belong flow around sometime fierce former friendly nation hurry his happily son trick stretch society bone one population either log stick principal',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/i0zxc-H4TlTFB-yE1v4gcLy3XfY=/0x0/pic1872452.jpg',
    ],
    score: 3.1669,
    reviewsAmount: 7608,
    downloadsAmount: 1841766,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "El Grande",
    category: 'Strategy',
    description:
        'every base mail stopped tropical lie frighten whether class possible southern letter union opinion tight purple laid practice underline empty hat mix grade piece',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/PRrKZW4_33XEdB74wnOmjakKDa8=/0x0/pic87795.jpg',
    ],
    score: 3.4304,
    reviewsAmount: 2695,
    downloadsAmount: 3137489,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Codenames",
    category: 'Strategy',
    description:
        'beautiful escape garage equal mark ranch shout clothing hay section fog spite claws finally football nor very onto wealth catch key must coal anywhere',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/MJ6MNz8-_rb1C2VUTnYBTYOiiy0=/0x0/pic2582929.jpg',
    ],
    score: 4.9104,
    reviewsAmount: 6990,
    downloadsAmount: 3161863,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Clank!: A Deck-Building Adventure",
    category: 'Strategy',
    description:
        'lonely common fish mean wooden fruit visit government effort customs away easily plane seed eat unusual unit by swing pick tree horse south brought',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/wKVNKaIsMedZeZj2579L01EDBTc=/0x0/pic4449526.jpg',
    ],
    score: 3.7457,
    reviewsAmount: 4928,
    downloadsAmount: 2031175,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "The Gallerist",
    category: 'Strategy',
    description:
        'electricity unit troops met slow learn strength drove grabbed may pipe main constantly truth wool sky leaving electric could after quarter chief should grass',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Ye9XSo3Ozz93R3ofXYHWfC_pMFg=/0x0/pic2503200.png',
    ],
    score: 4.1118,
    reviewsAmount: 3094,
    downloadsAmount: 2171242,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Dominion: Intrigue",
    category: 'Strategy',
    description:
        'ice rabbit clean check realize tell little search mighty coach amount opportunity difficulty among air frog feet shorter better previous arrangement upper stand home',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/r0aALn-3X6WgRcnDqVxbxGSG0tw=/0x0/pic460011.jpg',
    ],
    score: 3.6886,
    reviewsAmount: 6209,
    downloadsAmount: 5694948,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Patchwork",
    category: 'Strategy',
    description:
        'carefully society pan policeman car left friendly brought charge curious blood story against joined does fighting plastic ball keep spirit seems joy oil hearing',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Z8MYZktgvGTtIikMv9HSpD_ERAI=/0x0/pic2270442.jpg',
    ],
    score: 4.9003,
    reviewsAmount: 3571,
    downloadsAmount: 1201911,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Mombasa",
    category: 'Strategy',
    description:
        'stuck map except species pressure north use danger sentence finish poor pretty machine women began package favorite hardly cabin keep however stepped bear brush',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/7JDxzN4LbAeslZGBU1G7Ccqutx0=/0x0/pic2611318.jpg',
    ],
    score: 4.8939,
    reviewsAmount: 4531,
    downloadsAmount: 6928618,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Battlestar Galactica: The Board Game",
    category: 'Strategy',
    description:
        'inside today tribe day basket test thought because thou pen person straight several empty tiny importance ahead labor try forth globe therefore gold different',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/-hZFpTm-evjyuLD_bj-y845-4f8=/0x0/pic354500.jpg',
    ],
    score: 4.7648,
    reviewsAmount: 3072,
    downloadsAmount: 1175855,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Roll for the Galaxy",
    category: 'Strategy',
    description:
        'split sick sitting women pot widely red castle young expect job nearby fallen barn held should diameter mean surface solution sun announced figure fog',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/SBmipyinTpLle9HmAfE0jJWKj3I=/0x0/pic1473629.jpg',
    ],
    score: 3.7844,
    reviewsAmount: 9687,
    downloadsAmount: 5598624,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Troyes",
    category: 'Strategy',
    description:
        'cloud noun declared noted trick refer putting square western wolf create long living life former local cheese fair week alone noise join never tone',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/jgHgQKbmvFx2xDL1MdtYB2-jRek=/0x0/pic750583.jpg',
    ],
    score: 3.5387,
    reviewsAmount: 2130,
    downloadsAmount: 8501517,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Sherlock Holmes Consulting Detective: The Thames Murders & Other Cases",
    category: 'Strategy',
    description:
        'noise introduced bone rocky inch like melted lie see rhyme handsome worker contain compare salt reach principal long ran left exactly handle thirty hungry',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/e0abWKqZdzwxb0Keyxjf-Y5sZsw=/0x0/pic3514298.jpg',
    ],
    score: 4.3324,
    reviewsAmount: 4495,
    downloadsAmount: 7740470,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "T.I.M.E Stories",
    category: 'Strategy',
    description:
        'yet balance country division share mood rod aware cabin house school smoke process balloon return pass rapidly production important attack aloud people tears road',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/HgvRM7737qYJn6nFvfZ5IlSf800=/0x0/pic2617634.png',
    ],
    score: 4.9181,
    reviewsAmount: 9359,
    downloadsAmount: 2966609,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Russian Railroads",
    category: 'Strategy',
    description:
        'film needle first easier wherever frame whenever plural particularly walk division fire locate verb section practice movie ready example not duty something storm planned',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/QgRFOE3J6RK3ZfJk2qa3Xbgl0GY=/0x0/pic1772936.jpg',
    ],
    score: 4.13,
    reviewsAmount: 2137,
    downloadsAmount: 7012472,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Tigris & Euphrates",
    category: 'Strategy',
    description:
        'people pound courage radio airplane whatever best pay its stop breath roar box cover leather ahead he hidden mathematics gift kids oldest method good',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/vd6LHDJ-u-TkAAWafD2yG9-U974=/0x0/pic2338267.jpg',
    ],
    score: 3.1658,
    reviewsAmount: 8690,
    downloadsAmount: 2164900,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Trajan",
    category: 'Strategy',
    description:
        'both rich pink widely aboard every fourth bound joy whistle make hide huge right musical shelter equally wonder molecular church although arrive orange slow',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/vIIoEst4xg9L1kr2TajY_6s-5Jo=/0x0/pic4336095.png',
    ],
    score: 3.9282,
    reviewsAmount: 3040,
    downloadsAmount: 7761657,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Pandemic",
    category: 'Strategy',
    description:
        'friendly collect on coach lie fewer was string structure paint almost solution pet satellites pick secret held chance cattle living respect industrial wagon told',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/j-pfXZ_0GmOowohzD_T6NDAWGSA=/0x0/pic1534148.jpg',
    ],
    score: 4.1201,
    reviewsAmount: 3533,
    downloadsAmount: 7626459,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Star Wars: X-Wing Miniatures Game",
    category: 'Strategy',
    description:
        'shirt deer shake consonant highest these bright curve jungle suggest amount everybody liquid warm duck popular promised nobody according rock dug leather divide difficulty',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/6GthoJMvWgSpxVoWF1TEbMtXWd4=/0x0/pic1603292.jpg',
    ],
    score: 4.3293,
    reviewsAmount: 1699,
    downloadsAmount: 4352289,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Dominion",
    category: 'Strategy',
    description:
        'member gulf bag sound inside my production take got fly pleasure large chain help choice fuel against back reader hardly then center paragraph hunt',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/oN8CHUZ8CF6P1dFnhMCJXvE8SOk=/0x0/pic394356.jpg',
    ],
    score: 3.3977,
    reviewsAmount: 1821,
    downloadsAmount: 8868782,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Lisboa",
    category: 'Strategy',
    description:
        'forty say highway shaking seed fence charge crowd crew answer waste gone skill molecular attempt beside bark school hearing brick neighbor directly traffic whole',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/k4JCDnjnu5YRn5QA8njFeRMbulk=/0x0/pic3209553.jpg',
    ],
    score: 4.1455,
    reviewsAmount: 1665,
    downloadsAmount: 5094342,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Dead of Winter: A Crossroads Game",
    category: 'Strategy',
    description:
        'secret my happen teacher environment having valley best football waste carefully dangerous guard luck satisfied darkness softly studied agree sunlight additional hurt ever shelf',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/pOYQOSR1CnXcN6pEPx3yFDjKFaA=/0x0/pic3016500.jpg',
    ],
    score: 3.7494,
    reviewsAmount: 2208,
    downloadsAmount: 7893290,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Crokinole",
    category: 'Strategy',
    description:
        'rush broad find was smell minute composition fairly feature serve off bet solution birth pupil fear rising sugar few shorter war grain about fox',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/1x-Pt8mWg9fBlo5oB1aBxll6-3k=/0x0/pic79413.jpg',
    ],
    score: 4.845,
    reviewsAmount: 8179,
    downloadsAmount: 1425095,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Kemet",
    category: 'Strategy',
    description:
        'way active sad tribe mostly dirty excited old loud women castle result sat symbol compound red spread trick price give be thumb without public',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/rjuKOHsH4_EayHV5jflH0LMpwqI=/0x0/pic3979527.jpg',
    ],
    score: 4.6622,
    reviewsAmount: 9031,
    downloadsAmount: 1287693,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Pandemic: Iberia",
    category: 'Strategy',
    description:
        'they firm sheet everything sand no flies work earn snow cage somehow body fourth brick nature accurate itself poetry satisfied person examine lie safe',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/65W6mKBX34X2pLswgsfKPCfAcdw=/0x0/pic3000850.png',
    ],
    score: 4.1289,
    reviewsAmount: 9593,
    downloadsAmount: 3526256,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Agricola (Revised Edition)",
    category: 'Strategy',
    description:
        'dish create behind meal unknown either may realize special yes structure team thin told friend pony represent appearance running town up spend use imagine',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/oQorPaOofq9lmHTOgjNpi8kDWAQ=/0x0/pic3029377.jpg',
    ],
    score: 4.9545,
    reviewsAmount: 8039,
    downloadsAmount: 7449539,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Aeon's End",
    category: 'Strategy',
    description:
        'foot sum person combine quickly made action catch becoming somehow slow respect however live driving guide provide main deeply receive whispered someone numeral try',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/FMyNWbquUF9zkxFGrZK2qQk94os=/0x0/pic3189350.jpg',
    ],
    score: 3.5827,
    reviewsAmount: 9576,
    downloadsAmount: 9983541,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Raiders of the North Sea",
    category: 'Strategy',
    description:
        'summer principal nuts wrapped feature slipped blow found especially pool wide almost older equator chicken strip bus anyway wall for examine bite leave relationship',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/a0YP4eI1oi6LqEQU1jsEphVmo8I=/0x0/pic3578101.jpg',
    ],
    score: 3.71,
    reviewsAmount: 3407,
    downloadsAmount: 3045026,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Forbidden Stars",
    category: 'Strategy',
    description:
        'throw finger flame still bush stranger refer native fastened park those mysterious base began yard behind hat castle begun alive this do grandfather introduced',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/DWTv4PxEDiHHmgnv09t4k2WmNh8=/0x0/pic2471359.jpg',
    ],
    score: 3.2478,
    reviewsAmount: 3366,
    downloadsAmount: 4014281,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Descent: Journeys in the Dark (Second Edition)",
    category: 'Strategy',
    description:
        'remarkable western size teacher bent spin camera top brick which relationship atom flies child government decide changing range occur luck fair dig paragraph trail',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/jGVm6aG5Ek-qxTIaWyzN67jjylc=/0x0/pic1180640.jpg',
    ],
    score: 3.3106,
    reviewsAmount: 9305,
    downloadsAmount: 9467910,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Stone Age",
    category: 'Strategy',
    description:
        'tool fat verb flame whistle plus brown accept underline mud hurt useful column capital rising crop toy bear clothes slipped worker honor game possibly',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/Dt2tBgnvuWww89kSQqOW0vvEJr4=/0x0/pic1632539.jpg',
    ],
    score: 4.4275,
    reviewsAmount: 1254,
    downloadsAmount: 6842117,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Alchemists",
    category: 'Strategy',
    description:
        'secret fifteen women forgotten treated steady diagram as fog grandmother size brother sold her father worse silver call buy sure hang honor interest progress',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/VKBFHqR2xm0EFGWfb1sPJZctMCs=/0x0/pic2241156.png',
    ],
    score: 4.4728,
    reviewsAmount: 7481,
    downloadsAmount: 2178691,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Yokohama",
    category: 'Strategy',
    description:
        'ago electricity or ranch forest create cut bottom garden tin various frozen planned truck due southern bend population teacher ask silent straw breeze examine',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/De9ZLEfwyXpB7G_k7rkUBfiXixo=/0x0/pic3600984.jpg',
    ],
    score: 3.3778,
    reviewsAmount: 1866,
    downloadsAmount: 1814942,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Teotihuacan: City of Gods",
    category: 'Strategy',
    description:
        'police kitchen high till harder fastened arrive strength rather chain vessels boat come disease history writing statement faster development road score rich wheat ask',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/gzpgd8o15PVOgMhmcd57QijX57Q=/0x0/pic4583626.jpg',
    ],
    score: 4.7772,
    reviewsAmount: 6637,
    downloadsAmount: 9649602,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Architects of the West Kingdom",
    category: 'Strategy',
    description:
        'will bone noun alike gasoline sign stage mile vowel excellent represent average buried imagine definition government red may officer because exercise whole solve property',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/RKXgBZpXQXy0FjUdtW1OotAow8U=/0x0/pic3781944.png',
    ],
    score: 3.1433,
    reviewsAmount: 7635,
    downloadsAmount: 2928042,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Star Realms",
    category: 'Strategy',
    description:
        'voyage adventure cannot prepare unless describe smallest wrote some thin mail twelve needle minerals vast or hungry claws zoo pride quietly too slip income',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/XRgMJVv4YweLlANgVvxeZsQ4lm0=/0x0/pic1903816.jpg',
    ],
    score: 4.8082,
    reviewsAmount: 4971,
    downloadsAmount: 9933627,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "War of the Ring (First Edition)",
    category: 'Strategy',
    description:
        'parent harder model sets noted horse base happen business grew tea check dug guide drove becoming event hard cannot tired diameter introduced frozen member',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/naKKeihI8fzCba236vxbeqbhhLI=/0x0/pic725882.jpg',
    ],
    score: 4.7713,
    reviewsAmount: 5708,
    downloadsAmount: 8696782,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Legendary Encounters: An Alien Deck Building Game",
    category: 'Strategy',
    description:
        'plural relationship indeed gather vapor pure fence conversation black fire stared wolf young play team anyone window blind planning learn do difference primitive fighting',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/H0uIoKm2phCiJDqQn52PFLDgYis=/0x0/pic2225180.jpg',
    ],
    score: 3.6741,
    reviewsAmount: 6251,
    downloadsAmount: 5999066,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Champions of Midgard",
    category: 'Strategy',
    description:
        'loose traffic soil parent peace except motor milk travel teach concerned before whistle doll away slept lower teacher affect plane vote operation chapter tip',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/c1gxRcNaDdjeH8zpLYJEkDEYA5g=/0x0/pic2869714.jpg',
    ],
    score: 4.7207,
    reviewsAmount: 7503,
    downloadsAmount: 1515050,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Castles of Mad King Ludwig",
    category: 'Strategy',
    description:
        'paid cloud whether crack new recently daughter element waste tool dog enter fifth answer closer his somebody tax shut establish grain yellow sit pool',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/fmSwPPkAioUPtMDVzmo48zHYvxI=/0x0/pic1961827.jpg',
    ],
    score: 3.7593,
    reviewsAmount: 3315,
    downloadsAmount: 5166053,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Istanbul",
    category: 'Strategy',
    description:
        'class move funny lie pictured belong furniture learn start title window jet final taken buried ring headed strike for vessels sweet provide lead mysterious',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/mJdCiWN7ePw8Q73GDhXupvKfOnE=/0x0/pic1885326.jpg',
    ],
    score: 4.3221,
    reviewsAmount: 9091,
    downloadsAmount: 3584367,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "A Game of Thrones: The Board Game (Second Edition)",
    category: 'Strategy',
    description:
        'vertical sight pan jar shoe becoming collect board send carbon cotton dark stick orange measure section why fed breath potatoes whether joy rain president',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/rCOyI5sRR9CtTaho5JJx_kFWta0=/0x0/pic1077906.jpg',
    ],
    score: 4.8398,
    reviewsAmount: 3643,
    downloadsAmount: 8409708,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
  GameInfo(
    title: "Grand Austria Hotel",
    category: 'Strategy',
    description:
        'air wolf sister dull characteristic radio rain hour bottom sit salt system vapor mine reason planet union physical girl brother movement body steam wheel',
    imageUrls: [
      'https://cf.geekdo-images.com/original/img/4d_XZzAStbyODa6p8xhLyOpIMh8=/0x0/pic2728138.jpg',
    ],
    score: 3.7318,
    reviewsAmount: 6554,
    downloadsAmount: 3536276,
    playersLowerBound: 2,
    playersUpperBound: 8,
  ),
];
