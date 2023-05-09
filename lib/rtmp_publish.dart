import 'package:flutter/services.dart';

class RTMPPublish {
  static const MethodChannel _channel = const MethodChannel('rtmp_publish');

  static streamVideo(String url,
      {int? quality,
      int? resolution,
      // int? orientation,
      // required bool enableAudio,
      // required int audioBitrate,
      required int bitrate,
      required int videoWidth,
      required int videoHeight}) {
    final Map<String, dynamic> params = <String, dynamic>{
      'url': url,
      'quality': quality,
      'resolution': resolution,
      //'orientation': orientation,
    };

    _channel.invokeMethod('stream', params);
  }

  static switchCamera(bool isFrontCamera) {
    _channel.invokeMethod('switchCamera');
  }

  static setOrientation(int orientation) {
    _channel.invokeMethod('setOrientation', orientation);
  }

  // Nuevo método para ajustar la tasa de bits
  static setBitrate(int bitrate) {
    _channel.invokeMethod('setBitrate', bitrate);
  }

  static void stopStream() {}
}
