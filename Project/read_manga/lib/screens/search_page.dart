import 'package:flutter/material.dart';
import 'package:read_manga/models/chap_page.dart';
import '../models/story.dart';
import 'home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Story> searchResults = [];

  void _performSearch() {
    String query = _searchController.text;
    setState(() {
      searchResults = _search(query, HomePage().stories);
    });
  }

  List<Story> _search(String query, List<Story> stories) {
    return stories.where((story) {
      return story.title.toLowerCase().contains(query.toLowerCase()) ||
          story.author.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tìm kiếm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white12,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Nhập tên truyện, tên tác giả',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: _performSearch,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: searchResults.isEmpty
                  ? Center(
                child: Text('Không có kết quả tìm kiếm'),
              )
                  : ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10.0,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          AssetImage(searchResults[index].imagePath),
                        ),
                        title: Text(
                          searchResults[index].title,
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Tác giả: ${searchResults[index].author}',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChapPage(
                                story: searchResults[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
