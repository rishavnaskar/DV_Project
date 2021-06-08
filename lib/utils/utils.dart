import 'package:flutter/cupertino.dart';

class Utils {
  static final Color primaryColor = Color(0XFF036A6C);
  static final Color backgroundColor = Color(0XFF000c07);
  static final Color cardBackgroundColor = Color(0XFF011f14);

  static final String overall = "Overall";
  static final String app = "App";
  static final String classs = "Class";
  static final String genus = "Genus";
  static final String importer = "Importer";
  static final String term = "Term";
  static final String origin = "Origin";
  static final String purpose = "Purpose";
  static final String source = "Source";

  String fileName(String name) {
    String filename;

    if (name == Utils.app)
      filename = "app";
    else if (name == Utils.classs)
      filename = "class";
    else if (name == Utils.genus)
      filename = "genus";
    else if (name == Utils.importer)
      filename = "importer";
    else if (name == Utils.term)
      filename = "term";
    else if (name == Utils.origin)
      filename = "origin";
    else if (name == Utils.purpose)
      filename = "purpose";
    else if (name == Utils.source) filename = "source";

    return filename;
  }
}
