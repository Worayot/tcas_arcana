// scores.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scores.freezed.dart';
part 'scores.g.dart';

@freezed
abstract class ScoreModel with _$ScoreModel {
  const factory ScoreModel({
    @JsonKey(name: 'GPAX') double? gpax,
    @JsonKey(name: 'GPA_THAI') double? gpaTHAI,
    @JsonKey(name: 'GPA_MATH') double? gpaMATH,
    @JsonKey(name: 'GPA_SCIENCE') double? gpaSCIENCE,
    @JsonKey(name: 'GPA_SOCIAL') double? gpaSOCIAL,
    @JsonKey(name: 'GPA_PE') double? gpaPE,
    @JsonKey(name: 'GPA_ART') double? gpaART,
    @JsonKey(name: 'GPA_KANNGAN') double? gpaKANNGAN,
    @JsonKey(name: 'GPA_FOREIGNLANG') double? gpaFOREIGNLANG,
    @JsonKey(name: 'TGAT') double? tgat,
    @JsonKey(name: 'TGAT1') double? tgat1,
    @JsonKey(name: 'TGAT2') double? tgat2,
    @JsonKey(name: 'TGAT3') double? tgat3,
    @JsonKey(name: 'TPAT1') double? tpat1,
    @JsonKey(name: 'TPAT2') double? tpat2,
    @JsonKey(name: 'TPAT3') double? tpat3,
    @JsonKey(name: 'TPAT4') double? tpat4,
    @JsonKey(name: 'TPAT5') double? tpat5,
    @JsonKey(name: 'TPAT21') double? tpat21,
    @JsonKey(name: 'TPAT22') double? tpat22,
    @JsonKey(name: 'TPAT23') double? tpat23,
    @JsonKey(name: 'A_Level_MATH1') double? aLavelMATH1,
    @JsonKey(name: 'A_Level_MATH2') double? aLavelMATH2,
    @JsonKey(name: 'A_Level_SCIENCE') double? aLavelSCIENCE,
    @JsonKey(name: 'A_Level_PHY') double? aLavelPHY,
    @JsonKey(name: 'A_Level_CHEM') double? aLavelCHEM,
    @JsonKey(name: 'A_Level_BIO') double? aLavelBIO,
    @JsonKey(name: 'A_Level_SOCIAL') double? aLavelSOCIAL,
    @JsonKey(name: 'A_Level_THAI') double? aLavelTHAI,
    @JsonKey(name: 'A_Level_ENG') double? aLavelENG,
    @JsonKey(name: 'A_Level_FRANCE') double? aLavelFRANCE,
    @JsonKey(name: 'A_Level_GERMAN') double? aLavelGERMAN,
    @JsonKey(name: 'A_Level_JAPANESE') double? aLavelJAPANESE,
    @JsonKey(name: 'A_Level_CHINESE') double? aLavelCHINESE,
    @JsonKey(name: 'A_Level_BALI') double? aLavelBALI,
    @JsonKey(name: 'A_Level_KOREAN') double? aLavelKOREAN,
    @JsonKey(name: 'A_Level_SPAIN') double? aLavelSPAIN,
  }) = _ScoreModel;

  factory ScoreModel.fromJson(Map<String, dynamic> json) => _$ScoreModelFromJson(json);
}
