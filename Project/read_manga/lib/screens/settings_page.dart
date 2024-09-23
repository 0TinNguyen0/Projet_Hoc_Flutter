import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkModeEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadThemeState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/logo_user.jpg'),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        'Tin Nguyễn',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện nhấp vào đây
                  // Bạn có thể điều hướng đến màn hình mới hoặc thực hiện bất kỳ hành động nào khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.tealAccent,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Giao diện ban ngày',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                      Switch(
                        value: isDarkModeEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            isDarkModeEnabled = value;
                            _saveThemeState();
                          });
                        },
                        activeColor: Colors.purpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Hướng dẫn sử dụng',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.purpleAccent,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Thông Tin',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Gửi email yêu cầu trợ giúp',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Đánh giá ứng dụng',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.label_important_outline_sharp,
                            color: Colors.cyanAccent,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Điều khoản sử dụng và Bản quyền',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.nearby_error,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Xóa tài khoản và dữ liệu',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  // Xử lý sự kiện khi container được nhấp vào
                  // Bạn có thể thực hiện điều hướng đến màn hình mới hoặc thực hiện hành động khác
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Đăng xuất',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _saveThemeState() {
    // Lưu trạng thái chủ đề vào biến toàn cục (global variable)
    // Biến này sẽ tồn tại trong suốt thời gian chạy ứng dụng
    // và giữ nguyên giá trị của nó giữa các trang.
    MyApp.isDarkModeEnabled = isDarkModeEnabled;
  }

  void _loadThemeState() {
    // Load trạng thái chủ đề từ biến toàn cục (global variable)
    // Nếu giá trị không tồn tại, sử dụng giá trị mặc định là false.
    setState(() {
      isDarkModeEnabled = MyApp.isDarkModeEnabled ?? false;
    });
  }
}

class MyApp extends StatelessWidget {
  // Biến toàn cục để lưu trạng thái chủ đề
  static bool? isDarkModeEnabled;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: isDarkModeEnabled ?? false ? ThemeData.dark() : ThemeData.light(),
      home: SettingsPage(),
    );
  }
}
