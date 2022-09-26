import 'package:composite_design_pattern/composite_design_feature/composite_design_feature.dart';
import 'package:flutter/material.dart';

/// A concrete implementation of the [IFile] interface which
/// matches the composite class in the Composite design pattern
class Directory extends StatelessWidget implements IFile {
  final String title;
  final List<IFile> children = [];
  final bool isInitiallyExpanded;

  Directory(
    this.title, {
    super.key,
    this.isInitiallyExpanded = false,
  });

  void addFile(IFile file) {
    children.add(file);
  }

  @override
  Widget build(BuildContext context) => render(context);

  /// Calculates the directory size by calling the [getSize]
  /// method for each item in the [children]
  @override
  int getSize() {
    return children.fold<int>(0, _combine<int>);
  }

  int _combine<T extends int>(T value, IFile element) =>
      value + element.getSize();

  @override
  Widget render(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black),
      ),
      child: ExpansionTile(
        title: Text(
          '$title (${getSize().bytesToString()})',
        ),
        initiallyExpanded: isInitiallyExpanded,
        children: children.map((IFile file) => file.render(context)).toList(),
      ),
    );
  }
}
