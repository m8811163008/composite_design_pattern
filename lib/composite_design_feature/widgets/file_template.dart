import 'package:composite_design_pattern/composite_design_feature/composite_design_feature.dart';
import 'package:flutter/material.dart';

class File extends StatelessWidget implements IFile {
  final String title;
  final int size;
  final IconData icon;

  const File({
    super.key,
    required this.title,
    required this.size,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => render(context);

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        leading: Icon(icon),
        trailing: Text(
          size.bytesToString(),
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.black54),
        ),
        dense: true,
      ),
    );
  }

  @override
  int getSize() => size;
}
