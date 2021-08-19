import 'package:crypto/crypto.dart';

import '../utils.dart';

final PUBLIC_KEYS = [
  {
    'fingerprint': [
      40,
      85,
      94,
      156,
      117,
      240,
      61,
      22,
      65,
      244,
      169,
      2,
      33,
      107,
      232,
      108,
      2,
      43,
      180,
      195
    ],
    'n': BigInt.parse(
        '244034466491450680568240817441120653464461360662973074738682938950863325081012519649195877459843113728530532534578352088298244284'
        '4187494655665995351921338274831951821476598566266368081827798973677950631886800375521640253894590038870689810128654818728671'
        '69591001029396363334524573086194548218451961095441576010963591482414359221256024492631645122908543669300138258081024030723'
        '177382663832371913137144821873266431446036338772190282626975938824104032739590743508499230417656396733357756058423115781097'
        '26403165298875058941765362622936097839775380070572921007586266115476975819175319995527916042178582540628652481530373407'),
    'e': 65537
  },
  {
    'fingerprint': [
      140,
      171,
      9,
      34,
      146,
      246,
      166,
      50,
      10,
      170,
      229,
      247,
      155,
      114,
      28,
      177,
      29,
      106,
      153,
      154
    ],
    'n': BigInt.parse(
        '2508140781041022503093172273488605924759851515751647039724254586755011659843696855355146555465374520163497777938088477453445'
        '73867959220038150720715583705972903687378629818712773128239428221448025090554925121455897347729072252590381134149403844'
        '46493111736999668652848440655603157665903721517224934142301456312994547591626081517162758808439979745328030376796953660'
        '042629868902013177751703385501412640560275067171555763725421377065095231095517201241069856888933358280729674273422117'
        '201596511978645878544308102076746465468955910659145532699238576978901011112475698963666091510778777356966351191806'
        '495199073754705289253783'),
    'e': 65537
  },
  {
    'fingerprint': [
      243,
      218,
      109,
      239,
      16,
      202,
      176,
      78,
      167,
      8,
      255,
      209,
      120,
      234,
      205,
      112,
      111,
      42,
      91,
      176
    ],
    'n': BigInt.parse(
        '22347337644621997830323797217583448833849627595286505527328214795712874535417149457567295215523199212899872122674023936'
        '7131240241246764882048893575631044522501877254378158196807994413764341629078892885268632230043809067664517817024358'
        '6104004929318997975575742836624057045737222632394352293584408683835572876756541511513123895099404904195069900655844'
        '116320652369654629700601441657612334554560100450853708919286955848094813967918232881053194241892111332880474948534'
        '944150392757056877890591869688317457551038555284562548149090065971841389221622153968471777348332624087206178675'
        '9868040623935592404144262688161923519030977'),
    'e': 65537
  },
  {
    'fingerprint': [
      128,
      80,
      214,
      72,
      77,
      244,
      98,
      7,
      201,
      250,
      37,
      244,
      227,
      51,
      96,
      199,
      182,
      37,
      224,
      113
    ],
    'n': BigInt.parse(
        '2457345520795756504787001178525421539091891236981494754178538629951682700350865934606941684062292241677965205031919670107'
        '7275060353178142796963682024347858398319926119639265555410256455471016400261630917813337515247954638555325280392998'
        '950756512879748873422896798579889820248358636937659872379948616822902110696986481638776226860777480684653756042166'
        '6106335134041295180405490775512270822620666022862083389520160356373347875649729912082529289518764635554567159237431'
        '81359826124083963758009484867346318483872552977652588089928761806897223231500970500186019991032176060579816348322'
        '451864584743414550721639495547636008351'),
    'e': 65537
  }
];

final _serverKeys = {};

/**
 * Encrypts the given data known the fingerprint to be used
 * in the way Telegram requires us to do so (sha1(data) + data + padding)

 * @param fingerprint the fingerprint of the RSA key.
 * @param data the data to be encrypted.
 * @returns {Buffer|*|undefined} the cipher text, or None if no key matching this fingerprint is found.
 */

RSAencrypt(BigInt fingerprint, List<int?> data) {
  PUBLIC_KEYS.forEach((Map<String, dynamic> element) {
    _serverKeys[readBigIntFromBuffer(
        element["fingerprint"].sublist(element["fingerprint"].length - 8),
        little: true,
        signed: true)] = element;
  });
  final key = _serverKeys[fingerprint];
  if (key == null) {
    return null;
  }

// len(sha1.digest) is always 20, so we're left with 255 - 20 - x padding
  final rand = generateRandomBytes(235 - data.length);

  final List<int?> toEncrypt = [
    sha1.convert(data as List<int>).bytes,
    data,
    rand
  ].expand((element) => element).toList();

// rsa module rsa.encrypt adds 11 bits for padding which we don't want
// rsa module uses rsa.transform.bytes2int(to_encrypt), easier way:
  final BigInt payload = readBigIntFromBuffer(toEncrypt, little: false);
  final encrypted = payload.modPow(BigInt.from(key['e']), key['n']);
// rsa module uses transform.int2bytes(encrypted, keylength), easier:
  return readBufferFromBigInt(encrypted, 256, little: false);
}
