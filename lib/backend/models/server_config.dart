import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'server_config.g.dart';

@JsonSerializable()
class ServerConfig {
  const ServerConfig({
    @required this.deviceName,
    @required this.hostUrl,
  });

  final String deviceName;
  final String hostUrl;

  static ServerConfig fromJson(Map<String, dynamic> json) => _$ServerConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ServerConfigToJson(this);

  @override
  String toString() {
    return 'ServerConfig <deviceName: $deviceName, hosturl: $hostUrl>';
  }
}
