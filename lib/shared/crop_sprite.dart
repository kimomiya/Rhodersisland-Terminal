import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';

import '../core/constants/app_constants.dart';
import '../core/constants/assets_path.dart';

Future<File> cropSprite(int coordX, int coordY) async {
  final appDocDir = await getApplicationDocumentsDirectory();
  final file = File('${appDocDir.path}/sprite_${coordX}_$coordY.png');
  if (file.existsSync()) {
    return file;
  }

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

  await file.writeAsBytes(encodePng(croppedImage));
  return file;
}
