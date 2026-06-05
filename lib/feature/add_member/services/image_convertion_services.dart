import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ImageConvertionServices {
  static Future<File> networkImageToFile(String imageUrl) async {
    http.Response response = await http.get(Uri.parse(imageUrl));
    final bytes = response.bodyBytes;
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;

    final File file =
        await File('$tempPath/pp/profile.img').writeAsString(bytes.toString());
    print(file);
    return file;
  }
}
