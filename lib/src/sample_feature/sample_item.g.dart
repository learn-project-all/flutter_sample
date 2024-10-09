// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneNumDM _$PhoneNumDMFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['phonenum_guid'],
  );
  return PhoneNumDM(
    phonenumGuid: json['phonenum_guid'] as String,
    phonenumNum: json['phonenum_num'] as String?,
    phonenumContext: json['phonenum_context'] as String?,
    phonenumCountryCode: json['phonenum_country_code'] as String?,
    phonenumCreated: json['phonenum_created'] == null
        ? null
        : DateTime.parse(json['phonenum_created'] as String),
    phonenumStatus: json['phonenum_status'] as String?,
    phonenumType: json['phonenum_type'] as String?,
    phonenumIsDefault: json['phonenum_is_default'] as bool? ?? false,
    phonenumLocality: json['phonenum_locality'] as String?,
    country: json['country'] == null
        ? null
        : CountryDM.fromJson(json['country'] as Map<String, dynamic>),
    provstate: json['provstate'] == null
        ? null
        : ProvStateDM.fromJson(json['provstate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PhoneNumDMToJson(PhoneNumDM instance) =>
    <String, dynamic>{
      'phonenum_guid': instance.phonenumGuid,
      'phonenum_num': instance.phonenumNum,
      'phonenum_created': instance.phonenumCreated?.toIso8601String(),
      'phonenum_context': instance.phonenumContext,
      'phonenum_type': instance.phonenumType,
      'phonenum_country_code': instance.phonenumCountryCode,
      'phonenum_status': instance.phonenumStatus,
      'phonenum_locality': instance.phonenumLocality,
      'phonenum_is_default': instance.phonenumIsDefault,
      'country': instance.country?.toJson(),
      'provstate': instance.provstate?.toJson(),
    };

CountryDM _$CountryDMFromJson(Map<String, dynamic> json) => CountryDM(
      countryGuid: json['country_guid'] as String,
      countryName: json['country_name'] as String,
      countryAbbrev: json['country_abbrev'] as String,
    );

Map<String, dynamic> _$CountryDMToJson(CountryDM instance) => <String, dynamic>{
      'country_guid': instance.countryGuid,
      'country_name': instance.countryName,
      'country_abbrev': instance.countryAbbrev,
    };

ProvStateDM _$ProvStateDMFromJson(Map<String, dynamic> json) => ProvStateDM(
      provStateGuid: json['provstate_guid'] as String,
      provStateName: json['provstate_name'] as String,
      provStateCountryGuid: json['provstate_country_guid'] as String,
      provStateAbbrev: json['provstate_abbrev'] as String,
    );

Map<String, dynamic> _$ProvStateDMToJson(ProvStateDM instance) =>
    <String, dynamic>{
      'provstate_guid': instance.provStateGuid,
      'provstate_name': instance.provStateName,
      'provstate_country_guid': instance.provStateCountryGuid,
      'provstate_abbrev': instance.provStateAbbrev,
    };
