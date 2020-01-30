// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerConfig _$ServerConfigFromJson(Map json) {
  return ServerConfig(
    deviceName: json['device_name'] as String,
    hostUrl: json['host_url'] as String,
  );
}

Map<String, dynamic> _$ServerConfigToJson(ServerConfig instance) =>
    <String, dynamic>{
      'device_name': instance.deviceName,
      'host_url': instance.hostUrl,
    };
