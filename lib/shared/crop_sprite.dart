import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:image/image.dart';

import '../core/constants/app_constants.dart';
import '../core/constants/assets_path.dart';

Future<Uint8List> cropSprite(int coordX, int coordY) async {
  final byteData = await rootBundle.load(spritePath);
  final image = copyResize(
    decodeImage(byteData.buffer.asUint8List()),
    width: spriteWidth,
    height: spriteHeight,
  );
  final croppedImage = copyCrop(
    image,
    coordX * spriteIconSize,
    coordY * spriteIconSize,
    spriteIconSize,
    spriteIconSize,
  );
  return Uint8List.fromList(encodePng(croppedImage));
}
