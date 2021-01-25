import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';

import '../core/constants/app_constants.dart';
import '../core/constants/asset_path.dart';

Future<Uint8List> cropSprite(int coordX, int coordY) async {
  final tempPath = (await getTemporaryDirectory()).path;
  final spriteFile = File('$tempPath/sprite.png');
  if (!spriteFile.existsSync()) {
    final bytes = await rootBundle.load(spritePath);
    spriteFile.writeAsBytesSync(bytes.buffer.asInt8List(
      bytes.offsetInBytes,
      bytes.lengthInBytes,
    ));
  }

  final image = copyResize(
    decodeImage(spriteFile.readAsBytesSync()),
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
