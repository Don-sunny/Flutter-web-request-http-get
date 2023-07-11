import 'package:json_annotation/json_annotation.dart';

part 'n_umber_fact.g.dart';

@JsonSerializable()
class NUmberFact {
  @JsonKey(name: 'text')
  String? triviaText;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  NUmberFact({this.triviaText, this.number, this.found, this.type});

  factory NUmberFact.fromJson(Map<String, dynamic> json) {
    return _$NUmberFactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NUmberFactToJson(this);
}
