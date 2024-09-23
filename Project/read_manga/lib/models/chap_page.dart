import 'package:flutter/material.dart';
import 'package:read_manga/models/story.dart';
import 'read_story_page.dart';

class ChapPage extends StatelessWidget {
  final Story story;

  ChapPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Danh sách chương'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20.0),
          Align(
            alignment: Alignment.center,
            child: Transform.scale(
              scale: 0.9,
              child: Image.asset(
                story.image1,
                height: 350.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  story.summary,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemCount: story.chapters.length,
              itemBuilder: (context, index) {
                StoryChapter chapter = story.chapters[index];
                int chapterNumber = index + 1;

                return Card(
                  margin: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadStoryPage(
                            story: story,
                            chapterNumber: chapterNumber,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${chapter.title}',
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6.0),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
