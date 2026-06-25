import 'package:get_storage/get_storage.dart';

class StorageService {
  static GetStorage? _getStorage;

  static Future init() async {
    await GetStorage.init();
  }

  static GetStorage get getStorage => _getStorage!;
}
