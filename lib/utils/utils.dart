import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class Utils {
  static List<Widget> heightBetween(
    List<Widget> children, {
    required double height,
  }) {
    if (children.isEmpty) return <Widget>[];
    if (children.length == 1) return children;

    final list = [children.first, SizedBox(height: height)];
    for (int i = 1; i < children.length - 1; i++) {
      final child = children[i];
      list.add(child);
      list.add(SizedBox(height: height));
    }
    list.add(children.last);

    return list;
  }

  static Future<String> downloadFile(String url, String filename) async {
    final directory = await getApplicationDocumentsDirectory();
    final finalPath = '${directory.path}/$filename';
    final response = await http.get(Uri.parse(url));
    final file = File(finalPath);

    await file.writeAsBytes(response.bodyBytes);
    return finalPath;
  }
}
