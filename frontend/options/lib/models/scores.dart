// scores.dart
import 'dart:convert';

class Scores {
  double? GPAX;
  double? GPA_THAI;
  double? GPA_MATH;
  double? GPA_SCIENCE;
  double? GPA_SOCIAL;
  double? GPA_PE;
  double? GPA_ART;
  double? GPA_KANNGAN;
  double? GPA_FOREIGNLANG;
  double? TGAT;
  double? TGAT1;
  double? TGAT2;
  double? TGAT3;
  double? TPAT1;
  double? TPAT2;
  double? TPAT3;
  double? TPAT4;
  double? TPAT5;
  double? TPAT21;
  double? TPAT22;
  double? TPAT23;
  double? A_Level_MATH1;
  double? A_Level_MATH2;
  double? A_Level_SCIENCE;
  double? A_Level_PHY;
  double? A_Level_CHEM;
  double? A_Level_BIO;
  double? A_Level_SOCIAL;
  double? A_Level_THAI;
  double? A_Level_ENG;
  double? A_Level_FRANCE;
  double? A_Level_GERMAN;
  double? A_Level_JAPANESE;
  double? A_Level_CHINESE;
  double? A_Level_BALI;
  double? A_Level_KOREAN;
  double? A_Level_SPAIN;

  Scores({
    this.GPAX = -1,
    this.GPA_THAI = -1,
    this.GPA_MATH = -1,
    this.GPA_SCIENCE = -1,
    this.GPA_SOCIAL = -1,
    this.GPA_PE = -1,
    this.GPA_ART = -1,
    this.GPA_KANNGAN = -1,
    this.GPA_FOREIGNLANG = -1,
    this.TGAT = -1,
    this.TGAT1 = -1,
    this.TGAT2 = -1,
    this.TGAT3 = -1,
    this.TPAT1 = -1,
    this.TPAT2 = -1,
    this.TPAT3 = -1,
    this.TPAT4 = -1,
    this.TPAT5 = -1,
    this.TPAT21 = -1,
    this.TPAT22 = -1,
    this.TPAT23 = -1,
    this.A_Level_MATH1 = -1,
    this.A_Level_MATH2 = -1,
    this.A_Level_SCIENCE = -1,
    this.A_Level_PHY = -1,
    this.A_Level_CHEM = -1,
    this.A_Level_BIO = -1,
    this.A_Level_SOCIAL = -1,
    this.A_Level_THAI = -1,
    this.A_Level_ENG = -1,
    this.A_Level_FRANCE = -1,
    this.A_Level_GERMAN = -1,
    this.A_Level_JAPANESE = -1,
    this.A_Level_CHINESE = -1,
    this.A_Level_BALI = -1,
    this.A_Level_KOREAN = -1,
    this.A_Level_SPAIN = -1,
  });

  // Method to convert Scores instance to a Map (for sending to an API)
  Map<String, dynamic> toJson() {
    return {
      'GPAX': GPAX,
      'GPA_THAI': GPA_THAI,
      'GPA_MATH': GPA_MATH,
      'GPA_SCIENCE': GPA_SCIENCE,
      'GPA_SOCIAL': GPA_SOCIAL,
      'GPA_PE': GPA_PE,
      'GPA_ART': GPA_ART,
      'GPA_KANNGAN': GPA_KANNGAN,
      'GPA_FOREIGNLANG': GPA_FOREIGNLANG,
      'TGAT': TGAT,
      'TGAT1': TGAT1,
      'TGAT2': TGAT2,
      'TGAT3': TGAT3,
      'TPAT1': TPAT1,
      'TPAT2': TPAT2,
      'TPAT3': TPAT3,
      'TPAT4': TPAT4,
      'TPAT5': TPAT5,
      'TPAT21': TPAT21,
      'TPAT22': TPAT22,
      'TPAT23': TPAT23,
      'A_Level_MATH1': A_Level_MATH1,
      'A_Level_MATH2': A_Level_MATH2,
      'A_Level_SCIENCE': A_Level_SCIENCE,
      'A_Level_PHY': A_Level_PHY,
      'A_Level_CHEM': A_Level_CHEM,
      'A_Level_BIO': A_Level_BIO,
      'A_Level_SOCIAL': A_Level_SOCIAL,
      'A_Level_THAI': A_Level_THAI,
      'A_Level_ENG': A_Level_ENG,
      'A_Level_FRANCE': A_Level_FRANCE,
      'A_Level_GERMAN': A_Level_GERMAN,
      'A_Level_JAPANESE': A_Level_JAPANESE,
      'A_Level_CHINESE': A_Level_CHINESE,
      'A_Level_BALI': A_Level_BALI,
      'A_Level_KOREAN': A_Level_KOREAN,
      'A_Level_SPAIN': A_Level_SPAIN,
    };
  }

