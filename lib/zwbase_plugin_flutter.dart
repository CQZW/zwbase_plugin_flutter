import 'dart:async';

import 'package:flutter/services.dart';

///封装些常用的插件代码
class ZwbasePluginFlutter {
  static ZwbasePluginFlutter _instance;
  static ZwbasePluginFlutter shareClient() {
    if (_instance == null) _instance = ZwbasePluginFlutter();
    return _instance;
  }

  MethodChannel _channel = const MethodChannel('zwbase_plugin_flutter');

  ///获取插件版本
  Future<String> getPlatformVersion() async {
    return _channel.invokeMethod('getPlatformVersion');
  }

  ///获取唯一设备ID,
  Future<String> getDeviceID() async {
    return _channel.invokeMethod('getDeviceID');
  }
}
