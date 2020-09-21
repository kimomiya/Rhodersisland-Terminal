String avatarURL(String id) {
  return 'https://andata.somedata.top/dataX/char/profile/$id.png';
}

String logoURL(String displayLogo) {
  return 'https://andata.somedata.top/dataX/logo/$displayLogo.png';
}

String skinURL(String skinId) {
  final encodedId = Uri.encodeComponent(skinId);
  return 'https://andata.somedata.top/dataX/char/set/$encodedId.png';
}
