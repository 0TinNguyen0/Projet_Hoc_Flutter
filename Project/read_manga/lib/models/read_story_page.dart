import 'package:flutter/material.dart';
import 'package:read_manga/models/story.dart';

class ReadStoryPage extends StatefulWidget {
  final Story story;
  final int chapterNumber;

  ReadStoryPage({required this.story, required this.chapterNumber});

  @override
  _ReadStoryPageState createState() => _ReadStoryPageState();
}

class _ReadStoryPageState extends State<ReadStoryPage> {
  late StoryChapter chapter;
  bool canGoToPreviousChapter = false;
  bool canGoToNextChapter = false;
  int _currentChapterNumber = 0;
  bool isNextButton = false;

  @override
  void initState() {
    super.initState();
    _currentChapterNumber = widget.chapterNumber;
    chapter = widget.story.chapters[_currentChapterNumber - 1];
    updateNavigationStatus();
  }

  void updateNavigationStatus() {
    canGoToPreviousChapter = _currentChapterNumber > 1;
    canGoToNextChapter = _currentChapterNumber < widget.story.chapters.length;
    isNextButton = canGoToNextChapter;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('${widget.story.title} - ${chapter.title}'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var image in chapter.images)
                      Image.asset(
                        image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: canGoToPreviousChapter
                    ? Icon(Icons.arrow_back)
                    : SizedBox.shrink(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: isNextButton
                    ? Icon(Icons.arrow_forward)
                    : SizedBox.shrink(),
                label: isNextButton ? '' : '',
              ),
            ],
            onTap: (index) {
              int newChapterNumber = _currentChapterNumber;

              if (index == 0 && canGoToPreviousChapter) {
                newChapterNumber = _currentChapterNumber - 1;
              } else if (index == 1 && canGoToNextChapter) {
                newChapterNumber = _currentChapterNumber + 1;
              }

              if (newChapterNumber != _currentChapterNumber) {
                setState(() {
                  _currentChapterNumber = newChapterNumber;
                  chapter = widget.story.chapters[newChapterNumber - 1];
                  updateNavigationStatus();
                });
              }
            },
            selectedLabelStyle: TextStyle(color: Colors.grey),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            selectedIconTheme: IconThemeData(color: Colors.grey),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            currentIndex: 0,
            unselectedItemColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
