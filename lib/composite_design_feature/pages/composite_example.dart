import 'package:composite_design_pattern/composite_design_feature/composite_design_feature.dart';
import 'package:composite_design_pattern/composite_design_feature/widgets/concrete_files.dart';
import 'package:flutter/material.dart';

/// This builds the file structure for the example.
///
/// This method illustrates the Composite design pattern - even
/// though the components are of different types, they could be
/// handled in the same manner since the implemented interface of
/// [IFile] is the same for all components.
class CompositeExample extends StatelessWidget {
  const CompositeExample({Key? key}) : super(key: key);

  Widget _buildMediaDirectory() {
    final musicDirectory = Directory('Music');
    musicDirectory.addFile(
      const AudioFile(title: 'Darude - Sandstorm.mp3', size: 2612453),
    );
    musicDirectory.addFile(
      const AudioFile(title: 'Toto - Africa.mp3', size: 3219811),
    );
    musicDirectory.addFile(
      const AudioFile(title: 'Bag Raiders - Shooting Stars.mp3', size: 3811214),
    );

    final moviesDirectory = Directory('Movies');

    moviesDirectory.addFile(
      const VideoFile(title: 'The Matrix.avi', size: 951495532),
    );
    moviesDirectory.addFile(
      const VideoFile(title: 'The Matrix Reloaded.mp4', size: 1251495532),
    );

    final catPicturesDirectory = Directory('Cats');
    catPicturesDirectory.addFile(
      const ImageFile(title: 'Cat 1.jpg', size: 844497),
    );
    catPicturesDirectory.addFile(
      const ImageFile(title: 'Cat 2.jpg', size: 975363),
    );
    catPicturesDirectory.addFile(
      const ImageFile(title: 'Cat 3.png', size: 1975363),
    );

    final picturesDirectory = Directory('Pictures');
    picturesDirectory.addFile(catPicturesDirectory);
    picturesDirectory.addFile(
      const ImageFile(title: 'Not a cat.png', size: 2971361),
    );

    final mediaDirectory = Directory('Media', isInitiallyExpanded: true);
    mediaDirectory.addFile(musicDirectory);
    mediaDirectory.addFile(moviesDirectory);
    mediaDirectory.addFile(picturesDirectory);
    mediaDirectory.addFile(Directory('New Folder'));
    mediaDirectory.addFile(
      const TextFile(title: 'Nothing suspicious there.txt', size: 430791),
    );
    mediaDirectory.addFile(
      const TextFile(title: 'TeamTrees.txt', size: 104),
    );

    return mediaDirectory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _buildMediaDirectory(),
          )),
    );
  }
}
