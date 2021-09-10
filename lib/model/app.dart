import 'dart:io';

import 'package:flutter/material.dart';

class AppModel {
  late final File image;
  late final String path;
  // late final bool verifyAuth;
  // late final bool verifyAuth1;
  // late final bool verifyAuth2;

  AppModel({
    required this.image,
    required this.path,
    bool? verifyAuth,
    bool? verifyAuth1,
    bool? verifyAuth2,
  });

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is AppModel &&
  //         runtimeType == other.runtimeType &&
  //         image == other.image &&
  //         path == other.path;

  // @override
  // int get hashCode => image.hashCode ^ path.hashCode;
}

class AppState with ChangeNotifier {
  var appmodels = <AppModel>[];

  List<AppModel> get images {
    return appmodels.reversed.toList();
  }

  set newImage(File image) {
    appmodels.add(AppModel(image: image, path: image.path));
    notifyListeners();
  }

  Future<void> removeImage(index) async {
    appmodels.removeAt(index);
    // appmodels.removeWhere((element) => element.image == image);
    notifyListeners();
  }
}
