import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/network/dio_client.dart';
import 'localization_repo.dart';

enum LocalizationMode {
  assets, // Load from project assets folder
  server, // Load from backend API
}

class LocalizationRepoImpl implements LocalizationRepo {
  final DioClient dioClient;
  final LocalizationMode mode;

  LocalizationRepoImpl({required this.dioClient, required this.mode});
  Future<String> _localPath() async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> _localFile(String langCode) async {
    final path = await _localPath();
    return File("$path/$langCode.json");
  }

  @override
  Future<void> fetchAndSaveLang(String langCode) async {
    String content = "";

    if (mode == LocalizationMode.server) {
      try {
        final response = await dioClient.get(path: "/lang/$langCode.json");

        if (response.statusCode == 200) {
          content = jsonEncode(response.data);
        } else {
          throw Exception("Server error: ${response.statusCode}");
        }
      } catch (e) {
        throw Exception("Failed to fetch from server: $e");
      }
    } else {
      try {
        content = await rootBundle.loadString("assets/lang/$langCode.json");
      } catch (e) {
        throw Exception("Failed to load from assets: $e");
      }
    }

    final file = await _localFile(langCode);
    await file.writeAsString(content);
  }

  @override
  Future<Map<String, dynamic>> readLang(String langCode) async {
    final file = await _localFile(langCode);
    final content = await file.readAsString();
    return jsonDecode(content);
  }
}
