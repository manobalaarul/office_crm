abstract class LocalizationRepo {
  Future<void> fetchAndSaveLang(String langCode);
  Future<Map<String, dynamic>> readLang(String langCode);
}
