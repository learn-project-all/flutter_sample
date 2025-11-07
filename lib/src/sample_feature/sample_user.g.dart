// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleUserDM _$SampleUserDMFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id'],
  );
  return SampleUserDM(
    id: json['id'] as String,
    address: AddressDM.fromJson(json['address'] as Map<String, dynamic>),
    name: json['name'] as String?,
    username: json['username'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
    website: json['website'] as String?,
    company: json['company'] == null
        ? null
        : CompanyDM.fromJson(json['company'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SampleUserDMToJson(SampleUserDM instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address.toJson(),
      'company': instance.company?.toJson(),
    };

AddressDM _$AddressDMFromJson(Map<String, dynamic> json) => AddressDM(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoDM.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressDMToJson(AddressDM instance) => <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo.toJson(),
    };

GeoDM _$GeoDMFromJson(Map<String, dynamic> json) => GeoDM(
      json['lat'] as String,
      json['lng'] as String,
    );

Map<String, dynamic> _$GeoDMToJson(GeoDM instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

CompanyDM _$CompanyDMFromJson(Map<String, dynamic> json) => CompanyDM(
      json['name'] as String,
      json['catchPhrase'] as String,
      json['bs'] as String,
    );

Map<String, dynamic> _$CompanyDMToJson(CompanyDM instance) => <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
