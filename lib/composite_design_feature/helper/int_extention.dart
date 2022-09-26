extension IntToString on int {
  String bytesToString() {
    final abbreviations = ['B', 'KB', 'MB', 'GB', 'TB'];
    var len = toDouble();
    var order = 0;
    while (len >= 1024 && order++ < abbreviations.length - 1) {
      len /= 1024;
      print(order);
    }
    return '${len.toStringAsFixed(2)} ${abbreviations[order]}';
  }
}
