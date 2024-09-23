class StoryChapter {
  final String title;
  final String content;
  final List<String> images;

  StoryChapter({
    required this.title,
    required this.content,
    required this.images,
  });
}

class Story {
  final String title;
  final String author;
  final String imagePath;
  final String summary;
  final String image1;
  final List<StoryChapter> chapters;

  Story({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.summary,
    required this.image1,
    required this.chapters,
  });
}
