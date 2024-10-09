import 'package:json_annotation/json_annotation.dart';

part 'sample_item.g.dart';

// TODO: Verify the data model for deserialization
@JsonSerializable()
class PhoneNumDM {
  const PhoneNumDM({
    required this.phonenumGuid,
    this.phonenumNum,
    this.phonenumContext,
    this.phonenumCountryCode,
    this.phonenumCreated,
    this.phonenumStatus,
    this.phonenumType,
    this.phonenumIsDefault = false,
    this.phonenumLocality,
    this.country,
    this.provstate,
  });

  @JsonKey(name: 'phonenum_guid', required: true)
  final String phonenumGuid;

  @JsonKey(name: 'phonenum_num')
  final String? phonenumNum;

  @JsonKey(name: 'phonenum_created')
  final DateTime? phonenumCreated;

  @JsonKey(name: 'phonenum_context')
  final String? phonenumContext;

  @JsonKey(name: 'phonenum_type')
  final String? phonenumType;

  @JsonKey(name: 'phonenum_country_code')
  final String? phonenumCountryCode;

  @JsonKey(name: 'phonenum_status')
  final String? phonenumStatus;

  @JsonKey(name: 'phonenum_locality')
  final String? phonenumLocality;

  @JsonKey(name: 'phonenum_is_default')
  final bool phonenumIsDefault;

  @JsonKey(name: 'country')
  final CountryDM? country;

  @JsonKey(name: 'provstate')
  final ProvStateDM? provstate;

  factory PhoneNumDM.fromJson(Map<String, dynamic> json) => _$PhoneNumDMFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumDMToJson(this);
}

@JsonSerializable()
class CountryDM {
  @JsonKey(name: 'country_guid')
  final String countryGuid;

  @JsonKey(name: 'country_name')
  final String countryName;

  @JsonKey(name: 'country_abbrev')
  final String countryAbbrev;

  CountryDM({required this.countryGuid, required this.countryName, required this.countryAbbrev});

  factory CountryDM.fromJson(Map<String, dynamic> json) => _$CountryDMFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDMToJson(this);
}

@JsonSerializable()
class ProvStateDM {
  @JsonKey(name: 'provstate_guid')
  final String provStateGuid;

  @JsonKey(name: 'provstate_name')
  final String provStateName;

  @JsonKey(name: 'provstate_country_guid')
  final String provStateCountryGuid;

  @JsonKey(name: 'provstate_abbrev')
  final String provStateAbbrev;

  ProvStateDM({
    required this.provStateGuid,
    required this.provStateName,
    required this.provStateCountryGuid,
    required this.provStateAbbrev,
  });

  factory ProvStateDM.fromJson(Map<String, dynamic> json) => _$ProvStateDMFromJson(json);

  Map<String, dynamic> toJson() => _$ProvStateDMToJson(this);
}
