import 'package:composite_design_pattern/composite_design_feature/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// Concrete classes extending File
///
/// This class specify the concrete file type by providing a
/// unique icon for the corresponding file type.
class AudioFile extends File {
  const AudioFile({
    super.key,
    required String title,
    required int size,
  }) : super(icon: Icons.audio_file, title: title, size: size);
}

class ImageFile extends File {
  const ImageFile({
    super.key,
    required String title,
    required int size,
  }) : super(icon: Icons.image, title: title, size: size);
}

class VideoFile extends File {
  const VideoFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.movie);
}

class TextFile extends File {
  const TextFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.description);
}
