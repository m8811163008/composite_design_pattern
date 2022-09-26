import 'package:flutter/material.dart';

abstract class IFile {
  /// Returns the file or directory size.
  int getSize();

  /// Returns the file's UI widget which is used in example
  /// screen.
  Widget render(BuildContext context);
}
