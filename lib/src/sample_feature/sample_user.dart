import 'package:json_annotation/json_annotation.dart';

part 'sample_user.g.dart';

@JsonSerializable(explicitToJson: true)
class SampleUserDM {
  @JsonKey(required: true)
  final String id;
  final String? name;
  final String? username;
  final String? email;
  final String? phone;
  final String? website;
  final AddressDM address;
  final CompanyDM? company;

  const SampleUserDM({
    required this.id,
    required this.address,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.company,
  });

  factory SampleUserDM.fromJson(Map<String, dynamic> json) => _$SampleUserDMFromJson(json);

  Map<String, dynamic> toJson() => _$SampleUserDMToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddressDM {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoDM geo;

  AddressDM({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressDM.fromJson(Map<String, dynamic> json) => _$AddressDMFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDMToJson(this);
}

@JsonSerializable()
class GeoDM {
  final String lat;
  final String lng;

  GeoDM(this.lat, this.lng);

  factory GeoDM.fromJson(Map<String, dynamic> json) => _$GeoDMFromJson(json);

  Map<String, dynamic> toJson() => _$GeoDMToJson(this);
}

@JsonSerializable()
class CompanyDM {
  final String name;

  final String catchPhrase;

  final String bs;

  CompanyDM(this.name, this.catchPhrase, this.bs);

  factory CompanyDM.fromJson(Map<String, dynamic> json) => _$CompanyDMFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyDMToJson(this);
}