  // Method to create a Scores instance from a Map
  factory Scores.fromJson(Map<String, dynamic> json) {
    return Scores(
      GPAX: json['GPAX'] ?? -1,
      GPA_THAI: json['GPA_THAI'] ?? -1,
      GPA_MATH: json['GPA_MATH'] ?? -1,
      GPA_SCIENCE: json['GPA_SCIENCE'] ?? -1,
      GPA_SOCIAL: json['GPA_SOCIAL'] ?? -1,
      GPA_PE: json['GPA_PE'] ?? -1,
      GPA_ART: json['GPA_ART'] ?? -1,
      GPA_KANNGAN: json['GPA_KANNGAN'] ?? -1,
      GPA_FOREIGNLANG: json['GPA_FOREIGNLANG'] ?? -1,
      TGAT: json['TGAT'] ?? -1,
      TGAT1: json['TGAT1'] ?? -1,
      TGAT2: json['TGAT2'] ?? -1,
      TGAT3: json['TGAT3'] ?? -1,
      TPAT1: json['TPAT1'] ?? -1,
      TPAT2: json['TPAT2'] ?? -1,
      TPAT3: json['TPAT3'] ?? -1,
      TPAT4: json['TPAT4'] ?? -1,
      TPAT5: json['TPAT5'] ?? -1,
      TPAT21: json['TPAT21'] ?? -1,
      TPAT22: json['TPAT22'] ?? -1,
      TPAT23: json['TPAT23'] ?? -1,
      A_Level_MATH1: json['A_Level_MATH1'] ?? -1,
      A_Level_MATH2: json['A_Level_MATH2'] ?? -1,
      A_Level_SCIENCE: json['A_Level_SCIENCE'] ?? -1,
      A_Level_PHY: json['A_Level_PHY'] ?? -1,
      A_Level_CHEM: json['A_Level_CHEM'] ?? -1,
      A_Level_BIO: json['A_Level_BIO'] ?? -1,
      A_Level_SOCIAL: json['A_Level_SOCIAL'] ?? -1,
      A_Level_THAI: json['A_Level_THAI'] ?? -1,
      A_Level_ENG: json['A_Level_ENG'] ?? -1,
      A_Level_FRANCE: json['A_Level_FRANCE'] ?? -1,
      A_Level_GERMAN: json['A_Level_GERMAN'] ?? -1,
      A_Level_JAPANESE: json['A_Level_JAPANESE'] ?? -1,
      A_Level_CHINESE: json['A_Level_CHINESE'] ?? -1,
      A_Level_BALI: json['A_Level_BALI'] ?? -1,
      A_Level_KOREAN: json['A_Level_KOREAN'] ?? -1,
      A_Level_SPAIN: json['A_Level_SPAIN'] ?? -1,
    );
  }

  @override
  String toString() => jsonEncode(toJson());

  void updateFromDomainTextList(List<Map<String, dynamic>> domainTextList) {
    for (var item in domainTextList) {
      String? domain = item['domain'];
      String? text = item['text'];
      double value = double.tryParse(text ?? '') ?? -1;

      switch (domain) {
        case 'GPAX':
          GPAX = value;
          break;
        case 'GPA_THAI':
          GPA_THAI = value;
          break;
        case 'GPA_MATH':
          GPA_MATH = value;
          break;
        case 'GPA_SCIENCE':
          GPA_SCIENCE = value;
          break;
        case 'GPA_SOCIAL':
          GPA_SOCIAL = value;
          break;
        case 'GPA_PE':
          GPA_PE = value;
          break;
        case 'GPA_ART':
          GPA_ART = value;
          break;
        case 'GPA_KANNGAN':
          GPA_KANNGAN = value;
          break;
        case 'GPA_FOREIGNLANG':
          GPA_FOREIGNLANG = value;
          break;
        case 'TGAT':
          TGAT = value;
          break;
        case 'TGAT1':
          TGAT1 = value;
          break;
        case 'TGAT2':
          TGAT2 = value;
          break;
        case 'TGAT3':
          TGAT3 = value;
          break;
        case 'TPAT1':
          TPAT1 = value;
          break;
        case 'TPAT2':
          TPAT2 = value;
          break;
        case 'TPAT3':
          TPAT3 = value;
          break;
        case 'TPAT4':
          TPAT4 = value;
          break;
        case 'TPAT5':
          TPAT5 = value;
          break;
        case 'TPAT21':
          TPAT21 = value;
          break;
        case 'TPAT22':
          TPAT22 = value;
          break;
        case 'TPAT23':
          TPAT23 = value;
          break;
        case 'A_Level_MATH1':
          A_Level_MATH1 = value;
          break;
        case 'A_Level_MATH2':
          A_Level_MATH2 = value;
          break;
        case 'A_Level_SCIENCE':
          A_Level_SCIENCE = value;
          break;
        case 'A_Level_PHY':
          A_Level_PHY = value;
          break;
        case 'A_Level_CHEM':
          A_Level_CHEM = value;
          break;
        case 'A_Level_BIO':
          A_Level_BIO = value;
          break;
        case 'A_Level_SOCIAL':
          A_Level_SOCIAL = value;
          break;
        case 'A_Level_THAI':
          A_Level_THAI = value;
          break;
        case 'A_Level_ENG':
          A_Level_ENG = value;
          break;
        case 'A_Level_FRANCE':
          A_Level_FRANCE = value;
          break;
        case 'A_Level_GERMAN':
          A_Level_GERMAN = value;
          break;
        case 'A_Level_JAPANESE':
          A_Level_JAPANESE = value;
          break;
        case 'A_Level_CHINESE':
          A_Level_CHINESE = value;
          break;
        case 'A_Level_BALI':
          A_Level_BALI = value;
          break;
        case 'A_Level_KOREAN':
          A_Level_KOREAN = value;
          break;
        case 'A_Level_SPAIN':
          A_Level_SPAIN = value;
          break;
        default:
          // Optionally log unknown fields
          print('Unknown domain: $domain');
      }
    }
  }
}
