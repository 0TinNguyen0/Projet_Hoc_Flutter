import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Comment {
  String author;
  String content;
  bool isMyComment;

  Comment({required this.author, required this.content, this.isMyComment = false});
}

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bình Luận'),
      ),
      body: CommentList(),
    );
  }
}

class CommentList extends StatefulWidget {
  @override
  _CommentListState createState() => _CommentListState();

}

class _CommentListState extends State<CommentList> {
  TextEditingController _authorController = TextEditingController();
  TextEditingController _commentController = TextEditingController();
  List<Comment> comments = [];
  bool isEmojiFlying = false;

  @override
  void initState() {
    super.initState();
    _ensureFileExists();
    _loadComments();
    _addDefaultComments();
  }

  void _addDefaultComments() {
    setState(() {
      comments.add(Comment(author: 'Siêu nhân gao', content: 'Có thấy siêu nhân đỏ ở đâu không'));
      comments.add(Comment(author: 'Anh hùng giấu tên', content: 'Chào các hạ, các hạ có khỏe không'));
      // Thêm các bình luận mặc định khác nếu cần
    });
    _saveComments();
  }

  Future<void> _ensureFileExists() async {
    final file = await _getLocalFile();
    if (!(await file.exists())) {
      await file.create();
    }
  }

  Future<void> _loadComments() async {
    try {
      final file = await _getLocalFile();
      String content = await file.readAsString();
      List<String> commentLines = content.split('\n');
      setState(() {
        comments = commentLines
            .where((line) => line.isNotEmpty)
            .map((line) {
          List<String> parts = line.split(':');
          return Comment(author: parts[0], content: parts[1], isMyComment: false);
        })
            .toList();
      });
    } catch (e) {
      print("Error loading comments: $e");
    }
  }

  Future<void> _saveComments() async {
    try {
      final file = await _getLocalFile();
      final commentsData = comments.map((comment) => '${comment.author}:${comment.content}').join('\n');
      await file.writeAsString(commentsData);
      print("Comments saved successfully!");
    } catch (e) {
      print("Error saving comments: $e");
    }
  }

  Future<File> _getLocalFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/comments.txt');
  }

  void _animateEmoji() {
    setState(() {
      isEmojiFlying = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isEmojiFlying = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              return Align(
                alignment: comments[index].isMyComment ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: comments[index].isMyComment ? Colors.blueGrey : Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    '${comments[index].author}: ${comments[index].content}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: isEmojiFlying ? 100.0 : 0.0,
              width: isEmojiFlying ? 100.0 : 0.0,
              child: Image.asset('assets/smiley.png'), // Thay đổi đường dẫn hình ảnh tùy theo tài nguyên của bạn
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _authorController,
                  decoration: InputDecoration(
                    hintText: 'Tên người gửi...',
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    hintText: 'Nội dung bình luận...',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  if (_authorController.text.isNotEmpty && _commentController.text.isNotEmpty) {
                    setState(() {
                      comments.add(Comment(
                          author: _authorController.text,
                          content: _commentController.text,
                          isMyComment: true));
                      _authorController.clear();
                      _commentController.clear();
                      _animateEmoji(); // Kích hoạt hiệu ứng mặt cười khi gửi bình luận
                    });
                    _saveComments();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
